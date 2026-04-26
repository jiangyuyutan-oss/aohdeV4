.class public Lage/of/civilizations2/jakowski/lukasz/Civilization;
.super Ljava/lang/Object;
.source "Civilization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    }
.end annotation


# instance fields
.field public HRE_VOTE_FOR_PROVINCES:F

.field public HRE_VOTE_FOR_RANK:F

.field public LIBERTY_ACCEPTABLE_TRIBUTE:F

.field public LIBERTY_DECLARATION:F

.field public NEUTRAL_EXPAND_CAPITAL:F

.field public NEUTRAL_EXPAND_GROWTH_RATE:F

.field public NEUTRAL_EXPAND_LAST_PROVINCE:F

.field public NEUTRAL_EXPAND_MORE_NEUTRAL:F

.field public NEUTRAL_EXPAND_NEIGHBORING_PROVINCES:F

.field public NEUTRAL_EXPAND_NEIGHBORING_PROVINCES_POTENTIAL:F

.field public NEUTRAL_EXPAND_OTHER_CIV:F

.field public NEUTRAL_EXPAND_OWN_PROVINCE:F

.field public NEUTRAL_EXPAND_SEA_ACCESS:F

.field public NEUTRAL_EXPAND_SEA_ACCESS_EXTRA:F

.field public RESPONSE_ALLIANCE_OPINION:F

.field public RESPONSE_ALLIANCE_STRENGTH:F

.field public RESPONSE_MILITARY_ACCESS_DEFENSIVE_PACT_SCORE:F

.field public RESPONSE_MILITARY_ACCESS_DISTANCE_SCORE:F

.field public RESPONSE_MILITARY_ACCESS_RANK_OWN_SCORE:F

.field public RESPONSE_MILITARY_ACCESS_RANK_SCORE:F

.field public RESPONSE_MILITARY_ACCESS_RELATION_SCORE:F

.field public TECH_ADMINISTRATION:F

.field public TECH_ASSIMILATE:F

.field public TECH_ECO:F

.field public TECH_MILITARY_UPKEEP:F

.field public TECH_MOVEMENT:F

.field public TECH_POP:F

.field public TECH_PRODUCTION:F

.field public TECH_RECRUITABLE:F

.field public TECH_RESEARCH:F

.field public TECH_TAXATION:F

.field public UNCIVILIZED_MIGRATE:I

.field public UNCIVILIZED_WILLING_TO_CIVILIZE:I

.field public VASSALS_TRIBUTE_PERC:F

.field public VASSALS_TRIBUTE_PERC_FRIENDLY:F

.field public VASSALS_TRIBUTE_PERC_RAND:F

.field public administrationCosts:I

.field public armiesPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public armiesPositionSize:I

.field public armyInAnotherProv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public armyInAnotherProvinceSize:I

.field private bordersWithEnemy:I

.field public bordersWithNeutralProvcsID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public bordersWithWastelandProvsID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

.field public civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

.field public civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

.field private civRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;",
            ">;"
        }
    .end annotation
.end field

.field public civsInRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_CivsInRange;",
            ">;"
        }
    .end annotation
.end field

.field private controlledByPlayer:Z

.field private currentRegroupArmyLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;",
            ">;>;"
        }
    .end annotation
.end field

.field public defensivePact:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field public fAverageDevelopment:F

.field public fStability:F

.field public freeValue:J

.field public guarantee:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field private happiness:I

.field public iAveragePopulation:J

.field public iBudget:I

.field private iCivId:I

.field private iCivNameHeight:I

.field private iCivNameLength:I

.field private iCivNameWidth:I

.field private iCivRegionsSize:I

.field public iDMAS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public iFVS:Z

.field public iLeague:I

.field public iMigrateSize:I

.field public iMilitaryUpkeep_PERC:F

.field public iMilitaryUpkeep_Total:I

.field private iNumOfNeighboringNeutralProvinces:I

.field private iRankPosition:I

.field private iRankScore:I

.field private ideologyID:I

.field public incomeProduction:I

.field public incomeTaxation:I

.field public isAtWarWithCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isAvailable:Z

.field public isFlagNearest:Z

.field private lCivNameChars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private lEventsToRun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lFrontLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;",
            ">;"
        }
    .end annotation
.end field

.field public lMigrate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;",
            ">;"
        }
    .end annotation
.end field

.field public lProvincesWithHighRevRisk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field private movePoints:I

.field private moveUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;",
            ">;"
        }
    .end annotation
.end field

.field private moveUnitsPlunder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;",
            ">;"
        }
    .end annotation
.end field

.field private moveUnitsSize:I

.field private moveUnits_PlunderSize:I

.field public nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field private numOfProvinces:I

.field private numOfUnits:I

.field public numOf_Armories:I

.field public numOf_Farms:I

.field public numOf_Farms_ProvincesPossibleToBuild:I

.field public numOf_Forts:I

.field public numOf_Libraries:I

.field public numOf_Markets:I

.field public numOf_Ports:I

.field public numOf_SuppliesCamp:I

.field public numOf_Towers:I

.field public numOf_Workshops:I

.field private provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesWithLowHappiness:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesWithLowStability:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public recruitArmy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;",
            ">;"
        }
    .end annotation
.end field

.field public recruitArmySize:I

.field public sCivName_UpperCase:Ljava/lang/String;

.field public sanctionsImpact:F

.field private seaAccess:I

.field private seaAccessPort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private seaAccessProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tagsCanForm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public truce:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field public uFOL:Z

.field private updateRegions:Z


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;I)V
    .registers 8
    .param p1, "nCivData"  # Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;
    .param p2, "nCivID"  # I

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProv:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProvinceSize:I

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPosition:Ljava/util/List;

    .line 66
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPositionSize:I

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithWastelandProvsID:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithNeutralProvcsID:Ljava/util/List;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    .line 77
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->freeValue:J

    .line 79
    const/4 v3, 0x1

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    .line 84
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->ideologyID:I

    .line 86
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;-><init>()V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    .line 91
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameLength:I

    .line 97
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    .line 99
    const/4 v4, 0x0

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 101
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    .line 103
    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    .line 116
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    .line 121
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iDMAS:Ljava/util/List;

    .line 128
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateRegions:Z

    .line 131
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 134
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iLeague:I

    .line 136
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBudget:I

    .line 137
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    .line 138
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    .line 139
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->administrationCosts:I

    .line 140
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMilitaryUpkeep_Total:I

    .line 141
    const/4 v4, 0x0

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMilitaryUpkeep_PERC:F

    .line 143
    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:J

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowHappiness:Ljava/util/List;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithHighRevRisk:Ljava/util/List;

    .line 154
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    .line 156
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fAverageDevelopment:F

    .line 158
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Forts:I

    .line 159
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Towers:I

    .line 160
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Ports:I

    .line 161
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms:I

    .line 162
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms_ProvincesPossibleToBuild:I

    .line 163
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Workshops:I

    .line 164
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Libraries:I

    .line 165
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Armories:I

    .line 166
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_SuppliesCamp:I

    .line 167
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Markets:I

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civsInRange:Ljava/util/List;

    .line 175
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sanctionsImpact:F

    .line 194
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess:I

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessProvinces:Ljava/util/List;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessPort:Ljava/util/List;

    .line 199
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithEnemy:I

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    .line 205
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfNeighboringNeutralProvinces:I

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    .line 213
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankPosition:I

    .line 214
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankScore:I

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->currentRegroupArmyLine:Ljava/util/List;

    .line 310
    const/high16 v2, 0x41f00000  # 30.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_ALLIANCE_STRENGTH:F

    .line 311
    const/high16 v2, 0x42480000  # 50.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_ALLIANCE_OPINION:F

    .line 313
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_POP:F

    .line 314
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_ECO:F

    .line 315
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_TAXATION:F

    .line 316
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_PRODUCTION:F

    .line 317
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_ADMINISTRATION:F

    .line 318
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_MILITARY_UPKEEP:F

    .line 319
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_MOVEMENT:F

    .line 320
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_ASSIMILATE:F

    .line 321
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_RESEARCH:F

    .line 322
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_RECRUITABLE:F

    .line 324
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->LIBERTY_ACCEPTABLE_TRIBUTE:F

    .line 325
    const/high16 v1, 0x42960000  # 75.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->LIBERTY_DECLARATION:F

    .line 327
    const/high16 v2, 0x3f000000  # 0.5f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->VASSALS_TRIBUTE_PERC:F

    .line 328
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->VASSALS_TRIBUTE_PERC_RAND:F

    .line 329
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->VASSALS_TRIBUTE_PERC_FRIENDLY:F

    .line 736
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1700
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2261
    const-string v2, ""

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    .line 2398
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2400
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3957
    const/high16 v2, 0x41b00000  # 22.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_CAPITAL:F

    .line 3958
    const/high16 v4, 0x41200000  # 10.0f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_OWN_PROVINCE:F

    .line 3959
    const/high16 v4, 0x40800000  # 4.0f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_MORE_NEUTRAL:F

    .line 3960
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_OTHER_CIV:F

    .line 3961
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_GROWTH_RATE:F

    .line 3962
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_LAST_PROVINCE:F

    .line 3963
    const/high16 v1, 0x41a00000  # 20.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_SEA_ACCESS:F

    .line 3964
    const/high16 v4, 0x40400000  # 3.0f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_SEA_ACCESS_EXTRA:F

    .line 3965
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES:F

    .line 3966
    const/high16 v4, 0x41c80000  # 25.0f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES_POTENTIAL:F

    .line 3968
    const/16 v4, 0x32

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->UNCIVILIZED_WILLING_TO_CIVILIZE:I

    .line 3969
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->UNCIVILIZED_MIGRATE:I

    .line 3971
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_DISTANCE_SCORE:F

    .line 3972
    const/high16 v1, 0x42250000  # 41.25f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_RELATION_SCORE:F

    .line 3974
    const v1, 0x40ce6666  # 6.45f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_RANK_SCORE:F

    .line 3975
    const/high16 v1, 0x41040000  # 8.25f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_RANK_OWN_SCORE:F

    .line 3976
    const/high16 v1, 0x40b80000  # 5.75f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_DEFENSIVE_PACT_SCORE:F

    .line 3978
    const/high16 v1, 0x41900000  # 18.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->HRE_VOTE_FOR_RANK:F

    .line 3979
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->HRE_VOTE_FOR_PROVINCES:F

    .line 350
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivId(I)V

    .line 351
    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    .line 353
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    .line 355
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateCivilizationIdeology()V

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits:Ljava/util/List;

    .line 360
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize:I

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    .line 363
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits_PlunderSize:I

    .line 365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    .line 366
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    .line 369
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    .line 371
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->currentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 373
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    .line 374
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    .line 376
    const/16 v0, 0x4b

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->happiness:I

    .line 378
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    .line 383
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    if-nez v0, :cond_1ce

    .line 385
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    .line 388
    :cond_1ce
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z

    .line 390
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateSanctionsImpact()V

    .line 391
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIZ)V
    .registers 21
    .param p1, "nCivTag"  # Ljava/lang/String;
    .param p2, "iR"  # I
    .param p3, "iG"  # I
    .param p4, "iB"  # I
    .param p5, "nCapitalProvinceID"  # I
    .param p6, "nCivID"  # I
    .param p7, "iReligionID"  # I
    .param p8, "iGroupID"  # I
    .param p9, "loadFlag"  # Z

    .line 335
    move-object v7, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;-><init>()V

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProv:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProvinceSize:I

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPosition:Ljava/util/List;

    .line 66
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armiesPositionSize:I

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithWastelandProvsID:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithNeutralProvcsID:Ljava/util/List;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    .line 77
    const-wide/16 v1, 0x0

    iput-wide v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->freeValue:J

    .line 79
    const/4 v3, 0x1

    iput-boolean v3, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    .line 84
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->ideologyID:I

    .line 86
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;-><init>()V

    iput-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civNeighbors:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;

    .line 91
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameLength:I

    .line 97
    iput-boolean v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    .line 99
    const/4 v4, 0x0

    iput-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 101
    iput-boolean v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    .line 103
    iput-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    .line 116
    iput-boolean v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    .line 121
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iDMAS:Ljava/util/List;

    .line 128
    iput-boolean v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateRegions:Z

    .line 131
    iput-boolean v3, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 134
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iLeague:I

    .line 136
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBudget:I

    .line 137
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    .line 138
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    .line 139
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->administrationCosts:I

    .line 140
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMilitaryUpkeep_Total:I

    .line 141
    const/4 v4, 0x0

    iput v4, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMilitaryUpkeep_PERC:F

    .line 143
    iput-wide v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:J

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowHappiness:Ljava/util/List;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithHighRevRisk:Ljava/util/List;

    .line 154
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    .line 156
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fAverageDevelopment:F

    .line 158
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Forts:I

    .line 159
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Towers:I

    .line 160
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Ports:I

    .line 161
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms:I

    .line 162
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Farms_ProvincesPossibleToBuild:I

    .line 163
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Workshops:I

    .line 164
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Libraries:I

    .line 165
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Armories:I

    .line 166
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_SuppliesCamp:I

    .line 167
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOf_Markets:I

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civsInRange:Ljava/util/List;

    .line 175
    iput v4, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sanctionsImpact:F

    .line 194
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess:I

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessProvinces:Ljava/util/List;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessPort:Ljava/util/List;

    .line 199
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithEnemy:I

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    .line 205
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfNeighboringNeutralProvinces:I

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    .line 213
    iput v3, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankPosition:I

    .line 214
    iput v3, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankScore:I

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->currentRegroupArmyLine:Ljava/util/List;

    .line 310
    const/high16 v0, 0x41f00000  # 30.0f

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_ALLIANCE_STRENGTH:F

    .line 311
    const/high16 v0, 0x42480000  # 50.0f

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_ALLIANCE_OPINION:F

    .line 313
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_POP:F

    .line 314
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_ECO:F

    .line 315
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_TAXATION:F

    .line 316
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_PRODUCTION:F

    .line 317
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_ADMINISTRATION:F

    .line 318
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_MILITARY_UPKEEP:F

    .line 319
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_MOVEMENT:F

    .line 320
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_ASSIMILATE:F

    .line 321
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_RESEARCH:F

    .line 322
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_RECRUITABLE:F

    .line 324
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->LIBERTY_ACCEPTABLE_TRIBUTE:F

    .line 325
    const/high16 v0, 0x42960000  # 75.0f

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->LIBERTY_DECLARATION:F

    .line 327
    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->VASSALS_TRIBUTE_PERC:F

    .line 328
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->VASSALS_TRIBUTE_PERC_RAND:F

    .line 329
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->VASSALS_TRIBUTE_PERC_FRIENDLY:F

    .line 736
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1700
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2261
    const-string v1, ""

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    .line 2398
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2400
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3957
    const/high16 v1, 0x41b00000  # 22.0f

    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_CAPITAL:F

    .line 3958
    const/high16 v2, 0x41200000  # 10.0f

    iput v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_OWN_PROVINCE:F

    .line 3959
    const/high16 v2, 0x40800000  # 4.0f

    iput v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_MORE_NEUTRAL:F

    .line 3960
    iput v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_OTHER_CIV:F

    .line 3961
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_GROWTH_RATE:F

    .line 3962
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_LAST_PROVINCE:F

    .line 3963
    const/high16 v0, 0x41a00000  # 20.0f

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_SEA_ACCESS:F

    .line 3964
    const/high16 v2, 0x40400000  # 3.0f

    iput v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_SEA_ACCESS_EXTRA:F

    .line 3965
    iput v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES:F

    .line 3966
    const/high16 v2, 0x41c80000  # 25.0f

    iput v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES_POTENTIAL:F

    .line 3968
    const/16 v2, 0x32

    iput v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->UNCIVILIZED_WILLING_TO_CIVILIZE:I

    .line 3969
    iput v2, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->UNCIVILIZED_MIGRATE:I

    .line 3971
    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_DISTANCE_SCORE:F

    .line 3972
    const/high16 v0, 0x42250000  # 41.25f

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_RELATION_SCORE:F

    .line 3974
    const v0, 0x40ce6666  # 6.45f

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_RANK_SCORE:F

    .line 3975
    const/high16 v0, 0x41040000  # 8.25f

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_RANK_OWN_SCORE:F

    .line 3976
    const/high16 v0, 0x40b80000  # 5.75f

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_DEFENSIVE_PACT_SCORE:F

    .line 3978
    const/high16 v0, 0x41900000  # 18.0f

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->HRE_VOTE_FOR_RANK:F

    .line 3979
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->HRE_VOTE_FOR_PROVINCES:F

    .line 336
    move/from16 v8, p6

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivId(I)V

    .line 338
    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    move/from16 v9, p7

    iput v9, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iReligionID:I

    .line 339
    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    move/from16 v10, p8

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iGroupID:I

    .line 341
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->initCivilization(Ljava/lang/String;IIIIZ)V

    .line 343
    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->DEFAULT_POLICY_ID:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    .line 344
    return-void
.end method

.method private final applyBonusChanges(Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;)V
    .registers 5
    .param p1, "nBonus"  # Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    .line 3549
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_PopGrowth:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    .line 3550
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_EconomyGrowth:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    .line 3551
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeTaxation:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    .line 3552
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeProduction:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    .line 3553
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_Research:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    .line 3554
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MilitaryUpkeep:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    .line 3555
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_AttackBonus:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    .line 3556
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_DefenseBonus:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    .line 3557
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MovementPoints:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    .line 3558
    return-void
.end method

.method private final applyBonusChangesExpired(Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;)V
    .registers 5
    .param p1, "nBonus"  # Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    .line 3593
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_PopGrowth:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    .line 3594
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_EconomyGrowth:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    .line 3595
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeTaxation:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    .line 3596
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeProduction:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    .line 3597
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_Research:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    .line 3598
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MilitaryUpkeep:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    .line 3599
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_AttackBonus:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    .line 3600
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_DefenseBonus:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    .line 3601
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MovementPoints:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    .line 3602
    return-void
.end method

.method private final buildCivilizationRegion(II)V
    .registers 6
    .param p1, "nProvinceID"  # I
    .param p2, "nCivRegionID"  # I

    .line 665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_85

    .line 666
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    if-ne v1, v2, :cond_81

    .line 667
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    if-nez v1, :cond_81

    .line 668
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 669
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->addProvince(I)V

    .line 670
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 671
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivilizationRegion(II)V

    .line 665
    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 675
    .end local v0  # "i":I
    :cond_85
    return-void
.end method

.method private final initCivilization(Ljava/lang/String;IIIIZ)V
    .registers 11
    .param p1, "nCivTag"  # Ljava/lang/String;
    .param p2, "iR"  # I
    .param p3, "iG"  # I
    .param p4, "iB"  # I
    .param p5, "nCapitalProvinceID"  # I
    .param p6, "loadFlag"  # Z

    .line 415
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    .line 418
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateCivilizationIdeology()V

    .line 420
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p5, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->capitalProvinceID:I

    .line 421
    const/4 v0, 0x1

    if-ltz p5, :cond_20

    .line 422
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsCapital(Z)V

    .line 425
    :cond_20
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    int-to-short v2, p2

    iput-short v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iR:S

    .line 426
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    int-to-short v2, p3

    iput-short v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iG:S

    .line 427
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    int-to-short v2, p4

    iput-short v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iB:S

    .line 429
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;-><init>()V

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civDiploGD:Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    .line 430
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality()V

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    .line 434
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    .line 435
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    .line 437
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    .line 438
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits:Ljava/util/List;

    .line 441
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize:I

    .line 443
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    .line 444
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits_PlunderSize:I

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    .line 447
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    .line 449
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    .line 450
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRegroupArmySize:I

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    .line 453
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    .line 455
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->currentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 457
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    .line 458
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    .line 460
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTechnology:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->ADD_CIV_DEFAULT_TECH_LEVEL:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techLevel:I

    .line 461
    const/16 v0, 0x4b

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->happiness:I

    .line 463
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    .line 466
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 467
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    .line 469
    if-eqz p6, :cond_ce

    .line 470
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z

    .line 472
    :cond_ce
    return-void
.end method

.method private final removeCivRegionID(I)V
    .registers 5
    .param p1, "id"  # I

    .line 688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 689
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 692
    .end local v0  # "i":I
    :cond_28
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 693
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    .line 695
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_36
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    if-ge v0, v1, :cond_48

    .line 696
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->setRegionID(I)V

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 698
    .end local v0  # "i":I
    :cond_48
    return-void
.end method


# virtual methods
.method public final addArmyInAnotherProv(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 2387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2388
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProviP(I)I

    move-result v1

    if-ne v1, p1, :cond_e

    .line 2389
    return-void

    .line 2387
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2393
    .end local v0  # "i":I
    :cond_11
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProv:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2394
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProvinceSize:I

    .line 2395
    return-void
.end method

.method public final addAssimilate(Lage/of/civilizations2/jakowski/lukasz/CivTask;)Z
    .registers 5
    .param p1, "civTask"  # Lage/of/civilizations2/jakowski/lukasz/CivTask;

    .line 1146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1147
    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    if-ne v1, v2, :cond_1d

    .line 1148
    const/4 v1, 0x0

    return v1

    .line 1146
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1152
    .end local v0  # "i":I
    :cond_20
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    const/4 v0, 0x1

    return v0
.end method

.method public final addEventDecisionTaken(Ljava/lang/String;)V
    .registers 3
    .param p1, "nEventDecTAG"  # Ljava/lang/String;

    .line 1787
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1788
    return-void
.end method

.method public final addEventToRunId(I)V
    .registers 4
    .param p1, "id"  # I

    .line 1775
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1776
    return-void
.end method

.method public final addFestival(Lage/of/civilizations2/jakowski/lukasz/CivTask;)Z
    .registers 5
    .param p1, "nFestival"  # Lage/of/civilizations2/jakowski/lukasz/CivTask;

    .line 1057
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1058
    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    if-ne v1, v2, :cond_1d

    .line 1059
    const/4 v1, 0x0

    return v1

    .line 1057
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1063
    .end local v0  # "i":I
    :cond_20
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    const/4 v0, 0x1

    return v0
.end method

.method public final addFriendlyCiv(I)Z
    .registers 5
    .param p1, "nCivID"  # I

    .line 3824
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 3825
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iCivID:I

    if-ne p1, v1, :cond_1b

    .line 3826
    const/4 v1, 0x0

    return v1

    .line 3824
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3830
    .end local v0  # "i":I
    :cond_1e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3832
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3833
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Relations/Message_Relations_Friendly;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Messages/Relations/Message_Relations_Friendly;-><init>(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 3837
    :cond_40
    :try_start_40
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_FriendlyCivs;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog_FriendlyCivs;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->addHistoryLog(Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryLog;)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_40 .. :try_end_4e} :catch_51
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_4e} :catch_4f

    goto :goto_52

    .line 3840
    :catch_4f
    move-exception v0

    goto :goto_53

    .line 3838
    :catch_51
    move-exception v0

    .line 3842
    :goto_52
    nop

    .line 3844
    :goto_53
    const/4 v0, 0x1

    return v0
.end method

.method public final addGift_Received(I)V
    .registers 5
    .param p1, "iCivID"  # I

    .line 1635
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_2c

    .line 1636
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;->iFromCivID:I

    if-ne v1, p1, :cond_29

    .line 1637
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;->iTurnID:I

    .line 1638
    return-void

    .line 1635
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1642
    .end local v0  # "i":I
    :cond_2c
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    return-void
.end method

.method public final addHatedCiv(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 3722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 3723
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    if-ne p1, v1, :cond_17

    .line 3724
    const/4 v1, 0x0

    return v1

    .line 3722
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3728
    .end local v0  # "i":I
    :cond_1a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addHatedCiv_By(I)V

    .line 3729
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3730
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iHatedCivsSize:I

    .line 3732
    const/4 v0, 0x1

    return v0
.end method

.method public final addHatedCiv_By(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 3801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivs_BySize()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 3802
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 3803
    return-void

    .line 3801
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3807
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3808
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iHatedCivs_BySize:I

    .line 3809
    return-void
.end method

.method public final addInvest(Lage/of/civilizations2/jakowski/lukasz/CivInvest;)Z
    .registers 5
    .param p1, "nInvest"  # Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    .line 1252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1253
    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    if-ne v1, v2, :cond_1d

    .line 1254
    const/4 v1, 0x0

    return v1

    .line 1252
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1258
    .end local v0  # "i":I
    :cond_20
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    const/4 v0, 0x1

    return v0
.end method

.method public final addInvest_2(Lage/of/civilizations2/jakowski/lukasz/CivInvest;)Z
    .registers 8
    .param p1, "nInvest"  # Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    .line 1263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_67

    .line 1264
    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    if-ne v1, v3, :cond_64

    .line 1265
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    iget v4, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    add-int/2addr v3, v4

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    .line 1266
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->turnsLeft:I

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->turnsLeft:I

    .line 1268
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyPerTurn:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->turnsLeft:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyPerTurn:I

    .line 1269
    return v2

    .line 1263
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1273
    .end local v0  # "i":I
    :cond_67
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    return v2
.end method

.method public final addInvest_Development(Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;)Z
    .registers 5
    .param p1, "nInvest"  # Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    .line 1383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1384
    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    if-ne v1, v2, :cond_1d

    .line 1385
    const/4 v1, 0x0

    return v1

    .line 1383
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1389
    .end local v0  # "i":I
    :cond_20
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    const/4 v0, 0x1

    return v0
.end method

.method public final addLoanFromCiv(III)V
    .registers 6
    .param p1, "iGoldPerTurn"  # I
    .param p2, "iDuration"  # I
    .param p3, "fromCivID"  # I

    .line 1860
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    invoke-direct {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1861
    return-void
.end method

.method public final addLoanNew(II)V
    .registers 5
    .param p1, "iGoldPerTurn"  # I
    .param p2, "iDuration"  # I

    .line 1815
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;

    invoke-direct {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1816
    return-void
.end method

.method public final addNewBonus(Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;)Z
    .registers 6
    .param p1, "nBonus"  # Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    .line 2006
    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_27

    .line 2008
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 2009
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    if-ne v1, v3, :cond_23

    .line 2010
    return v2

    .line 2008
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .end local v0  # "i":I
    :cond_26
    goto :goto_72

    .line 2013
    :cond_27
    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_SCIENCE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    if-ne v0, v1, :cond_4d

    .line 2015
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_2e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 2016
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_SCIENCE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    if-ne v1, v3, :cond_49

    .line 2017
    return v2

    .line 2015
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .end local v0  # "i":I
    :cond_4c
    goto :goto_72

    .line 2020
    :cond_4d
    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_MILITARY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    if-ne v0, v1, :cond_72

    .line 2022
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_54
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    .line 2023
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_MILITARY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    if-ne v1, v3, :cond_6f

    .line 2024
    return v2

    .line 2022
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 2029
    .end local v0  # "i":I
    :cond_72
    :goto_72
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2030
    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->applyBonusChanges(Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;)V

    .line 2031
    const/4 v0, 0x1

    return v0
.end method

.method public final addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;)V
    .registers 5
    .param p1, "nConstruction"  # Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 396
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iProviID:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iProviID:I

    if-ne v1, v2, :cond_2c

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    if-ne v1, v2, :cond_2c

    .line 397
    return-void

    .line 395
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    .end local v0  # "i":I
    :cond_2f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public final addNewSanctions(Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;)V
    .registers 4
    .param p1, "civSanctions"  # Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    .line 4073
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->byCivID:I

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->onCivID:I

    invoke-virtual {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->areSanctionsAdded(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4074
    return-void

    .line 4077
    :cond_b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4079
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateSanctionsImpact()V

    .line 4080
    return-void
.end method

.method public final addProv(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 2136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    if-ge v0, v1, :cond_17

    .line 2137
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 2138
    return-void

    .line 2136
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2142
    .end local v0  # "i":I
    :cond_17
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2143
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    .line 2145
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 2147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 2148
    return-void
.end method

.method public final addProv_Just(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 2122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    if-ge v0, v1, :cond_17

    .line 2123
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 2124
    return-void

    .line 2122
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2128
    .end local v0  # "i":I
    :cond_17
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2129
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    .line 2131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 2132
    return-void
.end method

.method public final addRegroupArmy(Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;)V
    .registers 7
    .param p1, "nData"  # Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    .line 1668
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1669
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRegroupArmySize:I

    .line 1671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    .local v0, "tMoveUnitsLine":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;>;"
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line_Highlighted;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getFromProvinceID()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line_Highlighted;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_28
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRouteSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_45

    .line 1675
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line_Highlighted;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line_Highlighted;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1678
    .end local v1  # "i":I
    :cond_45
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->currentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1679
    return-void
.end method

.method public final addResearchProgressT(F)V
    .registers 4
    .param p1, "fAdd"  # F

    .line 956
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->researchProgress:F

    add-float/2addr v1, p1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->researchProgress:F

    .line 957
    return-void
.end method

.method public final addSeaAccess_PortProvinces(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 3438
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessPort:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3439
    return-void
.end method

.method public final addSeaAccess_Provinces(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 3422
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3423
    return-void
.end method

.method public final addSentMessages(Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;)V
    .registers 5
    .param p1, "nSentMessage"  # Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    .line 3897
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_3e

    .line 3898
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iToCivID:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iToCivID:I

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v1, v2, :cond_3b

    .line 3899
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iSentInTurnID:I

    .line 3900
    return-void

    .line 3897
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3904
    .end local v0  # "i":I
    :cond_3e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3905
    return-void
.end method

.method public final addTagsCanForm(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 3486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 3487
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3488
    return-void

    .line 3486
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3492
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3493
    return-void
.end method

.method public final addVassalN(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 1491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1492
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    if-ne v1, p1, :cond_1a

    .line 1493
    return-void

    .line 1491
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1497
    .end local v0  # "i":I
    :cond_1d
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iVassalsSize:I

    .line 1499
    return-void
.end method

.method public final addWarReparationsGets(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 1919
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 1920
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    if-ne v1, p1, :cond_2a

    .line 1921
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPeaceTreaty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PeaceTreaty;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PeaceTreaty;->WAR_REPARATIONS_LENGTH:I

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    .line 1922
    return-void

    .line 1919
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1926
    .end local v0  # "i":I
    :cond_2d
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPeaceTreaty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PeaceTreaty;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PeaceTreaty;->WAR_REPARATIONS_LENGTH:I

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/WarReparations;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1927
    return-void
.end method

.method public final addWarReparationsPay(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 1930
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 1931
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    if-ne v1, p1, :cond_2a

    .line 1932
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPeaceTreaty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PeaceTreaty;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PeaceTreaty;->WAR_REPARATIONS_LENGTH:I

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    .line 1933
    return-void

    .line 1930
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1937
    .end local v0  # "i":I
    :cond_2d
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPeaceTreaty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PeaceTreaty;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PeaceTreaty;->WAR_REPARATIONS_LENGTH:I

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/WarReparations;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1938
    return-void
.end method

.method public final areSanctionsAdded(II)Z
    .registers 5
    .param p1, "byCivID"  # I
    .param p2, "onCivID"  # I

    .line 2188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 2189
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->byCivID:I

    if-ne v1, p1, :cond_27

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->onCivID:I

    if-eq v1, p2, :cond_43

    :cond_27
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->byCivID:I

    if-ne v1, p2, :cond_45

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->onCivID:I

    if-ne v1, p1, :cond_45

    .line 2190
    :cond_43
    const/4 v1, 0x1

    return v1

    .line 2188
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2194
    .end local v0  # "i":I
    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method public final buildCivPersonality()V
    .registers 8

    .line 489
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_CLOSE_REGION_PROVINCES_MIN:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_CLOSE_REGION_PROVINCES_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_PROVINCES:I

    .line 490
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_CLOSE_REGION_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_CLOSE_REGION_SCORE_RANDOM_1000:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_EXTRA_SCORE:F

    .line 492
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->PERSONALITY_MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY_DEFAULT:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->PERSONALITY_MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY_RANDOM:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY:F

    .line 494
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_AIAggression()V

    .line 496
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_MoreOften()V

    .line 498
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TREASURY_RESERVE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TREASURY_RESERVE_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TREASURY_RESERVE:F

    .line 499
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TREASURY_RESERVE_MODIFIER_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TREASURY_RESERVE_MODIFIER_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TREASURY_RESERVE_MODIFIER:F

    .line 501
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_POTENTIAL_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_POTENTIAL_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_POTENTIAL:F

    .line 502
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_DANGER_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_DANGER_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_DANGER:F

    .line 503
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_REGION_NUM_OF_PROVINCES_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_REGION_NUM_OF_PROVINCES_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGION_NUM_OF_PROVINCES:F

    .line 504
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_REGION_POTENTIAL_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_REGION_POTENTIAL_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGION_POTENTIAL:F

    .line 505
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_NUM_OF_UNITS_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_NUM_OF_UNITS_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_NUM_OF_UNITS:F

    .line 507
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_ATTACK_NAVAL_DISTANCE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_ATTACK_NAVAL_DISTANCE_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_NAVAL_DISTANCE:F

    .line 508
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_ATTACK_DISTANCE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_ATTACK_DISTANCE_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_DISTANCE:F

    .line 510
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_ATTACK_SCORE_ARMY_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_ATTACK_SCORE_ARMY_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const v2, 0x3c23d70a  # 0.01f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_SCORE_ARMY:F

    .line 511
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_ATTACK_SCORE_POTENTIAL_BASE:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_ATTACK_SCORE_POTENTIAL_RANDOM_1000:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_SCORE_POTENTIAL:F

    .line 512
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_ATTACK_SCORE_WAS_CONQUERED_BASE:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_ATTACK_SCORE_WAS_CONQUERED_RANDOM_1000:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_SCORE_WAS_CONQUERED:F

    .line 514
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_REGROUP_SPLIT_MIN_BASE:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_REGROUP_SPLIT_MIN_RANDOM:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGROUP_SPLIT_MIN:I

    .line 515
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_REGROUP_SPLIT_EXTRA_BASE:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->WAR_REGROUP_SPLIT_EXTRA_RANDOM:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGROUP_SPLIT_EXTRA:I

    .line 517
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_POTENTIAL_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_POTENTIAL_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_POTENTIAL:F

    .line 518
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_POTENTIAL_MODIFIED_OWN_LOST_PROVINCE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_POTENTIAL_MODIFIED_OWN_LOST_PROVINCE_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_POTENTIAL_MODIFIED_OWN_LOST_PROVINCE:F

    .line 519
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_DANGER_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_DANGER_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_DANGER:F

    .line 520
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_REGION_NUM_OF_PROVINCES_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_REGION_NUM_OF_PROVINCES_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_REGION_NUM_OF_PROVINCES:F

    .line 521
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_REGION_POTENTIAL_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_REGION_POTENTIAL_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_REGION_POTENTIAL:F

    .line 522
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_NUM_OF_UNITS_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_NUM_OF_UNITS_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_NUM_OF_UNITS:F

    .line 523
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_NUM_OF_UNITS_RECRUITMENT_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_NUM_OF_UNITS_RECRUITMENT_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_NUM_OF_UNITS_RECRUITMENT:F

    .line 525
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->PERSONALITY_MIN_MILITARY_SPENDINGS_DEFAULT:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->PERSONALITY_MIN_MILITARY_SPENDINGS_RANDOM:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS:F

    .line 526
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_RECRUIT_FROM_FAR_AWAY_CHANCE_BASE:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VALUABLE_RECRUIT_FROM_FAR_AWAY_CHANCE_RANDOM:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_RECRUIT_FROM_FAR_AWAY_CHANCE:I

    .line 528
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->MIN_MILITARY_SPENDINGS_RECRUIT_AT_WAR_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->MIN_MILITARY_SPENDINGS_RECRUIT_AT_WAR_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS_RECRUIT_AT_WAR:F

    .line 529
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->MIN_MILITARY_SPENDINGS_NOT_BORDERING_WITH_ENEMY_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->MIN_MILITARY_SPENDINGS_NOT_BORDERING_WITH_ENEMY_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS_NOT_BORDERING_WITH_ENEMY:F

    .line 532
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->PERSONALITY_MIN_HAPPINESS_DEFAULT:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->PERSONALITY_MIN_HAPPINESS_RANDOM:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_HAPPINESS_FOR_CIV:I

    .line 534
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->MIN_MILITARY_SPENDINGS_WAR_MODIFIER_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->MIN_MILITARY_SPENDINGS_WAR_MODIFIER_RANDOM_1000:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS_WAR_MODIFIER:F

    .line 535
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebels:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->RISE_REVOLT_RISK_IN_PROVINCE_IF_HAPPINESS_BELOW:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->MIN_PROVINCE_HAPPINESS_RUN_FESTIVAL_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_PROVINCE_HAPPINESS_RUN_FESTIVAL:F

    .line 537
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_318

    .line 538
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3f35c28f  # 0.71f

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_PROVINCE_STABILITY:F

    goto :goto_32f

    .line 540
    :cond_318
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->MIN_PROVINCE_STABILITY_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->MIN_PROVINCE_STABILITY_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_PROVINCE_STABILITY:F

    .line 543
    :goto_32f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->ASSIMILATE_PERC_DISTANCE_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->ASSIMILATE_PERC_DISTANCE_SCORE_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->ASSIMILATE_PERC_DISTANCE_SCORE:F

    .line 544
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->ASSIMILATE_PERC_LOW_STABILITY_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->ASSIMILATE_PERC_LOW_STABILITY_SCORE_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->ASSIMILATE_PERC_LOW_STABILITY_SCORE:F

    .line 545
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->ASSIMILATE_PERC_POPULATION_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->ASSIMILATE_PERC_POPULATION_SCORE_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->ASSIMILATE_PERC_POPULATION_SCORE:F

    .line 547
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_STABILITY_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_STABILITY_SCORE_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_STABILITY_SCORE:F

    .line 548
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_DANGER_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_DANGER_SCORE_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_DANGER_SCORE:F

    .line 550
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_Buildings()V

    .line 551
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_Colonization()V

    .line 553
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->POTENTIAL_POPULATION_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->POTENTIAL_POPULATION_RANDOM_1000:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_POPULATION:F

    .line 554
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->POTENTIAL_ECONOMY_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->POTENTIAL_ECONOMY_RANDOM_1000:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_ECONOMY:F

    .line 556
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->DANGER_EXTRA_KEY_REGION_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->DANGER_EXTRA_KEY_REGION_RANDOM_1000:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_EXTRA_KEY_REGION:F

    .line 557
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->DANGER_EXTRA_PER_OWN_PROVINCE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->DANGER_EXTRA_PER_OWN_PROVINCE_RANDOM_1000:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_EXTRA_PER_OWN_PROVINCE:F

    .line 558
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->DANGER_PERC_OF_UNITS_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->DANGER_PERC_OF_UNITS_RANDOM_1000:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_PERC_OF_UNITS:F

    .line 560
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_NonSavable()V

    .line 561
    return-void
.end method

.method public final buildCivPersonality_AIAggression()V
    .registers 6

    .line 476
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->AI_AGGRESSIVENESS:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiDeclareWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->PERSONALITY_AI_AGGRESSION_RANDOM:F

    mul-float v0, v0, v1

    const/high16 v1, 0x447a0000  # 1000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 478
    .local v0, "randValue":I
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->AI_AGGRESSIVENESS:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiDeclareWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->PERSONALITY_AI_AGGRESSION_MIN:F

    mul-float v3, v3, v4

    if-gtz v0, :cond_1d

    const/4 v1, 0x0

    goto :goto_26

    :cond_1d
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v1

    :goto_26
    add-float/2addr v3, v1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->AI_CIV_AGGRESSION:F
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 483
    .end local v0  # "randValue":I
    goto :goto_2e

    .line 481
    :catch_2a
    move-exception v0

    .line 482
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 484
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method public final buildCivPersonality_Buildings()V
    .registers 7

    .line 617
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_FORT_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_FORT_RANDOM_100:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000  # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_FORT:F

    .line 618
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_TOWER_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_TOWER_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_TOWER:F

    .line 619
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_PORT_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_PORT_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_PORT:F

    .line 620
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_FARM_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_FARM_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_FARM:F

    .line 622
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_WORKSHOP_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_WORKSHOP_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP:F

    .line 623
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_WORKSHOP_POP_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_WORKSHOP_POP_SCORE_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP_POP_SCORE:F

    .line 624
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_WORKSHOP_ECO_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_WORKSHOP_ECO_SCORE_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP_ECO_SCORE:F

    .line 626
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_MARKET_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_MARKET_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_MARKET:F

    .line 627
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_MARKET_POP_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_MARKET_POP_SCORE_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_MARKET_POP_SCORE:F

    .line 628
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_MARKET_ECO_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_MARKET_ECO_SCORE_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_MARKET_ECO_SCORE:F

    .line 630
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_LIBRARY_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_LIBRARY_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_LIBRARY:F

    .line 631
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_ARMOURY_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_ARMOURY_RANDOM_100:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_ARMOURY:F

    .line 632
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_ARMOURY_RECRUITABLE_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_ARMOURY_RECRUITABLE_SCORE_RANDOM_1000:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x447a0000  # 1000.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_ARMOURY_RECRUITABLE_SCORE:F

    .line 633
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_SUPPLYLINE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_SUPPLYLINE_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_SUPPLYLINE:F

    .line 635
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST:F

    .line 636
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_DEVELOPMENT_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_DEVELOPMENT_RANDOM_100:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_DEVELOPMENT:F

    .line 637
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_POP_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_POP_SCORE_RANDOM_1000:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_POP_SCORE:F

    .line 638
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_DEVELOPMENT_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_DEVELOPMENT_SCORE_RANDOM_1000:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_DEVELOPMENT_SCORE:F

    .line 640
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_POP_ECO_DIFFERENCE_SCORE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_POP_ECO_DIFFERENCE_SCORE_RANDOM_1000:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_POP_ECO_DIFFERENCE_SCORE:F

    .line 641
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_SECOND_INVEST_MAX_PERC_BASE:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_SECOND_INVEST_MAX_PERC_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_SECOND_INVEST_MAX_PERC:I

    .line 642
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_SECOND_INVEST_CHANCE_BASE:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_INVEST_SECOND_INVEST_CHANCE_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_SECOND_INVEST_CHANCE:I

    .line 643
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_RESERVE_RAND_BASE:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->BUILD_RESERVE_RAND_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_RESERVE_RAND:I

    .line 644
    return-void
.end method

.method public final buildCivPersonality_Colonization()V
    .registers 6

    .line 610
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->COLONIZATION_SEA_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->COLONIZATION_SEA_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->coloniesFounded:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_SEA:F

    .line 611
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->COLONIZATION_OWN_PROVINCES_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->COLONIZATION_OWN_PROVINCES_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_OWN_PROVINCES:F

    .line 612
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->COLONIZATION_GROWTH_RATE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->COLONIZATION_GROWTH_RATE_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_GROWTH_RATE:F

    .line 613
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->COLONIZATION_DISTANCE_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->COLONIZATION_DISTANCE_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_DISTANCE:F

    .line 614
    return-void
.end method

.method public final buildCivPersonality_MoreOften()V
    .registers 8

    .line 275
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TAXATION_LEVEL_BASE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TAXATION_LEVEL_RANDOM_1000:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TAXATION_LEVEL:F

    .line 277
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->USE_OF_BUDGET_FOR_SPENDINGS:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->USE_OF_BUDGET_FOR_SPENDINGS_RANDOM:I

    mul-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->USE_OF_BUDGET_FOR_SPENDINGS:F

    .line 279
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->GOODS_EXTRA_PERC_OF_BUDGET_BASE:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->PERSONALITY_GOODS_RANDOM:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->GOODS_EXTRA_PERC_OF_BUDGET:F

    .line 280
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->INVESTMENTS_EXTRA_PERC_OF_BUDGET_BASE:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->PERSONALITY_INVESTMENTS_RANDOM:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->INVESTMENTS_EXTRA_PERC_OF_BUDGET:F

    .line 281
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESEARCH_PERC_OF_BUDGET_BASE:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESEARCH_PERC_OF_BUDGET_RANDOM_100:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->PERSONALITY_RESEARCH_RANDOM:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->RESEARCH_PERC_OF_BUDGET:F

    .line 282
    return-void
.end method

.method public final buildCivPersonality_NonSavable()V
    .registers 6

    .line 564
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_CAPITAL_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_CAPITAL_RANDOM_1000:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000  # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_CAPITAL:F

    .line 565
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_OWN_PROVINCE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_OWN_PROVINCE_RANDOM_1000:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_OWN_PROVINCE:F

    .line 566
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_MORE_NEUTRAL_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_MORE_NEUTRAL_RANDOM_1000:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_MORE_NEUTRAL:F

    .line 567
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_OTHER_CIV_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_OTHER_CIV_RANDOM_1000:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_OTHER_CIV:F

    .line 568
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_GROWTH_RATE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_GROWTH_RATE_RANDOM_1000:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_GROWTH_RATE:F

    .line 569
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_LAST_PROVINCE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_LAST_PROVINCE_RANDOM_1000:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_LAST_PROVINCE:F

    .line 570
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_SEA_ACCESS_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_SEA_ACCESS_RANDOM_1000:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_SEA_ACCESS:F

    .line 571
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_SEA_ACCESS_EXTRA_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_SEA_ACCESS_EXTRA_RANDOM:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_SEA_ACCESS_EXTRA:F

    .line 572
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES_RANDOM:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES:F

    .line 573
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES_POTENTIAL_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES_POTENTIAL_RANDOM:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES_POTENTIAL:F

    .line 575
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->UNCIVILIZED_MIGRATE_BASE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->UNCIVILIZED_MIGRATE_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->UNCIVILIZED_MIGRATE:I

    .line 576
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->UNCIVILIZED_WILLING_TO_CIVILIZE_BASE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->UNCIVILIZED_WILLING_TO_CIVILIZE_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->UNCIVILIZED_WILLING_TO_CIVILIZE:I

    .line 578
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_MILITARY_ACCESS_DISTANCE_SCORE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_MILITARY_ACCESS_DISTANCE_SCORE_RANDOM_100:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_DISTANCE_SCORE:F

    .line 579
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_MILITARY_ACCESS_RELATION_SCORE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_MILITARY_ACCESS_RELATION_SCORE_RANDOM:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_RELATION_SCORE:F

    .line 580
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_MILITARY_ACCESS_RANK_SCORE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_MILITARY_ACCESS_RANK_SCORE_RANDOM_10:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000  # 10.0f

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_RANK_SCORE:F

    .line 581
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_MILITARY_ACCESS_RANK_OWN_SCORE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_MILITARY_ACCESS_RANK_OWN_SCORE_RANDOM_10:I

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_RANK_OWN_SCORE:F

    .line 582
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_MILITARY_ACCESS_DEFENSIVE_PACT_SCORE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_MILITARY_ACCESS_DEFENSIVE_PACT_SCORE_RANDOM_10:I

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_MILITARY_ACCESS_DEFENSIVE_PACT_SCORE:F

    .line 584
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->HRE_VOTE_FOR_RANK_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->HRE_VOTE_FOR_RANK_RANDOM:I

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->HRE_VOTE_FOR_RANK:F

    .line 585
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->HRE_VOTE_FOR_PROVINCES_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->HRE_VOTE_FOR_PROVINCES_RANDOM:I

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->HRE_VOTE_FOR_PROVINCES:F

    .line 587
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_ALLIANCE_OPINION_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_ALLIANCE_OPINION_RANDOM_10:I

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_ALLIANCE_OPINION:F

    .line 588
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_ALLIANCE_STRENGTH_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->RESPONSE_ALLIANCE_STRENGTH_RANDOM_10:I

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->RESPONSE_ALLIANCE_STRENGTH:F

    .line 590
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_POP_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_POP_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_POP:F

    .line 591
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_ECO_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_ECO_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_ECO:F

    .line 592
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_TAXATION_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_TAXATION_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_TAXATION:F

    .line 593
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_PRODUCTION_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_PRODUCTION_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_PRODUCTION:F

    .line 594
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_ADMINISTRATION_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_ADMINISTRATION_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_ADMINISTRATION:F

    .line 595
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_MILITARY_UPKEEP_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_MILITARY_UPKEEP_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_MILITARY_UPKEEP:F

    .line 596
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_MOVEMENT_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_MOVEMENT_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_MOVEMENT:F

    .line 597
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_RESEARCH_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_RESEARCH_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_RESEARCH:F

    .line 598
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_ASSIMILATE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_ASSIMILATE_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_ASSIMILATE:F

    .line 599
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_RECRUITABLE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->TECH_RECRUITABLE_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->TECH_RECRUITABLE:F

    .line 601
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->LIBERTY_DECLARATION_BASE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->LIBERTY_DECLARATION_RANDOM:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->LIBERTY_DECLARATION:F

    .line 602
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->LIBERTY_ACCEPTABLE_TRIBUTE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->LIBERTY_ACCEPTABLE_TRIBUTE_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->LIBERTY_ACCEPTABLE_TRIBUTE:F

    .line 604
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VASSALS_TRIBUTE_PERC_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VASSALS_TRIBUTE_PERC_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->VASSALS_TRIBUTE_PERC:F

    .line 605
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VASSALS_TRIBUTE_PERC_RAND_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VASSALS_TRIBUTE_PERC_RAND_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->VASSALS_TRIBUTE_PERC_RAND:F

    .line 606
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VASSALS_TRIBUTE_PERC_FRIENDLY_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiCivPersonality:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivPersonality;->VASSALS_TRIBUTE_PERC_FRIENDLY_RANDOM_100:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->VASSALS_TRIBUTE_PERC_FRIENDLY:F

    .line 607
    return-void
.end method

.method public final buildDiplomacy(Z)V
    .registers 4
    .param p1, "buildRelations"  # Z

    .line 741
    if-eqz p1, :cond_9

    .line 742
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 745
    :cond_9
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 746
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 747
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 748
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 750
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 752
    if-eqz p1, :cond_29

    .line 753
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->allianceID:I

    .line 755
    :cond_29
    return-void
.end method

.method public final buildRegroupLines_AfterLoading()V
    .registers 8

    .line 1655
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRegroupArmySize:I

    if-ge v0, v1, :cond_75

    .line 1656
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1658
    .local v1, "tMoveUnitsLine":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;>;"
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line_Highlighted;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getFromProvinceID()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line_Highlighted;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1659
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRouteSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_6d

    .line 1660
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line_Highlighted;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line_Highlighted;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1659
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1663
    .end local v2  # "i":I
    :cond_6d
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->currentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1655
    .end local v1  # "tMoveUnitsLine":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1665
    .end local v0  # "j":I
    :cond_75
    return-void
.end method

.method public final civRegionsContainsProvince(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 678
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    if-ge v0, v1, :cond_18

    .line 679
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->containsProvince(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 680
    const/4 v1, 0x1

    return v1

    .line 678
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 684
    .end local v0  # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final clearCivRegions()V
    .registers 4

    .line 707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 708
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 711
    .end local v0  # "i":I
    :cond_18
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 712
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    .line 713
    return-void
.end method

.method public final clearConstructions()V
    .registers 2

    .line 1575
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1576
    return-void
.end method

.method public final clearFriendlyCivs()V
    .registers 2

    .line 3882
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3883
    return-void
.end method

.method public final clearHatedCivs()V
    .registers 4

    .line 3772
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 3773
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeHatedCiv_BY(I)V

    .line 3772
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3775
    .end local v0  # "i":I
    :cond_23
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3776
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iHatedCivsSize:I

    .line 3777
    return-void
.end method

.method public final clearLoans()V
    .registers 2

    .line 1842
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1843
    return-void
.end method

.method public final clearLoansFromCiv()V
    .registers 2

    .line 1909
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1910
    return-void
.end method

.method public final clearMigrate()V
    .registers 2

    .line 991
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 992
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    .line 993
    return-void
.end method

.method public final clearMoveUnits()V
    .registers 2

    .line 964
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 965
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize:I

    .line 966
    return-void
.end method

.method public final clearMoveUnits_Plunder()V
    .registers 2

    .line 1040
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1041
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits_PlunderSize:I

    .line 1042
    return-void
.end method

.method public final clearProvinces_FillTheMap(Z)V
    .registers 4
    .param p1, "addCapital"  # Z

    .line 2217
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2218
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    .line 2220
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2221
    if-eqz p1, :cond_2c

    .line 2222
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2223
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    .line 2224
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->createCivilizationRegion(I)V

    goto :goto_34

    .line 2227
    :cond_2c
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    .line 2230
    :goto_34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 2231
    return-void
.end method

.method public final clearRecruitArmy()V
    .registers 2

    .line 1596
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1597
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    .line 1598
    return-void
.end method

.method public final clearRegroupArmy()V
    .registers 3

    .line 2112
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2113
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->currentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2115
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRegroupArmySize:I

    .line 2116
    return-void
.end method

.method public final clearSeaAccess_PortProvinces()V
    .registers 2

    .line 3434
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessPort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3435
    return-void
.end method

.method public final clearSeaAccess_Provinces()V
    .registers 2

    .line 3418
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3419
    return-void
.end method

.method public final clearSentMessages()V
    .registers 2

    .line 3908
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3909
    return-void
.end method

.method public final clearTagsCanForm()V
    .registers 2

    .line 3474
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3475
    return-void
.end method

.method public final controlsProvince(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 2244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 2245
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v1

    if-ne p1, v1, :cond_f

    .line 2246
    const/4 v1, 0x1

    return v1

    .line 2244
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2250
    .end local v0  # "i":I
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final countEco()J
    .registers 6

    .line 3308
    const-wide/16 v0, 0x0

    .line 3310
    .local v0, "nEconomy":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    if-ge v2, v3, :cond_1a

    .line 3311
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 3310
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3314
    .end local v2  # "i":I
    :cond_1a
    return-wide v0
.end method

.method public final countEco_WithoutOccupied()J
    .registers 6

    .line 3318
    const-wide/16 v0, 0x0

    .line 3320
    .local v0, "nEconomy":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    if-ge v2, v3, :cond_2a

    .line 3321
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_27

    .line 3322
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 3320
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3326
    .end local v2  # "i":I
    :cond_2a
    return-wide v0
.end method

.method public final countPop()J
    .registers 6

    .line 3286
    const-wide/16 v0, 0x0

    .line 3288
    .local v0, "nPopulation":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    if-ge v2, v3, :cond_1e

    .line 3289
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 3288
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3292
    .end local v2  # "i":I
    :cond_1e
    return-wide v0
.end method

.method public final countPopWithoutOccupied()J
    .registers 6

    .line 3296
    const-wide/16 v0, 0x0

    .line 3298
    .local v0, "nPopulation":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    if-ge v2, v3, :cond_2e

    .line 3299
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 3300
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 3298
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3304
    .end local v2  # "i":I
    :cond_2e
    return-wide v0
.end method

.method public final createCivilizationRegion(I)V
    .registers 5
    .param p1, "nProvinceID"  # I

    .line 651
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    .line 654
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 656
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    iput-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 657
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivilizationRegion(II)V

    .line 659
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 660
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->wasInProv:Z

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 662
    .end local v0  # "i":I
    :cond_46
    return-void
.end method

.method public final disposeFlag()V
    .registers 2

    .line 3523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    .line 3524
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    .line 3526
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_13

    .line 3527
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 3528
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 3530
    :cond_13
    return-void
.end method

.method public final getAIStyleID()I
    .registers 2

    .line 3262
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iAIStyleID:I

    return v0
.end method

.method public final getAlliance()I
    .registers 2

    .line 3183
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->allianceID:I

    return v0
.end method

.method public final getArmyInAnotherProviP(I)I
    .registers 4
    .param p1, "i"  # I

    .line 3225
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3226
    :catch_d
    move-exception v0

    .line 3227
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_15

    .line 3228
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3231
    :cond_15
    const/4 v1, -0x1

    return v1
.end method

.method public final getArmyInAnotherProvinceSize()I
    .registers 2

    .line 2415
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProvinceSize:I

    return v0
.end method

.method public final getAssimilate(I)Lage/of/civilizations2/jakowski/lukasz/CivTask;
    .registers 3
    .param p1, "i"  # I

    .line 1157
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    return-object v0
.end method

.method public final getAssimilatesSize()I
    .registers 2

    .line 1246
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getB()I
    .registers 2

    .line 2325
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-short v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iB:S

    return v0
.end method

.method public final getBonus(I)Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 3541
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    return-object v0
.end method

.method public final getBonusesSize()I
    .registers 2

    .line 3545
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getBordersWithEnemy()I
    .registers 2

    .line 3450
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithEnemy:I

    return v0
.end method

.method public final getCapitalMoved_LastTurnID()I
    .registers 2

    .line 873
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->capitalMoved_LastTurnID:I

    return v0
.end method

.method public final getCapitalProvID()I
    .registers 2

    .line 857
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->capitalProvinceID:I

    return v0
.end method

.method public final getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;
    .registers 2

    .line 1801
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civDiploGD:Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    return-object v0
.end method

.method public final getCivId()I
    .registers 2

    .line 2331
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    return v0
.end method

.method public final getCivName()Ljava/lang/String;
    .registers 2

    .line 2345
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCivNameCharacter(I)C
    .registers 3
    .param p1, "id"  # I

    .line 2301
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public final getCivNameHeight()I
    .registers 2

    .line 2297
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameHeight:I

    return v0
.end method

.method public final getCivNameLength()I
    .registers 2

    .line 2305
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameLength:I

    return v0
.end method

.method public final getCivNameWidth()I
    .registers 2

    .line 2293
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameWidth:I

    return v0
.end method

.method public final getCivPersonality()Lage/of/civilizations2/jakowski/lukasz/CivPersonality;
    .registers 2

    .line 3270
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    return-object v0
.end method

.method public final getCivPlans()Lage/of/civilizations2/jakowski/lukasz/CivPlans;
    .registers 2

    .line 3274
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    return-object v0
.end method

.method public final getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;
    .registers 4
    .param p1, "i"  # I

    .line 2864
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2865
    :catch_9
    move-exception v0

    .line 2866
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateRegions:Z

    .line 2867
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;-><init>()V

    return-object v1
.end method

.method public final getCivRegionsSize()I
    .registers 2

    .line 2872
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    return v0
.end method

.method public final getCivTag()Ljava/lang/String;
    .registers 2

    .line 2349
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getColor(F)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "fAlpha"  # F

    .line 832
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRGB(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public final getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;
    .registers 3
    .param p1, "i"  # I

    .line 409
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    return-object v0
.end method

.method public final getConstructionsSize()I
    .registers 2

    .line 405
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCoreCapitalProvID()I
    .registers 2

    .line 865
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->coreCapitalProvinceID:I

    return v0
.end method

.method public final getCurrentRegroupArmyLine(I)Ljava/util/List;
    .registers 3
    .param p1, "i"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;",
            ">;"
        }
    .end annotation

    .line 3161
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->currentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getDefensivePact8(I)I
    .registers 5
    .param p1, "i"  # I

    .line 2548
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2549
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    return v0

    .line 2551
    :cond_1c
    return v0

    .line 2553
    :catch_1d
    move-exception v1

    .line 2554
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method public final getDiploPoints()I
    .registers 2

    .line 3390
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->diploPoints:I

    return v0
.end method

.method public final getEventTookDecision(Ljava/lang/String;)Z
    .registers 4
    .param p1, "nEventDecTAG"  # Ljava/lang/String;

    .line 1791
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1792
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1793
    const/4 v1, 0x1

    return v1

    .line 1791
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1797
    .end local v0  # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public final getEventsToRun(I)I
    .registers 3
    .param p1, "i"  # I

    .line 2000
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getEventsToRunSize()I
    .registers 2

    .line 1783
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFestival(I)Lage/of/civilizations2/jakowski/lukasz/CivTask;
    .registers 3
    .param p1, "i"  # I

    .line 1068
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    return-object v0
.end method

.method public final getFestivalsSize()I
    .registers 2

    .line 1140
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;
    .registers 2

    .line 2855
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-nez v0, :cond_a

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public final getFlag_IsNull()Z
    .registers 2

    .line 2859
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final getFriendlyCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 3868
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    return-object v0
.end method

.method public final getFriendlyCivsSize()I
    .registers 2

    .line 3864
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getG()I
    .registers 2

    .line 2317
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-short v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iG:S

    return v0
.end method

.method public final getGold()J
    .registers 3

    .line 848
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-wide v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iGold:J

    return-wide v0
.end method

.method public getGoldenAge_Military()I
    .registers 2

    .line 3689
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->goldenAge_Military:I

    return v0
.end method

.method public getGoldenAge_Prosperity()I
    .registers 2

    .line 3697
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->goldenAge_Prosperity:I

    return v0
.end method

.method public getGoldenAge_Science()I
    .registers 2

    .line 3681
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->goldenAge_Science:I

    return v0
.end method

.method public getGroupID()I
    .registers 2

    .line 1627
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iGroupID:I

    return v0
.end method

.method public final getGuarantee9(I)I
    .registers 5
    .param p1, "i"  # I

    .line 2584
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2585
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    return v0

    .line 2587
    :cond_1c
    return v0

    .line 2589
    :catch_1d
    move-exception v1

    .line 2590
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method public final getHappiness()I
    .registers 2

    .line 2370
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->happiness:I

    return v0
.end method

.method public final getHatedCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 3758
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    return-object v0
.end method

.method public final getHatedCiv_By(I)I
    .registers 3
    .param p1, "i"  # I

    .line 3797
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getHatedCivsSize()I
    .registers 2

    .line 3754
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iHatedCivsSize:I

    return v0
.end method

.method public final getHatedCivs_BySize()I
    .registers 2

    .line 3793
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iHatedCivs_BySize:I

    return v0
.end method

.method public final getIdeology()I
    .registers 2

    .line 3257
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->ideologyID:I

    return v0
.end method

.method public final getInvest(I)Lage/of/civilizations2/jakowski/lukasz/CivInvest;
    .registers 3
    .param p1, "i"  # I

    .line 2171
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    return-object v0
.end method

.method public final getInvest_Development(I)Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;
    .registers 3
    .param p1, "i"  # I

    .line 1394
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    return-object v0
.end method

.method public final getInvestsSize()I
    .registers 2

    .line 2198
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getInvestsSize_Development()I
    .registers 2

    .line 1484
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getIsAvailable()Z
    .registers 2

    .line 3278
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    return v0
.end method

.method public final getIsPartOfHolyRomanEmpire()Z
    .registers 2

    .line 1703
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->isPartOfHolyRomaEmpire:Z

    return v0
.end method

.method public final getIsPlayer()Z
    .registers 2

    .line 2506
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final getLoan(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 1807
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;

    return-object v0
.end method

.method public final getLoanFromCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 1852
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    return-object v0
.end method

.method public final getLoansFromCivSize()I
    .registers 2

    .line 1856
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getLoansFromCiv_GoldTotalPerTurn()I
    .registers 4

    .line 1899
    const/4 v0, 0x0

    .line 1901
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1902
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iGoldPerTurn:I

    add-int/2addr v0, v2

    .line 1901
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1905
    .end local v1  # "i":I
    :cond_1c
    return v0
.end method

.method public final getLoansSize()I
    .registers 2

    .line 1811
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getLoans_GoldTotalPerTurn()I
    .registers 4

    .line 1832
    const/4 v0, 0x0

    .line 1834
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1835
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;->iGoldPerTurn:I

    add-int/2addr v0, v2

    .line 1834
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1838
    .end local v1  # "i":I
    :cond_1c
    return v0
.end method

.method public final getMigrateMU(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;
    .registers 3
    .param p1, "i"  # I

    .line 3122
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    return-object v0
.end method

.method public final getMigrateSize()I
    .registers 2

    .line 3153
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    return v0
.end method

.method public final getMilitaryAccess3(I)I
    .registers 5
    .param p1, "i"  # I

    .line 2620
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2621
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    return v0

    .line 2623
    :cond_1c
    return v0

    .line 2625
    :catch_1d
    move-exception v1

    .line 2626
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method public final getModifier_Administation()F
    .registers 2

    .line 3625
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Administration:F

    return v0
.end method

.method public final getModifier_AttackBonus()F
    .registers 2

    .line 3657
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    return v0
.end method

.method public final getModifier_DefenseBonus()F
    .registers 2

    .line 3665
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    return v0
.end method

.method public final getModifier_EconomyGrowth()F
    .registers 2

    .line 3613
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    return v0
.end method

.method public final getModifier_IncomeProduction()F
    .registers 2

    .line 3633
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    return v0
.end method

.method public final getModifier_IncomeTaxation()F
    .registers 2

    .line 3621
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    return v0
.end method

.method public final getModifier_MilitaryUpkeep()F
    .registers 2

    .line 3649
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    return v0
.end method

.method public final getModifier_MovementPoints()F
    .registers 2

    .line 3673
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    return v0
.end method

.method public final getModifier_PopGrowth()F
    .registers 2

    .line 3605
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    return v0
.end method

.method public final getModifier_Research()F
    .registers 2

    .line 3641
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    return v0
.end method

.method public final getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;
    .registers 3
    .param p1, "i"  # I

    .line 3076
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    return-object v0
.end method

.method public final getMoveUnitsPlunder(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;
    .registers 3
    .param p1, "i"  # I

    .line 3126
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    return-object v0
.end method

.method public final getMoveUnitsPlunderSize()I
    .registers 2

    .line 3157
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits_PlunderSize:I

    return v0
.end method

.method public final getMoveUnits_NumFromProvince(I)I
    .registers 5
    .param p1, "nProvinceID"  # I

    .line 3080
    const/4 v0, 0x0

    .line 3082
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 3083
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 3084
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getNumberOfUnits()I

    move-result v2

    add-int/2addr v0, v2

    .line 3082
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3088
    .end local v1  # "i":I
    :cond_1e
    return v0
.end method

.method public final getMovemPoints()I
    .registers 2

    .line 837
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->movePoints:I

    return v0
.end method

.method public final getNonAggPact(I)I
    .registers 5
    .param p1, "i"  # I

    .line 3052
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3053
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    return v0

    .line 3055
    :cond_1c
    return v0

    .line 3057
    :catch_1d
    move-exception v1

    .line 3058
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method public final getNumOfNeighboringNeutralProvinces()I
    .registers 2

    .line 3466
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfNeighboringNeutralProvinces:I

    return v0
.end method

.method public final getNumOfProvs()I
    .registers 2

    .line 2255
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    return v0
.end method

.method public final getNumberOfUnits()I
    .registers 2

    .line 3198
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfUnits:I

    return v0
.end method

.method public final getProvID(I)I
    .registers 4
    .param p1, "i"  # I

    .line 2235
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 2236
    :catch_d
    move-exception v0

    .line 2237
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2239
    const/4 v1, -0x1

    return v1
.end method

.method public final getPuppetOfCiv()I
    .registers 2

    .line 2888
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->puppetOfCivID:I

    return v0
.end method

.method public final getR()I
    .registers 2

    .line 2309
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-short v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iR:S

    return v0
.end method

.method public final getRGB()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 824
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRGB(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public final getRGB(F)Lcom/badlogic/gdx/graphics/Color;
    .registers 7
    .param p1, "nAlpha"  # F

    .line 828
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-direct {v0, v1, v3, v4, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public final getRankPos()I
    .registers 2

    .line 3239
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankPosition:I

    return v0
.end method

.method public final getRankScore()I
    .registers 2

    .line 3248
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankScore:I

    return v0
.end method

.method public final getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;
    .registers 3
    .param p1, "i"  # I

    .line 3130
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    return-object v0
.end method

.method public final getRecruitArmySize()I
    .registers 2

    .line 3144
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    return v0
.end method

.method public final getRecruitArmy_BasedOnProvinceID(I)I
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 3134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    if-ge v0, v1, :cond_23

    .line 3135
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_20

    .line 3136
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v1

    return v1

    .line 3134
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3140
    .end local v0  # "i":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public final getRegroupArmy(I)Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;
    .registers 3
    .param p1, "i"  # I

    .line 3165
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    return-object v0
.end method

.method public final getRegroupArmySize()I
    .registers 2

    .line 3179
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRegroupArmySize:I

    return v0
.end method

.method public final getRelationD(I)F
    .registers 4
    .param p1, "i"  # I

    .line 2420
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2421
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_22

    return v0

    .line 2425
    :cond_21
    goto :goto_26

    .line 2423
    :catch_22
    move-exception v0

    .line 2424
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2427
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method public getReligionID()I
    .registers 2

    .line 1619
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iReligionID:I

    return v0
.end method

.method public final getResearchProgressT()F
    .registers 2

    .line 1696
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->researchProgress:F

    return v0
.end method

.method public final getSeaAccess()I
    .registers 2

    .line 3410
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess:I

    return v0
.end method

.method public final getSeaAccessProvinces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3426
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessProvinces:Ljava/util/List;

    return-object v0
.end method

.method public final getSeaAccess_PortProvinces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3442
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessPort:Ljava/util/List;

    return-object v0
.end method

.method public final getSeaAccess_PortProvinces_Size()I
    .registers 2

    .line 3446
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessPort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getSeaAccess_Provinces_Size()I
    .registers 2

    .line 3430
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccessProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getSentMessage(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;
    .registers 3
    .param p1, "i"  # I

    .line 1607
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    return-object v0
.end method

.method public final getSentMessagesSize()I
    .registers 2

    .line 1603
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getSpendingGoodsB()F
    .registers 2

    .line 3359
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsGoods:F

    return v0
.end method

.method public final getSpendingInvestmentsB()F
    .registers 2

    .line 259
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsInvestments:F

    return v0
.end method

.method public final getSpendingResearchB()F
    .registers 2

    .line 235
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsResearch:F

    return v0
.end method

.method public final getStabilityCiv()F
    .registers 2

    .line 1611
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    return v0
.end method

.method public final getTagsCanFormC(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 3482
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTagsCanFormCSize()I
    .registers 2

    .line 3478
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTaxationLvl()F
    .registers 2

    .line 3374
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fTaxationLevel:F

    return v0
.end method

.method public final getTechLevel()F
    .registers 3

    .line 3330
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techLevel:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final getTechLevelINT()I
    .registers 2

    .line 3334
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techLevel:I

    return v0
.end method

.method public final getTruce2(I)I
    .registers 5
    .param p1, "i"  # I

    .line 2512
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2513
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    return v0

    .line 2515
    :cond_1c
    return v0

    .line 2517
    :catch_1d
    move-exception v1

    .line 2518
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method public final getUpdateRegions()Z
    .registers 2

    .line 2876
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateRegions:Z

    return v0
.end method

.method public final getVassalLibertyDesire()F
    .registers 2

    .line 3002
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fVassalLibertyDesire:F

    return v0
.end method

.method public final getVassal_Tribute(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 1512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1513
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    if-ne v1, p1, :cond_26

    .line 1514
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iTribute:I

    return v1

    .line 1512
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1518
    .end local v0  # "i":I
    :cond_29
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iVassalsSize:I

    .line 1521
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvVassal:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Vassal;->PERCENTAGE_OF_INCOME_FOR_LORD_DEFAULT:I

    return v0
.end method

.method public final getWarReparationsGets(I)Lage/of/civilizations2/jakowski/lukasz/WarReparations;
    .registers 3
    .param p1, "i"  # I

    .line 1955
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    return-object v0
.end method

.method public final getWarReparationsGetsSize()I
    .registers 2

    .line 1995
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getWarReparationsGets_TurnsLeft(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 1959
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1960
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    if-ne v1, p1, :cond_26

    .line 1961
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    return v1

    .line 1959
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1965
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public final getWarReparationsPays(I)Lage/of/civilizations2/jakowski/lukasz/WarReparations;
    .registers 3
    .param p1, "i"  # I

    .line 1941
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    return-object v0
.end method

.method public final getWarReparationsPaysSize()I
    .registers 2

    .line 1991
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getWarReparationsPaysTurnsLeft(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 1945
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1946
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    if-ne v1, p1, :cond_26

    .line 1947
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    return v1

    .line 1945
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1951
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public final getWarWeariness()F
    .registers 2

    .line 3705
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warWeariness:F

    return v0
.end method

.method public final haveLoansFromCiv(I)Z
    .registers 4
    .param p1, "fromCivID"  # I

    .line 1889
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1890
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->fromCivID:I

    if-ne v1, p1, :cond_1b

    .line 1891
    const/4 v1, 0x1

    return v1

    .line 1889
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1895
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final isAssimilateOrganized(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 2151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 2152
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    if-ne p1, v1, :cond_1b

    .line 2153
    const/4 v1, 0x1

    return v1

    .line 2151
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2157
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final isAssimilateOrganized_GET(I)Lage/of/civilizations2/jakowski/lukasz/CivTask;
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1236
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    if-ne p1, v1, :cond_24

    .line 1237
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    return-object v1

    .line 1235
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1241
    .end local v0  # "i":I
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAssimilateOrganized_TurnsLeft(I)I
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 2161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 2162
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    if-ne p1, v1, :cond_26

    .line 2163
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iTurnsLeft:I

    return v1

    .line 2161
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2167
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public final isAtWarC()Z
    .registers 2

    .line 3458
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isFestivalOrganized(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1111
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    if-ne p1, v1, :cond_1b

    .line 1112
    const/4 v1, 0x1

    return v1

    .line 1110
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1116
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final isFestivalOrganized_GET(I)Lage/of/civilizations2/jakowski/lukasz/CivTask;
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1121
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    if-ne p1, v1, :cond_24

    .line 1122
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    return-object v1

    .line 1120
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1126
    .end local v0  # "i":I
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isFestivalOrganized_TurnsLeft(I)I
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1131
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    if-ne p1, v1, :cond_26

    .line 1132
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iTurnsLeft:I

    return v1

    .line 1130
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1136
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public final isFriendlyCiv(I)I
    .registers 5
    .param p1, "nCivID"  # I

    .line 3872
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_30

    .line 3873
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iCivID:I

    if-ne v1, p1, :cond_2d

    .line 3874
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iSinceTurnID:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    return v1

    .line 3872
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3878
    .end local v0  # "i":I
    :cond_30
    const/4 v0, -0x1

    return v0
.end method

.method public final isHatedCiv(I)Z
    .registers 5
    .param p1, "nCivID"  # I

    .line 3762
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivsSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 3763
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    if-ne v2, p1, :cond_17

    .line 3764
    return v1

    .line 3762
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3768
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final isInConstruction(ILage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;)I
    .registers 5
    .param p1, "nProvinceID"  # I
    .param p2, "nType"  # Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    .line 1565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 1566
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iProviID:I

    if-ne v1, p1, :cond_34

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    if-ne v1, p2, :cond_34

    .line 1567
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iNumOfTurnsLeft:I

    return v1

    .line 1565
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1571
    .end local v0  # "i":I
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public final isInvestOrganized(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1555
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1556
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    if-ne p1, v1, :cond_1b

    .line 1557
    const/4 v1, 0x1

    return v1

    .line 1555
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1561
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final isInvestOrganized_Devel(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 3563
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 3564
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    if-ne p1, v1, :cond_1b

    .line 3565
    const/4 v1, 0x1

    return v1

    .line 3563
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3569
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final isInvestOrganized_EconomyLeft(I)I
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1463
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    if-ne p1, v1, :cond_26

    .line 1464
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    return v1

    .line 1462
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1468
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public final isInvestOrganized_EconomyLeft_Development(I)F
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1475
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    if-ne p1, v1, :cond_26

    .line 1476
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopmentLeft:F

    return v1

    .line 1474
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1480
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public final isInvestOrganized_GET(I)Lage/of/civilizations2/jakowski/lukasz/CivInvest;
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1453
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    if-ne p1, v1, :cond_24

    .line 1454
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    return-object v1

    .line 1452
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1458
    .end local v0  # "i":I
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isInvestOrganized_GET_Development(I)Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 3583
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 3584
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    if-ne p1, v1, :cond_24

    .line 3585
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    return-object v1

    .line 3583
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3589
    .end local v0  # "i":I
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isInvestOrganized_TurnsLeft(I)I
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1442
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1443
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    if-ne p1, v1, :cond_26

    .line 1444
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->turnsLeft:I

    return v1

    .line 1442
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1448
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public final isInvestOrganized_TurnsLeft_Devel(I)I
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 3573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 3574
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    if-ne p1, v1, :cond_26

    .line 3575
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->turnsLeft:I

    return v1

    .line 3573
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3579
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public final isInvested(I)Z
    .registers 4
    .param p1, "id"  # I

    .line 1279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1280
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1f

    if-ne p1, v1, :cond_1b

    .line 1281
    const/4 v1, 0x1

    return v1

    .line 1279
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1286
    .end local v0  # "i":I
    :cond_1e
    goto :goto_20

    .line 1284
    :catch_1f
    move-exception v0

    .line 1288
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public final isInvestedDev(I)Z
    .registers 4
    .param p1, "id"  # I

    .line 1293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1294
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1f

    if-ne p1, v1, :cond_1b

    .line 1295
    const/4 v1, 0x1

    return v1

    .line 1293
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1300
    .end local v0  # "i":I
    :cond_1e
    goto :goto_20

    .line 1298
    :catch_1f
    move-exception v0

    .line 1302
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public final isMovingUnitsFromProvID(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 3092
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 3093
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v1

    if-ne v1, p1, :cond_13

    .line 3094
    const/4 v1, 0x1

    return v1

    .line 3092
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3098
    .end local v0  # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final isMovingUnitsToProvID(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 3102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 3103
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v1

    if-ne v1, p1, :cond_13

    .line 3104
    const/4 v1, 0x1

    return v1

    .line 3102
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3108
    .end local v0  # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final isMovingUnitsToProvID_Num(I)I
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 3112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 3113
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v1

    if-ne v1, p1, :cond_1a

    .line 3114
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getNumberOfUnits()I

    move-result v1

    return v1

    .line 3112
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3118
    .end local v0  # "i":I
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public final isPlundred(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1045
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits_PlunderSize:I

    if-ge v0, v1, :cond_18

    .line 1046
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getFromProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 1047
    const/4 v1, 0x1

    return v1

    .line 1045
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1051
    .end local v0  # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final isRAIP(I)I
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1765
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    if-ge v0, v1, :cond_17

    .line 1766
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 1767
    return v0

    .line 1765
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1771
    .end local v0  # "i":I
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public final isRegroupingArmy_ToProvID(I)I
    .registers 4
    .param p1, "toProvinceID"  # I

    .line 3169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRegroupArmySize:I

    if-ge v0, v1, :cond_29

    .line 3170
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getToProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_26

    .line 3171
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getNumOfUnits()I

    move-result v1

    return v1

    .line 3169
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3175
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public isRival(I)Z
    .registers 4
    .param p1, "civID"  # I

    .line 4114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civRivals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 4115
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civRivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Rival;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Rival;->iCivID:I

    if-ne v1, p1, :cond_1b

    .line 4116
    const/4 v1, 0x1

    return v1

    .line 4114
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4120
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final loadFlag()Z
    .registers 11

    .line 2761
    const-string v0, "game/flags/"

    const-string v1, "game/flagsH/"

    const-string v2, "game/flagsXH/"

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    .line 2763
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v6, "game/flagsXH/ran.png"

    const/4 v7, 0x1

    if-lez v4, :cond_85

    .line 2765
    :try_start_18
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2766
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    .line 2768
    .local v0, "tGenerateID":I
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2770
    .local v1, "tempD":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    array-length v3, v1

    if-ge v2, v3, :cond_4d

    .line 2771
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2770
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 2774
    .end local v2  # "i":I
    :cond_4d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->CIV_ID_SMALL:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    iput-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    .line 2775
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->iID:I

    .line 2777
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2778
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z
    :try_end_7f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_18 .. :try_end_7f} :catch_80

    .line 2781
    .end local v0  # "tGenerateID":I
    .end local v1  # "tempD":[Ljava/lang/String;
    goto :goto_84

    .line 2779
    :catch_80
    move-exception v0

    .line 2780
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2782
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_84
    return v7

    .line 2786
    :cond_85
    :try_start_85
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v4, :cond_8c

    .line 2787
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->disposeFlag()V
    :try_end_8c
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_8c} :catch_8d

    .line 2792
    :cond_8c
    goto :goto_8e

    .line 2789
    :catch_8d
    move-exception v4

    .line 2796
    :goto_8e
    :try_start_8e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z
    :try_end_9a
    .catch Ljava/lang/RuntimeException; {:try_start_8e .. :try_end_9a} :catch_523
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9a} :catch_521

    const-string v5, ".png"

    if-eqz v4, :cond_d7

    .line 2797
    :try_start_9e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/flagsXH/rb"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v4, v3

    rem-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2798
    return v7

    .line 2801
    :cond_d7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_129

    .line 2802
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_520

    .line 2804
    :cond_129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_187

    .line 2805
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_520

    .line 2807
    :cond_187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1d9

    .line 2808
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v1, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_520

    .line 2810
    :cond_1d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_237

    .line 2811
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v1, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_520

    .line 2813
    :cond_237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_28b

    .line 2814
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v0, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2815
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    goto/16 :goto_520

    .line 2817
    :cond_28b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_2eb

    .line 2818
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v0, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2819
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    goto/16 :goto_520

    .line 2821
    :cond_2eb
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0
    :try_end_2ef
    .catch Ljava/lang/RuntimeException; {:try_start_9e .. :try_end_2ef} :catch_523
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_2ef} :catch_521

    const-string v1, "_FLH.png"

    const-string v2, "/"

    const-string v4, "game/civilizations_editor/"

    if-eqz v0, :cond_379

    :try_start_2f7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_379

    .line 2822
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_520

    .line 2824
    :cond_379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_3fb

    .line 2825
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_520

    .line 2827
    :cond_3fb
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0
    :try_end_3ff
    .catch Ljava/lang/RuntimeException; {:try_start_2f7 .. :try_end_3ff} :catch_523
    .catch Ljava/lang/Exception; {:try_start_2f7 .. :try_end_3ff} :catch_521

    const-string v1, "_FL.png"

    if-eqz v0, :cond_487

    :try_start_403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_487

    .line 2828
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2829
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    goto/16 :goto_520

    .line 2831
    :cond_487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_50a

    .line 2832
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2833
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    goto :goto_520

    .line 2836
    :cond_50a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2837
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z
    :try_end_520
    .catch Ljava/lang/RuntimeException; {:try_start_403 .. :try_end_520} :catch_523
    .catch Ljava/lang/Exception; {:try_start_403 .. :try_end_520} :catch_521

    .line 2841
    :goto_520
    goto :goto_536

    .line 2842
    :catch_521
    move-exception v0

    goto :goto_537

    .line 2839
    :catch_523
    move-exception v0

    .line 2840
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_524
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_536
    .catch Ljava/lang/Exception; {:try_start_524 .. :try_end_536} :catch_521

    .line 2849
    .end local v0  # "ex":Ljava/lang/RuntimeException;
    :goto_536
    goto :goto_55e

    .line 2843
    .local v0, "ex":Ljava/lang/Exception;
    :goto_537
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilization$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFlagTask_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;Ljava/lang/String;)V

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    .line 2851
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_55e
    return v7
.end method

.method public final loadFlag_Task()V
    .registers 11

    .line 2671
    const-string v0, "game/flags/"

    const-string v1, "game/flagsH/"

    const-string v2, "game/flagsXH/"

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    .line 2673
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v6, "game/flagsXH/ran.png"

    const/4 v7, 0x1

    if-lez v4, :cond_85

    .line 2675
    :try_start_18
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2676
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    .line 2678
    .local v0, "tGenerateID":I
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2680
    .local v1, "tempD":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    array-length v3, v1

    if-ge v2, v3, :cond_4d

    .line 2681
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2680
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 2684
    .end local v2  # "i":I
    :cond_4d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->CIV_ID_SMALL:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    iput-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    .line 2685
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->iID:I

    .line 2687
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2688
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z
    :try_end_7f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_18 .. :try_end_7f} :catch_80

    .line 2691
    .end local v0  # "tGenerateID":I
    .end local v1  # "tempD":[Ljava/lang/String;
    goto :goto_84

    .line 2689
    :catch_80
    move-exception v0

    .line 2690
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2692
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_84
    return-void

    .line 2696
    :cond_85
    :try_start_85
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v4, :cond_8c

    .line 2697
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->disposeFlag()V
    :try_end_8c
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_8c} :catch_8d

    .line 2702
    :cond_8c
    goto :goto_8e

    .line 2699
    :catch_8d
    move-exception v4

    .line 2704
    :goto_8e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->LOAD_LORD_VASSAL_SPECIAL_FLAG:Z

    if-eqz v4, :cond_a5

    .line 2705
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v5

    if-eq v4, v5, :cond_a5

    .line 2706
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag_Vassal()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 2707
    return-void

    .line 2715
    :cond_a5
    :try_start_a5
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z
    :try_end_b1
    .catch Ljava/lang/RuntimeException; {:try_start_a5 .. :try_end_b1} :catch_42e
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b1} :catch_42c

    const-string v5, ".png"

    if-eqz v4, :cond_ee

    .line 2716
    :try_start_b5
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/flagsXH/rb"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v4, v3

    rem-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2717
    return-void

    .line 2720
    :cond_ee
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_140

    .line 2721
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_42b

    .line 2723
    :cond_140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_19e

    .line 2724
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_42b

    .line 2726
    :cond_19e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1f0

    .line 2727
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v1, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_42b

    .line 2729
    :cond_1f0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_24e

    .line 2730
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v1, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_42b

    .line 2732
    :cond_24e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a2

    .line 2733
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v0, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2734
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    goto/16 :goto_42b

    .line 2736
    :cond_2a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_302

    .line 2737
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v0, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2738
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    goto/16 :goto_42b

    .line 2740
    :cond_302
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0
    :try_end_306
    .catch Ljava/lang/RuntimeException; {:try_start_b5 .. :try_end_306} :catch_42e
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_306} :catch_42c

    const-string v1, "_FL.png"

    const-string v2, "/"

    const-string v4, "game/civilizations_editor/"

    if-eqz v0, :cond_392

    :try_start_30e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_392

    .line 2741
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2742
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    goto/16 :goto_42b

    .line 2744
    :cond_392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_415

    .line 2745
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2746
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    goto :goto_42b

    .line 2749
    :cond_415
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2750
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z
    :try_end_42b
    .catch Ljava/lang/RuntimeException; {:try_start_30e .. :try_end_42b} :catch_42e
    .catch Ljava/lang/Exception; {:try_start_30e .. :try_end_42b} :catch_42c

    .line 2754
    :goto_42b
    goto :goto_441

    .line 2755
    :catch_42c
    move-exception v0

    goto :goto_441

    .line 2752
    :catch_42e
    move-exception v0

    .line 2753
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_42f
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_441
    .catch Ljava/lang/Exception; {:try_start_42f .. :try_end_441} :catch_42c

    .line 2758
    .end local v0  # "ex":Ljava/lang/RuntimeException;
    :goto_441
    return-void
.end method

.method public final loadFlag_Vassal()Z
    .registers 11

    .line 2632
    const-string v0, "game/flags/"

    const-string v1, "game/flagsH/"

    const-string v2, "game/flagsXH/"

    const-string v3, ".png"

    const-string v4, "-"

    const/4 v5, 0x0

    :try_start_b
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2633
    .local v6, "realTagLeft":Ljava/lang/String;
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2635
    .local v7, "realTagRight":Ljava/lang/String;
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    iget-boolean v8, v8, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v8, :cond_38

    .line 2636
    return v5

    .line 2639
    :cond_38
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_9b

    .line 2640
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_67

    .line 2641
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->disposeFlag()V

    .line 2643
    :cond_67
    iput-boolean v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    .line 2644
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v3, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2645
    return v9

    .line 2647
    :cond_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 2648
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_c9

    .line 2649
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->disposeFlag()V

    .line 2651
    :cond_c9
    iput-boolean v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    .line 2652
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v1, v3, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 2653
    return v9

    .line 2655
    :cond_fd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 2656
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v1, :cond_12b

    .line 2657
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->disposeFlag()V

    .line 2659
    :cond_12b
    iput-boolean v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    .line 2660
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v0, v3, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15e} :catch_160

    .line 2661
    return v9

    .line 2665
    .end local v6  # "realTagLeft":Ljava/lang/String;
    .end local v7  # "realTagRight":Ljava/lang/String;
    :cond_15f
    goto :goto_161

    .line 2663
    :catch_160
    move-exception v0

    .line 2667
    :goto_161
    return v5
.end method

.method public final messageWasSent(I)Z
    .registers 5
    .param p1, "nToCivID"  # I

    .line 3934
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1e

    .line 3935
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iToCivID:I

    if-ne v2, p1, :cond_1b

    .line 3936
    return v1

    .line 3934
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3940
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final messageWasSent(ILage/of/civilizations2/jakowski/lukasz/Messages/MessageType;)Z
    .registers 6
    .param p1, "nToCivID"  # I
    .param p2, "nMessageType"  # Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    .line 3924
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_2c

    .line 3925
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iToCivID:I

    if-ne v2, p1, :cond_29

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v2, p2, :cond_29

    .line 3926
    return v1

    .line 3924
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3930
    .end local v0  # "i":I
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public final messageWasSent(Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;)Z
    .registers 5
    .param p1, "nMessageType"  # Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    .line 3944
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1e

    .line 3945
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v2, p1, :cond_1b

    .line 3946
    return v1

    .line 3944
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3950
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final migratesFromProvinceID(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 996
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    if-ge v0, v1, :cond_18

    .line 997
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 998
    const/4 v1, 0x1

    return v1

    .line 996
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1002
    .end local v0  # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final moveRegroupArmy()V
    .registers 12

    .line 2046
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRegroupArmySize:I

    if-ge v0, v1, :cond_182

    .line 2048
    :try_start_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getToProvinceID()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->canBeUsedInPath(IIZI)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2049
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    .line 2050
    add-int/lit8 v0, v0, -0x1

    .line 2051
    goto/16 :goto_17e

    .line 2054
    :cond_35
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->continueMovingArmy(I)Z

    move-result v1

    if-nez v1, :cond_50

    .line 2055
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    .line 2056
    add-int/lit8 v0, v0, -0x1

    .line 2057
    goto/16 :goto_17e

    .line 2060
    :cond_50
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getObsolate()I

    move-result v1

    if-gez v1, :cond_67

    .line 2061
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    .line 2062
    add-int/lit8 v0, v0, -0x1

    .line 2063
    goto/16 :goto_17e

    .line 2065
    :cond_67
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->updateObsolate()V

    .line 2068
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getFromProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getNumOfUnits()I

    move-result v2

    if-gt v1, v2, :cond_ee

    .line 2069
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getFromProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v1

    if-gtz v1, :cond_c5

    .line 2070
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    .line 2071
    add-int/lit8 v0, v0, -0x1

    .line 2072
    goto/16 :goto_17e

    .line 2075
    :cond_c5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getFromProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->setNumOfUnits(I)V

    .line 2081
    :cond_ee
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getFromProvinceID()I

    move-result v5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v6

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getNumOfUnits()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveArmyAction(IIIIZZ)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 2082
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRoute(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->setFromProvinceID(I)V

    .line 2083
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->removeRoute(I)V

    .line 2084
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->currentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2086
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRouteSize()I

    move-result v1

    if-nez v1, :cond_16f

    .line 2087
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V
    :try_end_16c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_16c} :catch_177
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_16c} :catch_170

    .line 2088
    add-int/lit8 v0, v0, -0x1

    .line 2089
    goto :goto_17e

    .line 2100
    :cond_16f
    goto :goto_17e

    .line 2096
    :catch_170
    move-exception v1

    .line 2097
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    .line 2098
    add-int/lit8 v0, v0, -0x1

    .line 2099
    goto :goto_17e

    .line 2092
    .end local v1  # "ex":Ljava/lang/NullPointerException;
    :catch_177
    move-exception v1

    .line 2093
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    .line 2094
    add-int/lit8 v0, v0, -0x1

    .line 2095
    nop

    .line 2046
    .end local v1  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_17e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2102
    .end local v0  # "i":I
    :cond_182
    return-void
.end method

.method public final moveUnitsSize()I
    .registers 2

    .line 3149
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize:I

    return v0
.end method

.method public final newMigrate(IIZ)V
    .registers 12
    .param p1, "fromProvinceID"  # I
    .param p2, "toProvinceID"  # I
    .param p3, "buildLine"  # Z

    .line 971
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    if-ge v0, v1, :cond_2e

    .line 972
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v1

    if-ne v1, p1, :cond_2b

    .line 973
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeMigrate(I)V

    .line 974
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovementPoints(I)V

    .line 975
    goto :goto_2e

    .line 971
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 979
    .end local v0  # "i":I
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v4

    const/4 v6, 0x1

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;-><init>(IIIZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    .line 982
    return-void
.end method

.method public final newMove(IIIZ)V
    .registers 7
    .param p1, "fromProvinceID"  # I
    .param p2, "toProvinceID"  # I
    .param p3, "nNumOfUnits"  # I
    .param p4, "buildLine"  # Z

    .line 949
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    invoke-direct {v1, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;-><init>(IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize:I

    .line 952
    return-void
.end method

.method public final newPlunder(II)V
    .registers 5
    .param p1, "fromProvinceID"  # I
    .param p2, "nNumOfUnits"  # I

    .line 1009
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits_PlunderSize:I

    if-ge v0, v1, :cond_22

    .line 1010
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getFromProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_1f

    .line 1011
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->setNumOfUnits(I)V

    .line 1012
    return-void

    .line 1009
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1016
    .end local v0  # "i":I
    :cond_22
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    invoke-direct {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits_PlunderSize:I

    .line 1019
    return-void
.end method

.method public final recruitArmy(II)Z
    .registers 11
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 2441
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_53

    .line 2443
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v0

    if-lez v0, :cond_52

    .line 2444
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v0

    if-le p2, v0, :cond_53

    .line 2445
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result p2

    goto :goto_53

    .line 2449
    :cond_52
    return v2

    .line 2454
    :cond_53
    :goto_53
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->gMARY(I)I

    move-result v0

    if-lt p2, v0, :cond_61

    .line 2455
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->gMARY(I)I

    move-result p2

    .line 2458
    :cond_61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_62
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    const/4 v3, 0x1

    if-ge v0, v1, :cond_12a

    .line 2459
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_126

    .line 2460
    if-nez p2, :cond_ea

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v1

    if-lez v1, :cond_ea

    .line 2461
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovementPoints(I)V

    .line 2462
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v2

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->gCARR(I)I

    move-result v6

    mul-int v2, v2, v6

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 2463
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRecruitArmy(I)V

    .line 2464
    return v3

    .line 2467
    :cond_ea
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v1

    sub-int/2addr v1, p2

    .line 2468
    .local v1, "tDiff":I
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->setArmy(I)V

    .line 2470
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v4

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->gCARR(I)I

    move-result v6

    mul-int v6, v6, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 2472
    .end local v1  # "tDiff":I
    return v3

    .line 2458
    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_62

    .line 2477
    .end local v0  # "i":I
    :cond_12a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    if-ge v0, v1, :cond_151

    .line 2479
    return v2

    .line 2483
    :cond_151
    int-to-long v0, p2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v4

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->gCARR(I)I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17f

    .line 2484
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->gCARR(I)I

    move-result v0

    div-int p2, v1, v0

    .line 2487
    :cond_17f
    if-gtz p2, :cond_182

    .line 2488
    return v2

    .line 2491
    :cond_182
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovementPoints(I)V

    .line 2492
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->gCARR(I)I

    move-result v4

    mul-int v4, v4, p2

    int-to-long v4, v4

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 2494
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-direct {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2495
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    .line 2497
    return v3
.end method

.method public final recruitArmy_AI(II)Z
    .registers 5
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 1581
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    if-ge v0, v1, :cond_2b

    .line 1582
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_28

    .line 1583
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy(II)Z

    move-result v1

    return v1

    .line 1581
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1587
    .end local v0  # "i":I
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy(II)Z

    move-result v0

    return v0
.end method

.method public final removeArmyInAnotherProvinP(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 2405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 2406
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProviP(I)I

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 2407
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2408
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->armyInAnotherProvinceSize:I

    .line 2409
    return-void

    .line 2405
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2412
    .end local v0  # "i":I
    :cond_1e
    return-void
.end method

.method public final removeAssimilate(I)V
    .registers 3
    .param p1, "i"  # I

    .line 1161
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1162
    return-void
.end method

.method public final removeAssimilate_ProvinceID(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1166
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    if-ne p1, v1, :cond_21

    .line 1167
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1168
    goto :goto_24

    .line 1165
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1171
    .end local v0  # "i":I
    :cond_24
    :goto_24
    return-void
.end method

.method public final removeEventToRun(I)V
    .registers 3
    .param p1, "i"  # I

    .line 1779
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1780
    return-void
.end method

.method public final removeFestival(I)V
    .registers 3
    .param p1, "i"  # I

    .line 1072
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1073
    return-void
.end method

.method public final removeFestival_ProvinceID(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1076
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1077
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    if-ne p1, v1, :cond_21

    .line 1078
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1079
    goto :goto_24

    .line 1076
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1082
    .end local v0  # "i":I
    :cond_24
    :goto_24
    return-void
.end method

.method public final removeFriendlyCiv(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 3886
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_25

    .line 3887
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iCivID:I

    if-ne v1, p1, :cond_22

    .line 3888
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3889
    return-void

    .line 3886
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3892
    .end local v0  # "i":I
    :cond_25
    return-void
.end method

.method public final removeHatedCiv(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 3780
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_44

    .line 3781
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    if-ne v1, p1, :cond_41

    .line 3782
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeHatedCiv_BY(I)V

    .line 3783
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3784
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iHatedCivsSize:I

    .line 3785
    return-void

    .line 3780
    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3788
    .end local v0  # "i":I
    :cond_44
    return-void
.end method

.method public final removeHatedCiv_BY(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 3812
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivs_BySize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_2d

    .line 3813
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2a

    .line 3814
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3815
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iHatedCivs_BySize:I

    .line 3816
    return-void

    .line 3812
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3819
    .end local v0  # "i":I
    :cond_2d
    return-void
.end method

.method public final removeInvest(I)V
    .registers 3
    .param p1, "i"  # I

    .line 2175
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2176
    return-void
.end method

.method public final removeInvest_Development(I)V
    .registers 3
    .param p1, "i"  # I

    .line 1398
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1399
    return-void
.end method

.method public final removeInvest_ProvinceID(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 2179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 2180
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    if-ne p1, v1, :cond_21

    .line 2181
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2182
    goto :goto_24

    .line 2179
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2185
    .end local v0  # "i":I
    :cond_24
    :goto_24
    return-void
.end method

.method public final removeInvest_ProvinceID_Development(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 1402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1403
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    if-ne p1, v1, :cond_21

    .line 1404
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1405
    goto :goto_24

    .line 1402
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1408
    .end local v0  # "i":I
    :cond_24
    :goto_24
    return-void
.end method

.method public final removeLoan(I)V
    .registers 3
    .param p1, "i"  # I

    .line 1846
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1847
    return-void
.end method

.method public final removeLoanFromCiv(I)V
    .registers 3
    .param p1, "i"  # I

    .line 1913
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1914
    return-void
.end method

.method public final removeMigrate(I)V
    .registers 3
    .param p1, "i"  # I

    .line 985
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 987
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    .line 988
    return-void
.end method

.method public final removeMove(I)V
    .registers 3
    .param p1, "i"  # I

    .line 1357
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1359
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize:I

    .line 1360
    return-void
.end method

.method public final removePlunder(I)V
    .registers 3
    .param p1, "i"  # I

    .line 1022
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1024
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits_PlunderSize:I

    .line 1025
    return-void
.end method

.method public final removePlunder_ProvinceID(I)V
    .registers 7
    .param p1, "nProvinceID"  # I

    .line 1028
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits_PlunderSize:I

    if-ge v0, v1, :cond_64

    .line 1029
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getFromProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_61

    .line 1030
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getFromProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getFromProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getNumOfUnits()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V

    .line 1032
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1033
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsPlunder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnits_PlunderSize:I

    .line 1034
    return-void

    .line 1028
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1037
    .end local v0  # "i":I
    :cond_64
    return-void
.end method

.method public final removeProv(I)V
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 2203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    if-ge v0, v1, :cond_24

    .line 2204
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 2205
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2206
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfProvinces:I

    .line 2207
    goto :goto_24

    .line 2203
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2211
    .end local v0  # "i":I
    :cond_24
    :goto_24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 2213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 2214
    return-void
.end method

.method public final removeRecruitArmy(I)V
    .registers 3
    .param p1, "i"  # I

    .line 1591
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1592
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    .line 1593
    return-void
.end method

.method public final removeRegroupArmy(I)V
    .registers 4
    .param p1, "i"  # I

    .line 2105
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2106
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->currentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2108
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRegroupArmySize:I

    .line 2109
    return-void
.end method

.method public final removeSentMessage(I)V
    .registers 3
    .param p1, "i"  # I

    .line 3920
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3921
    return-void
.end method

.method public final removeSentMessages(Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;)V
    .registers 4
    .param p1, "nMessageType"  # Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    .line 3912
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_24

    .line 3913
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v1, p1, :cond_21

    .line 3914
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3912
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3917
    .end local v0  # "i":I
    :cond_24
    return-void
.end method

.method public final removeTagsCanForm(I)V
    .registers 3
    .param p1, "i"  # I

    .line 1683
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1684
    return-void
.end method

.method public final removeTagsCanForm(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 1687
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1688
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1689
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->tagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1690
    return-void

    .line 1687
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1693
    .end local v0  # "i":I
    :cond_20
    return-void
.end method

.method public final removeVassalN(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 1502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 1503
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    if-ne v1, p1, :cond_2b

    .line 1504
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1505
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iVassalsSize:I

    .line 1506
    return-void

    .line 1502
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1509
    .end local v0  # "i":I
    :cond_2e
    return-void
.end method

.method public final runAssimilates()V
    .registers 12

    .line 1174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31b

    .line 1175
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_59

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_4e

    goto :goto_59

    .line 1229
    :cond_4e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_317

    .line 1176
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_59
    :goto_59
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iTurnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iTurnsLeft:I

    .line 1180
    const/4 v1, 0x0

    .line 1181
    .local v1, "popToAssimilate":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1183
    .local v2, "ownerPop":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_8b
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v4

    if-ge v3, v4, :cond_f7

    .line 1184
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    if-eq v4, v5, :cond_f4

    .line 1185
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 1183
    :cond_f4
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 1191
    .end local v3  # "j":I
    :cond_f7
    const/4 v3, 0x0

    .line 1193
    .local v3, "assimilatedPop":I
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "tCurrentPopChange":I
    :goto_115
    if-ltz v4, :cond_260

    .line 1194
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    if-eq v6, v7, :cond_25c

    .line 1195
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->BASE_ASSIMILATION_RATE:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_SCALING_BASE:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_SCALING_RANDOM_10000:I

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x461c4000  # 10000.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    int-to-float v8, v2

    add-int v9, v1, v2

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v7, v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    .line 1197
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v8

    mul-float v7, v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    .line 1198
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_DEVELOPMENT_DIVIDER:F

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000  # 1.0f

    sub-float v8, v9, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_INSTABILITY_PENALTY:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1202
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getStabilityCiv()F

    move-result v8

    sub-float v8, v9, v8

    mul-float v7, v7, v8

    sub-float/2addr v9, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_REVOLUTION_RISK_PENALTY:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v8

    mul-float v7, v7, v8

    sub-float/2addr v9, v7

    mul-float v6, v6, v9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_FINAL_MULTIPLIER:F

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ASSIMILATION_SPEED_MODIFIER:F

    mul-float v6, v6, v7

    .line 1205
    .local v6, "tPerc":F
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v6

    float-to-int v5, v7

    .line 1206
    if-nez v5, :cond_20d

    .line 1207
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 1210
    :cond_20d
    add-int/2addr v3, v5

    .line 1212
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 1193
    .end local v6  # "tPerc":F
    :cond_25c
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_115

    .line 1216
    .end local v4  # "j":I
    .end local v5  # "tCurrentPopChange":I
    :cond_260
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 1218
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAssimilate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATE_HAPPINESS_CHANGE_PER_TURN:F

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    .line 1220
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iTurnsLeft:I

    if-gtz v4, :cond_316

    .line 1221
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v4

    if-eqz v4, :cond_30c

    .line 1222
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_AssimilationEnd;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-direct {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_AssimilationEnd;-><init>(II)V

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1225
    :cond_30c
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    .end local v0  # "i":I
    .local v5, "i":I
    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v5

    .line 1227
    .end local v1  # "popToAssimilate":I
    .end local v2  # "ownerPop":I
    .end local v3  # "assimilatedPop":I
    .end local v5  # "i":I
    .restart local v0  # "i":I
    :cond_316
    move v2, v0

    .line 1174
    .end local v0  # "i":I
    .local v2, "i":I
    :goto_317
    add-int/lit8 v0, v2, 0x1

    .end local v2  # "i":I
    .restart local v0  # "i":I
    goto/16 :goto_1

    .line 1232
    .end local v0  # "i":I
    :cond_31b
    return-void
.end method

.method public final runConstructions()V
    .registers 5

    .line 1363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_95

    .line 1364
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iProviID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_58

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iProviID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_58

    .line 1365
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    goto :goto_91

    .line 1368
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_58
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iNumOfTurnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iNumOfTurnsLeft:I

    .line 1370
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iNumOfTurnsLeft:I

    if-gtz v1, :cond_91

    .line 1371
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->onConstructedRun(I)V

    .line 1372
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .restart local v2  # "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 1363
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_91
    :goto_91
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1376
    .end local v0  # "i":I
    :cond_95
    return-void
.end method

.method public final runFestivals()V
    .registers 7

    .line 1085
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_154

    .line 1086
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_5a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_4e

    goto :goto_5a

    .line 1104
    :cond_4e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    goto/16 :goto_150

    .line 1087
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iTurnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iTurnsLeft:I

    .line 1089
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Festivals/Festival;->festivalHappinessPerTurn(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    .line 1091
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_a7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_106

    .line 1092
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

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

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    .line 1091
    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    .line 1095
    .end local v1  # "j":I
    :cond_106
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iTurnsLeft:I

    if-gtz v1, :cond_150

    .line 1096
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_146

    .line 1097
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_FestivalIsOver;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivTask;->iProvinceID:I

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_FestivalIsOver;-><init>(II)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1100
    :cond_146
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .restart local v2  # "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 1085
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_150
    :goto_150
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1107
    .end local v0  # "i":I
    :cond_154
    return-void
.end method

.method public final runInvests()V
    .registers 7

    .line 1526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_137

    .line 1527
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_59

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_4e

    goto :goto_59

    .line 1549
    :cond_4e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_133

    .line 1528
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_59
    :goto_59
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->turnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->turnsLeft:I

    .line 1530
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyPerTurn:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1532
    .local v1, "ecoToAdd":I
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->turnsLeft:I

    if-nez v2, :cond_9f

    .line 1533
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    .line 1536
    :cond_9f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEco(I)V

    .line 1538
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    sub-int/2addr v3, v1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    .line 1540
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->turnsLeft:I

    if-lez v2, :cond_f6

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    if-gtz v2, :cond_132

    .line 1541
    :cond_f6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v2

    if-eqz v2, :cond_128

    .line 1542
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Messages/Invest/Message_InvestDone;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->provinceID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/Invest/Message_InvestDone;-><init>(II)V

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1545
    :cond_128
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    .end local v0  # "i":I
    .local v3, "i":I
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v3

    .line 1547
    .end local v1  # "ecoToAdd":I
    .end local v3  # "i":I
    .restart local v0  # "i":I
    :cond_132
    move v2, v0

    .line 1526
    .end local v0  # "i":I
    .restart local v2  # "i":I
    :goto_133
    add-int/lit8 v0, v2, 0x1

    .end local v2  # "i":I
    .restart local v0  # "i":I
    goto/16 :goto_1

    .line 1552
    .end local v0  # "i":I
    :cond_137
    return-void
.end method

.method public final runInvests_Development()V
    .registers 7

    .line 1411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13a

    .line 1412
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_59

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_4e

    goto :goto_59

    .line 1434
    :cond_4e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_136

    .line 1413
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_59
    :goto_59
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->turnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->turnsLeft:I

    .line 1415
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopmentPerTurn:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopmentLeft:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1417
    .local v1, "ecoToAdd":F
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->turnsLeft:I

    if-nez v2, :cond_9f

    .line 1418
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopmentLeft:F

    .line 1421
    :cond_9f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDevLvl(F)V

    .line 1423
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopmentLeft:F

    sub-float/2addr v3, v1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopmentLeft:F

    .line 1425
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->turnsLeft:I

    if-lez v2, :cond_f9

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopmentLeft:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_135

    .line 1426
    :cond_f9
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 1427
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Messages/Invest/Message_InvestDone_Development;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->provinceID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/Invest/Message_InvestDone_Development;-><init>(II)V

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1430
    :cond_12b
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    .end local v0  # "i":I
    .local v3, "i":I
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v3

    .line 1432
    .end local v1  # "ecoToAdd":F
    .end local v3  # "i":I
    .restart local v0  # "i":I
    :cond_135
    move v2, v0

    .line 1411
    .end local v0  # "i":I
    .restart local v2  # "i":I
    :goto_136
    add-int/lit8 v0, v2, 0x1

    .end local v2  # "i":I
    .restart local v0  # "i":I
    goto/16 :goto_1

    .line 1437
    .end local v0  # "i":I
    :cond_13a
    return-void
.end method

.method public final runNextEvent2()V
    .registers 10

    .line 1712
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 1713
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRunSize()I

    move-result v0

    if-lez v0, :cond_10c

    .line 1714
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Event;->EVENT_ID:I

    .line 1715
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeEventToRun(I)V

    .line 1716
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Event()V

    goto/16 :goto_10c

    .line 1720
    :cond_1d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRunSize()I

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_10d

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_23
    if-ltz v0, :cond_10c

    .line 1726
    const/4 v2, 0x0

    .line 1727
    .local v2, "decistionTaken":I
    const/4 v3, 0x0

    .line 1729
    .local v3, "tempAIChanceTotal":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_28
    :try_start_28
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_52

    .line 1730
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->iAIChance:I

    add-int/2addr v3, v5

    .line 1729
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1733
    .end local v4  # "j":I
    :cond_52
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1735
    .local v4, "randNum":I
    const/4 v5, 0x0

    .local v5, "j":I
    const/4 v6, 0x0

    .local v6, "countChance":I
    :goto_5a
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_9f

    .line 1736
    if-lt v4, v6, :cond_87

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->iAIChance:I

    add-int/2addr v7, v6

    if-ge v4, v7, :cond_87

    .line 1737
    move v2, v5

    .line 1738
    goto :goto_9f

    .line 1741
    :cond_87
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->iAIChance:I

    add-int/2addr v6, v7

    .line 1735
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 1745
    .end local v5  # "j":I
    .end local v6  # "countChance":I
    :cond_9f
    :goto_9f
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v5

    if-ltz v5, :cond_eb

    .line 1746
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addEventDecisionTaken(Ljava/lang/String;)V

    .line 1750
    :cond_eb
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->executeDecision()V

    .line 1752
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeEventToRun(I)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_103} :catch_104

    .line 1755
    .end local v2  # "decistionTaken":I
    .end local v3  # "tempAIChanceTotal":I
    .end local v4  # "randNum":I
    goto :goto_108

    .line 1753
    :catch_104
    move-exception v2

    .line 1754
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_105
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_108} :catch_10d

    .line 1720
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_108
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_23

    .line 1760
    .end local v0  # "i":I
    :cond_10c
    :goto_10c
    goto :goto_10e

    .line 1758
    :catch_10d
    move-exception v0

    .line 1761
    :goto_10e
    return-void
.end method

.method public final runRecruitArmyNT()V
    .registers 11

    .line 1307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_1b0

    if-ge v0, v1, :cond_8c

    .line 1309
    :try_start_5
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_43

    .line 1310
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->recruitArmy(III)V

    goto :goto_86

    .line 1314
    :cond_43
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->gCARR(I)I

    move-result v5

    mul-int v4, v4, v5

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvArmyRecruit:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->RECRUIT_ARMY_PROVINCE_LOST_RETURN_PERC_GOLD:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_86} :catch_87

    .line 1318
    :goto_86
    goto :goto_88

    .line 1316
    :catch_87
    move-exception v1

    .line 1307
    :goto_88
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1321
    .end local v0  # "i":I
    :cond_8c
    :try_start_8c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_1ac

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->RECRUIT_AND_COUNTERATTACK:Z

    if-eqz v0, :cond_1ac

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    .local v0, "counterProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9c
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmySize:I

    if-ge v1, v2, :cond_1ac

    .line 1325
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_a1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_152

    .line 1326
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    if-eq v3, v4, :cond_14e

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    .line 1327
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    if-ne v3, v4, :cond_14e

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1328
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 1330
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    :cond_14e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a1

    .line 1334
    .end local v2  # "a":I
    :cond_152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a5

    .line 1335
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v2, v3

    .line 1336
    .local v2, "perMove":I
    const/4 v3, 0x0

    .line 1338
    .local v3, "moved":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "a":I
    :goto_170
    if-ltz v4, :cond_1a5

    .line 1339
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v4, :cond_19d

    const/4 v8, 0x0

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_19e

    :cond_19d
    move v8, v2

    :goto_19e
    invoke-virtual {p0, v6, v7, v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->newMove(IIIZ)V

    .line 1340
    add-int/2addr v3, v2

    .line 1338
    add-int/lit8 v4, v4, -0x1

    goto :goto_170

    .line 1344
    .end local v2  # "perMove":I
    .end local v3  # "moved":I
    .end local v4  # "a":I
    :cond_1a5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1324
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9c

    .line 1349
    .end local v0  # "counterProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1  # "i":I
    :cond_1ac
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->clearRecruitArmy()V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_1af} :catch_1b0

    .line 1352
    goto :goto_1b4

    .line 1350
    :catch_1b0
    move-exception v0

    .line 1351
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1353
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1b4
    return-void
.end method

.method public final runWarReparations()V
    .registers 5

    .line 1969
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_48

    .line 1970
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    if-gtz v2, :cond_45

    .line 1971
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1972
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/War/Reparations/Message_WarReparationsRepaid_Green;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Messages/War/Reparations/Message_WarReparationsRepaid_Green;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1975
    :cond_3e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warReparationsPay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1969
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1979
    .end local v0  # "i":I
    :cond_48
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0  # "i":I
    :goto_52
    if-ltz v0, :cond_90

    .line 1980
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    if-gtz v2, :cond_8d

    .line 1981
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1982
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/War/Reparations/Message_WarReparationsRepaid;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Messages/War/Reparations/Message_WarReparationsRepaid;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1985
    :cond_86
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1979
    :cond_8d
    add-int/lit8 v0, v0, -0x1

    goto :goto_52

    .line 1988
    .end local v0  # "i":I
    :cond_90
    return-void
.end method

.method public final sanctionsTurns(II)I
    .registers 5
    .param p1, "byCivID"  # I
    .param p2, "onCivID"  # I

    .line 3349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 3350
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->byCivID:I

    if-ne v1, p1, :cond_27

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->onCivID:I

    if-eq v1, p2, :cond_43

    :cond_27
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->byCivID:I

    if-ne v1, p2, :cond_50

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->onCivID:I

    if-ne v1, p1, :cond_50

    .line 3351
    :cond_43
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->untilTurnID:I

    return v1

    .line 3349
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3355
    .end local v0  # "i":I
    :cond_53
    const/4 v0, 0x0

    return v0
.end method

.method public final setAI_Style(I)V
    .registers 3
    .param p1, "iAI_Style"  # I

    .line 3266
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iAIStyleID:I

    .line 3267
    return-void
.end method

.method public final setAlliance(I)V
    .registers 3
    .param p1, "iAllianceID"  # I

    .line 2502
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->allianceID:I

    .line 2503
    return-void
.end method

.method public final setB(I)V
    .registers 4
    .param p1, "iB"  # I

    .line 820
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    int-to-short v1, p1

    iput-short v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iB:S

    .line 821
    return-void
.end method

.method public final setBordersWithEnemy(I)V
    .registers 2
    .param p1, "bordersWithEnemy"  # I

    .line 3454
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithEnemy:I

    .line 3455
    return-void
.end method

.method public final setCapitalMoved_LastTurnID(I)V
    .registers 3
    .param p1, "iCapitalMoved_LastTurnID"  # I

    .line 877
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->capitalMoved_LastTurnID:I

    .line 878
    return-void
.end method

.method public final setCapitalProvID(I)V
    .registers 3
    .param p1, "iCapitalProvinceID"  # I

    .line 861
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->capitalProvinceID:I

    .line 862
    return-void
.end method

.method public final setCivId(I)V
    .registers 3
    .param p1, "iCivID"  # I

    .line 2335
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    .line 2336
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->puppetOfCivID:I

    .line 2337
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankPosition:I

    .line 2338
    return-void
.end method

.method public final setCivId_Just(I)V
    .registers 2
    .param p1, "iCivID"  # I

    .line 2341
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    .line 2342
    return-void
.end method

.method public final setCivName(Ljava/lang/String;)V
    .registers 5
    .param p1, "sCivName"  # Ljava/lang/String;

    .line 2264
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    .line 2265
    const-string p1, "A"

    .line 2267
    :cond_8
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivName:Ljava/lang/String;

    .line 2270
    :try_start_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 2272
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameWidth:I

    .line 2273
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameHeight:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_28} :catch_29

    .line 2277
    goto :goto_34

    .line 2274
    :catch_29
    move-exception v0

    .line 2275
    .local v0, "ex":Ljava/lang/Exception;
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameWidth:I

    .line 2276
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameHeight:I

    .line 2280
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivNameChars:Ljava/util/List;

    .line 2282
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    .line 2283
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_46
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 2286
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2285
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 2289
    .end local v0  # "i":I
    :cond_60
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameLength:I

    .line 2290
    return-void
.end method

.method public final setCivTag(Ljava/lang/String;)V
    .registers 8
    .param p1, "sCivTag"  # Ljava/lang/String;

    .line 2353
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    .line 2355
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_46

    .line 2356
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2357
    .local v0, "tempTags":[Ljava/lang/String;
    const-string v1, ""

    .line 2359
    .local v1, "tempName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_42

    .line 2360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_35

    const-string v4, "-"

    goto :goto_37

    :cond_35
    const-string v4, ""

    :goto_37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2359
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2363
    .end local v2  # "i":I
    :cond_42
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    .line 2364
    .end local v0  # "tempTags":[Ljava/lang/String;
    .end local v1  # "tempName":Ljava/lang/String;
    goto :goto_4f

    .line 2365
    :cond_46
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    .line 2367
    :goto_4f
    return-void
.end method

.method public final setCoreCapitalProvID(I)V
    .registers 3
    .param p1, "iCoreCapitalProvinceID"  # I

    .line 869
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->coreCapitalProvinceID:I

    .line 870
    return-void
.end method

.method public final setDefensivePact4(II)Z
    .registers 6
    .param p1, "iID"  # I
    .param p2, "iNumOfTurns"  # I

    .line 2560
    if-gez p2, :cond_4

    .line 2561
    const/4 p2, 0x0

    goto :goto_f

    .line 2562
    :cond_4
    :try_start_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDipDefensivePact:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipDefensivePact;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipDefensivePact;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_DEFENSIVE_PACT:I

    if-le p2, v0, :cond_f

    .line 2563
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDipDefensivePact:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipDefensivePact;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipDefensivePact;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_DEFENSIVE_PACT:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_2f

    move p2, v0

    .line 2567
    :cond_f
    :goto_f
    if-gtz p2, :cond_1b

    .line 2568
    :try_start_11
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 2570
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    .line 2574
    :goto_29
    goto :goto_2e

    .line 2572
    :catch_2a
    move-exception v0

    .line 2573
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2b
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 2577
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2e
    goto :goto_33

    .line 2575
    :catch_2f
    move-exception v0

    .line 2576
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2579
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_33
    const/4 v0, 0x0

    return v0
.end method

.method public final setDiploPoints(I)V
    .registers 6
    .param p1, "nDiplomacyPoints"  # I

    .line 3394
    int-to-float v0, p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->MAX_DIPLOMACY_POINTS:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->MAX_DIPLOMACY_POINTS:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v3

    mul-float v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->MAX_DIPLOMACY_POINTS_TECHNOLOGY_MODIFIER_EXTRA:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3a

    .line 3395
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->diploPoints:I

    if-le p1, v0, :cond_3a

    .line 3396
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->MAX_DIPLOMACY_POINTS:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->MAX_DIPLOMACY_POINTS:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v2

    mul-float v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->MAX_DIPLOMACY_POINTS_TECHNOLOGY_MODIFIER_EXTRA:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 3400
    :cond_3a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->diploPoints:I

    .line 3401
    return-void
.end method

.method public final setFlag(Lage/of/civilizations2/jakowski/lukasz/Image;)V
    .registers 3
    .param p1, "nFlag"  # Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 3533
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->disposeFlag()V

    .line 3534
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    .line 3536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFlagNearest:Z

    .line 3537
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    .line 3538
    return-void
.end method

.method public final setG(I)V
    .registers 4
    .param p1, "iG"  # I

    .line 2321
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    int-to-short v1, p1

    iput-short v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iG:S

    .line 2322
    return-void
.end method

.method public final setGold(J)V
    .registers 4
    .param p1, "iMoney"  # J

    .line 853
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput-wide p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iGold:J

    .line 854
    return-void
.end method

.method public setGoldenAge_Military(I)V
    .registers 3
    .param p1, "iGoldenAge_Military"  # I

    .line 3693
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->goldenAge_Military:I

    .line 3694
    return-void
.end method

.method public setGoldenAge_Prosperity(I)V
    .registers 3
    .param p1, "iGoldenAge_Prosperity"  # I

    .line 3701
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->goldenAge_Prosperity:I

    .line 3702
    return-void
.end method

.method public setGoldenAge_Science(I)V
    .registers 3
    .param p1, "iGoldenAge_Science"  # I

    .line 3685
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->goldenAge_Science:I

    .line 3686
    return-void
.end method

.method public setGroupID(I)V
    .registers 3
    .param p1, "groupID"  # I

    .line 1631
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iGroupID:I

    .line 1632
    return-void
.end method

.method public final setGuarantee2(II)Z
    .registers 6
    .param p1, "iID"  # I
    .param p2, "iNumOfTurns"  # I

    .line 2596
    if-gez p2, :cond_4

    .line 2597
    const/4 p2, 0x0

    goto :goto_f

    .line 2598
    :cond_4
    :try_start_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDipGuarantee:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipGuarantee;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipGuarantee;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_GUARANTEE:I

    if-le p2, v0, :cond_f

    .line 2599
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDipGuarantee:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipGuarantee;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipGuarantee;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_GUARANTEE:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_2c

    move p2, v0

    .line 2603
    :cond_f
    :goto_f
    if-gtz p2, :cond_1b

    .line 2604
    :try_start_11
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 2606
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    .line 2610
    :goto_29
    goto :goto_2b

    .line 2608
    :catch_2a
    move-exception v0

    .line 2613
    :goto_2b
    goto :goto_2d

    .line 2611
    :catch_2c
    move-exception v0

    .line 2615
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method public final setHappiness(I)V
    .registers 3
    .param p1, "nHappiness"  # I

    .line 2374
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->happiness:I

    .line 2376
    const/16 v0, 0x64

    if-le p1, v0, :cond_9

    .line 2377
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->happiness:I

    goto :goto_e

    .line 2379
    :cond_9
    if-gez p1, :cond_e

    .line 2380
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->happiness:I

    .line 2382
    :cond_e
    :goto_e
    return-void
.end method

.method public final setIdeology(I)V
    .registers 5
    .param p1, "iIdeologyID"  # I

    .line 3404
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->ideologyID:I

    .line 3406
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->AI_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle_ByTag(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAI_Style(I)V

    .line 3407
    return-void
.end method

.method public final setIsAvailable(Z)V
    .registers 2
    .param p1, "isAvailable"  # Z

    .line 3282
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    .line 3283
    return-void
.end method

.method public final setIsPartOfHolyRomanEmpire(Z)V
    .registers 3
    .param p1, "isPartOfHolyRomaEmpire"  # Z

    .line 1707
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput-boolean p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->isPartOfHolyRomaEmpire:Z

    .line 1708
    return-void
.end method

.method public final setIsPlayer(Z)V
    .registers 2
    .param p1, "controlledByPlayer"  # Z

    .line 3188
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    .line 3191
    return-void
.end method

.method public final setLeaderN(Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;)V
    .registers 5
    .param p1, "nLeaderData"  # Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    .line 3982
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    if-eqz v0, :cond_88

    .line 3983
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    .line 3984
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    .line 3985
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    .line 3986
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    .line 3987
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Administration:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Administration:F

    .line 3988
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    .line 3989
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    .line 3990
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    .line 3991
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    .line 3992
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    .line 3995
    :cond_88
    if-eqz p1, :cond_22e

    .line 3996
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9b

    .line 3997
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    goto :goto_ab

    .line 3998
    :cond_9b
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ab

    .line 3999
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    .line 4002
    :cond_ab
    :goto_ab
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_bc

    .line 4003
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    goto :goto_cc

    .line 4004
    :cond_bc
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_cc

    .line 4005
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    .line 4008
    :cond_cc
    :goto_cc
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_dd

    .line 4009
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    goto :goto_ed

    .line 4010
    :cond_dd
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ed

    .line 4011
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    .line 4014
    :cond_ed
    :goto_ed
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_fe

    .line 4015
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    goto :goto_10e

    .line 4016
    :cond_fe
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10e

    .line 4017
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    .line 4020
    :cond_10e
    :goto_10e
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11f

    .line 4021
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    goto :goto_12f

    .line 4022
    :cond_11f
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12f

    .line 4023
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    .line 4026
    :cond_12f
    :goto_12f
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_140

    .line 4027
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    goto :goto_150

    .line 4028
    :cond_140
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_150

    .line 4029
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    .line 4032
    :cond_150
    :goto_150
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_161

    .line 4033
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    goto :goto_171

    .line 4034
    :cond_161
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_171

    .line 4035
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    .line 4038
    :cond_171
    :goto_171
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_182

    .line 4039
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    goto :goto_192

    .line 4040
    :cond_182
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_192

    .line 4041
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    .line 4044
    :cond_192
    :goto_192
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a3

    .line 4045
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    goto :goto_1b3

    .line 4046
    :cond_1a3
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b3

    .line 4047
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    .line 4050
    :cond_1b3
    :goto_1b3
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c4

    .line 4051
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MAX_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    goto :goto_1d4

    .line 4052
    :cond_1c4
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d4

    .line 4053
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLeader:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Leader;->LEADER_MIN_VALUE:F

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    .line 4056
    :cond_1d4
    :goto_1d4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    .line 4057
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    .line 4058
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    .line 4059
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    .line 4060
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Administration:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Administration:F

    .line 4061
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    .line 4062
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    .line 4063
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    .line 4064
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    .line 4065
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    .line 4068
    :cond_22e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    .line 4069
    return-void
.end method

.method public final setMilitaryAccess7(II)Z
    .registers 6
    .param p1, "iID"  # I
    .param p2, "iNumOfTurns"  # I

    .line 3500
    if-gez p2, :cond_4

    .line 3501
    const/4 p2, 0x0

    goto :goto_f

    .line 3502
    :cond_4
    :try_start_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDipMilitaryAccess:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipMilitaryAccess;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipMilitaryAccess;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_MILITARY_ACCESS:I

    if-le p2, v0, :cond_f

    .line 3503
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDipMilitaryAccess:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipMilitaryAccess;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipMilitaryAccess;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_MILITARY_ACCESS:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_2c

    move p2, v0

    .line 3507
    :cond_f
    :goto_f
    if-gtz p2, :cond_1b

    .line 3508
    :try_start_11
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 3510
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    .line 3514
    :goto_29
    goto :goto_2b

    .line 3512
    :catch_2a
    move-exception v0

    .line 3517
    :goto_2b
    goto :goto_2d

    .line 3515
    :catch_2c
    move-exception v0

    .line 3519
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method public final setModifier_AttackBonus(F)V
    .registers 3
    .param p1, "fModifier_AttackBonus"  # F

    .line 3661
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    .line 3662
    return-void
.end method

.method public final setModifier_DefenseBonus(F)V
    .registers 3
    .param p1, "fModifier_DefenseBonus"  # F

    .line 3669
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    .line 3670
    return-void
.end method

.method public final setModifier_EconomyGrowth(F)V
    .registers 3
    .param p1, "fModifier_EconomyGrowth"  # F

    .line 3617
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    .line 3618
    return-void
.end method

.method public final setModifier_IncomeProduction(F)V
    .registers 3
    .param p1, "fModifier_IncomeProduction"  # F

    .line 3637
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    .line 3638
    return-void
.end method

.method public final setModifier_IncomeTaxation(F)V
    .registers 3
    .param p1, "fModifier_IncomeTaxation"  # F

    .line 3629
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    .line 3630
    return-void
.end method

.method public final setModifier_MilitaryUpkeep(F)V
    .registers 3
    .param p1, "fModifier_MilitaryUpkeep"  # F

    .line 3653
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    .line 3654
    return-void
.end method

.method public final setModifier_MovementPoints(F)V
    .registers 3
    .param p1, "fModifier_MovementPoints"  # F

    .line 3677
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    .line 3678
    return-void
.end method

.method public final setModifier_PopGrowth(F)V
    .registers 3
    .param p1, "fModifier_PopGrowth"  # F

    .line 3609
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    .line 3610
    return-void
.end method

.method public final setModifier_Research(F)V
    .registers 3
    .param p1, "fModifier_Research"  # F

    .line 3645
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    .line 3646
    return-void
.end method

.method public final setMovementPoints(I)V
    .registers 2
    .param p1, "iMovePoints"  # I

    .line 843
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->movePoints:I

    .line 844
    return-void
.end method

.method public final setNonAggPact(II)Z
    .registers 6
    .param p1, "iID"  # I
    .param p2, "iNumOfTurns"  # I

    .line 287
    if-gez p2, :cond_4

    .line 288
    const/4 p2, 0x0

    goto :goto_f

    .line 289
    :cond_4
    :try_start_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDipNonAggression:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipNonAggression;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipNonAggression;->DIPLOMACY_MAX_NUMBER_OF_TURNS_NON_AGGRESSION_PACT:I

    if-le p2, v0, :cond_f

    .line 290
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDipNonAggression:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipNonAggression;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipNonAggression;->DIPLOMACY_MAX_NUMBER_OF_TURNS_NON_AGGRESSION_PACT:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_2c

    move p2, v0

    .line 294
    :cond_f
    :goto_f
    if-gtz p2, :cond_1b

    .line 295
    :try_start_11
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 297
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    .line 301
    :goto_29
    goto :goto_2b

    .line 299
    :catch_2a
    move-exception v0

    .line 304
    :goto_2b
    goto :goto_2d

    .line 302
    :catch_2c
    move-exception v0

    .line 306
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method public final setNumOfNeighboringNeutralProvinces(I)V
    .registers 2
    .param p1, "iNumOfNeighboringNeutralProvinces"  # I

    .line 3470
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfNeighboringNeutralProvinces:I

    .line 3471
    return-void
.end method

.method public final setNumberOfUnits(I)V
    .registers 3
    .param p1, "iNumOfUnits"  # I

    .line 3203
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfUnits:I

    .line 3204
    return-void
.end method

.method public final setPuppetOfCivId(I)V
    .registers 6
    .param p1, "iPuppetOfCivID"  # I

    .line 2892
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->LOAD_LORD_VASSAL_SPECIAL_FLAG:Z

    if-eqz v0, :cond_83

    .line 2893
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->puppetOfCivID:I

    if-eq v0, p1, :cond_83

    .line 2894
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v0

    const-string v1, "loadFlagVassalRev"

    if-eq p1, v0, :cond_5e

    .line 2895
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    if-eqz v0, :cond_3a

    .line 2896
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilization$3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;Ljava/lang/String;I)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    goto :goto_83

    .line 2904
    :cond_3a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilization$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFlagVassal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;Ljava/lang/String;I)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    goto :goto_83

    .line 2912
    :cond_5e
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iFVS:Z

    if-eqz v0, :cond_83

    .line 2913
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilization$5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;Ljava/lang/String;I)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    .line 2923
    :cond_83
    :goto_83
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->puppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    if-eq v0, v1, :cond_a0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->puppetOfCivID:I

    if-eq v0, p1, :cond_a0

    .line 2924
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->puppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassalN(I)V

    .line 2927
    :cond_a0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->puppetOfCivID:I

    .line 2929
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->puppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    if-eq v0, v1, :cond_f3

    .line 2930
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->puppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivId:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassalN(I)V

    .line 2933
    const/high16 v0, 0x3f800000  # 1.0f

    :try_start_bd
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->puppetOfCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed_2(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 2934
    .local v0, "nC":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v2, 0x437f0000  # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 2935
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 2936
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_ed} :catch_ee

    .end local v0  # "nC":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_f2

    .line 2937
    :catch_ee
    move-exception v0

    .line 2938
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2939
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_f2
    goto :goto_118

    .line 2943
    :cond_f3
    :try_start_f3
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilization$6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;Ljava/lang/String;I)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_116} :catch_117

    .line 2997
    goto :goto_118

    .line 2995
    :catch_117
    move-exception v0

    .line 2999
    :goto_118
    return-void
.end method

.method public final setR(I)V
    .registers 4
    .param p1, "iR"  # I

    .line 2313
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    int-to-short v1, p1

    iput-short v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iR:S

    .line 2314
    return-void
.end method

.method public final setRankPos(I)V
    .registers 2
    .param p1, "iRankPosition"  # I

    .line 3244
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankPosition:I

    .line 3245
    return-void
.end method

.method public final setRankScore(I)V
    .registers 2
    .param p1, "iRankScore"  # I

    .line 3252
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankScore:I

    .line 3253
    return-void
.end method

.method public final setRelationD(IF)V
    .registers 6
    .param p1, "iID"  # I
    .param p2, "nOpinion"  # F

    .line 3019
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelations:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->MAX_RELATION_VALUE:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_f

    .line 3020
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelations:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->MAX_RELATION_VALUE:I

    int-to-float p2, v0

    goto :goto_21

    .line 3023
    :cond_f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelations:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->MIN_RELATION_VALUE:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_21

    .line 3024
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelations:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->MIN_RELATION_VALUE:I

    add-int/lit8 v0, v0, 0x5

    int-to-float p2, v0

    .line 3027
    :cond_21
    :goto_21
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 3030
    goto :goto_32

    .line 3028
    :catch_31
    move-exception v0

    .line 3031
    :goto_32
    return-void
.end method

.method public final setRelationWar(IF)V
    .registers 6
    .param p1, "iID"  # I
    .param p2, "nOpinion"  # F

    .line 3036
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelations:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->MAX_RELATION_VALUE:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_f

    .line 3037
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelations:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->MAX_RELATION_VALUE:I

    int-to-float p2, v0

    goto :goto_1d

    .line 3039
    :cond_f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelations:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->MIN_RELATION_VALUE:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1d

    .line 3040
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRelations:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Relations;->MIN_RELATION_VALUE:I

    int-to-float p2, v0

    .line 3043
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 3046
    goto :goto_2e

    .line 3044
    :catch_2d
    move-exception v0

    .line 3047
    :goto_2e
    return-void
.end method

.method public setReligionID(I)V
    .registers 3
    .param p1, "religionID"  # I

    .line 1623
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iReligionID:I

    .line 1624
    return-void
.end method

.method public final setResearchProgressT(F)V
    .registers 3
    .param p1, "fResearchProgress"  # F

    .line 960
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->researchProgress:F

    .line 961
    return-void
.end method

.method public final setSeaAccess(I)V
    .registers 2
    .param p1, "seaAccess"  # I

    .line 3414
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess:I

    .line 3415
    return-void
.end method

.method public final setSpendingGoodsB(F)V
    .registers 4
    .param p1, "fSpendings_Goods"  # F

    .line 3363
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsGoods:F

    .line 3365
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsGoods:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 3366
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsGoods:F

    goto :goto_20

    .line 3367
    :cond_12
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsGoods:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 3368
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsGoods:F

    .line 3370
    :cond_20
    :goto_20
    return-void
.end method

.method public final setSpendingInvestmentsB(F)V
    .registers 4
    .param p1, "fSpendings_Investments"  # F

    .line 263
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsInvestments:F

    .line 265
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsInvestments:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 266
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsInvestments:F

    goto :goto_20

    .line 267
    :cond_12
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsInvestments:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 268
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsInvestments:F

    .line 270
    :cond_20
    :goto_20
    return-void
.end method

.method public final setSpendingResearchB(F)V
    .registers 8
    .param p1, "fSpendings_Research"  # F

    .line 239
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTechnology:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MIN_MONEY_REQUIRED_TO_ENABLE_RESEARCH:I

    int-to-long v2, v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_13

    .line 240
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsResearch:F

    goto :goto_4e

    .line 243
    :cond_13
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techLevel:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTechnology:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_TECHNOLOGY_LEVEL:F

    const/high16 v2, 0x42c80000  # 100.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2f

    .line 244
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsResearch:F

    .line 245
    return-void

    .line 248
    :cond_2f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsResearch:F

    .line 250
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsResearch:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_40

    .line 251
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsResearch:F

    goto :goto_4e

    .line 252
    :cond_40
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsResearch:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4e

    .line 253
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsResearch:F

    .line 256
    :cond_4e
    :goto_4e
    return-void
.end method

.method public final setStabilityCiv(F)V
    .registers 4
    .param p1, "nStability"  # F

    .line 1615
    const v0, 0x3c23d70a  # 0.01f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    .line 1616
    return-void
.end method

.method public final setTaxationLvl(F)V
    .registers 4
    .param p1, "fTaxationLevel"  # F

    .line 3379
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fTaxationLevel:F

    .line 3381
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fTaxationLevel:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 3382
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fTaxationLevel:F

    goto :goto_20

    .line 3384
    :cond_12
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fTaxationLevel:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 3385
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fTaxationLevel:F

    .line 3387
    :cond_20
    :goto_20
    return-void
.end method

.method public final setTechLevel(F)V
    .registers 6
    .param p1, "nTechnologyLevel"  # F

    .line 3338
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v2, p1, v1

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techLevel:I

    .line 3340
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techLevel:I

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTechnology:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_TECHNOLOGY_LEVEL:F

    mul-float v2, v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_29

    .line 3341
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTechnology:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_TECHNOLOGY_LEVEL:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techLevel:I

    .line 3343
    :cond_29
    return-void
.end method

.method public final setTechLevel_INT(I)V
    .registers 5
    .param p1, "nTechnologyLevel"  # I

    .line 2432
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techLevel:I

    .line 2434
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techLevel:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTechnology:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_TECHNOLOGY_LEVEL:F

    const/high16 v2, 0x42c80000  # 100.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 2435
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTechnology:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MAX_TECHNOLOGY_LEVEL:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techLevel:I

    .line 2437
    :cond_20
    return-void
.end method

.method public final setTruce3(II)Z
    .registers 6
    .param p1, "iID"  # I
    .param p2, "iNumOfTurns"  # I

    .line 2524
    if-gez p2, :cond_4

    .line 2525
    const/4 p2, 0x0

    goto :goto_f

    .line 2526
    :cond_4
    :try_start_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDipTruce:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipTruce;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipTruce;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_TRUCE:I

    if-le p2, v0, :cond_f

    .line 2527
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDipTruce:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipTruce;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipTruce;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_TRUCE:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_2c

    move p2, v0

    .line 2531
    :cond_f
    :goto_f
    if-gtz p2, :cond_1b

    .line 2532
    :try_start_11
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 2534
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    .line 2538
    :goto_29
    goto :goto_2b

    .line 2536
    :catch_2a
    move-exception v0

    .line 2541
    :goto_2b
    goto :goto_2d

    .line 2539
    :catch_2c
    move-exception v0

    .line 2543
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method public final setUpdateRegions(Z)V
    .registers 3
    .param p1, "updateRegions"  # Z

    .line 2880
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateRegions:Z

    .line 2882
    if-eqz p1, :cond_7

    .line 2883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 2885
    :cond_7
    return-void
.end method

.method public final setVassalLibertyDesire(F)V
    .registers 3
    .param p1, "fLiberityDesire"  # F

    .line 3006
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    .line 3007
    const/4 p1, 0x0

    goto :goto_f

    .line 3008
    :cond_7
    const/high16 v0, 0x42c80000  # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_f

    .line 3009
    const/high16 p1, 0x42c80000  # 100.0f

    .line 3012
    :cond_f
    :goto_f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fVassalLibertyDesire:F

    .line 3013
    return-void
.end method

.method public final setVassal_Tribute(II)V
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "nTribute"  # I

    .line 3063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 3064
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    if-ne v1, p1, :cond_27

    .line 3065
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->setTribute(I)V

    .line 3066
    return-void

    .line 3063
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3070
    .end local v0  # "i":I
    :cond_2a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3071
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iVassalsSize:I

    .line 3072
    return-void
.end method

.method public final setWarWeariness(F)V
    .registers 3
    .param p1, "fWarWeariness"  # F

    .line 3709
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWarWeariness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_WEARINESS_LIMIT:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 3710
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWarWeariness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_WEARINESS_LIMIT:F

    goto :goto_13

    .line 3712
    :cond_d
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_13

    .line 3713
    const/4 p1, 0x0

    .line 3716
    :cond_13
    :goto_13
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warWeariness:F

    .line 3717
    return-void
.end method

.method public final updateBonuses()V
    .registers 4

    .line 2035
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 2036
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->iTurnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->iTurnsLeft:I

    .line 2038
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->iTurnsLeft:I

    if-gtz v1, :cond_40

    .line 2039
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->applyBonusChangesExpired(Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;)V

    .line 2040
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 2035
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2043
    .end local v0  # "i":I
    :cond_43
    return-void
.end method

.method public final updateCivilizationIdeology()V
    .registers 3

    .line 734
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIdeology(I)V

    .line 735
    return-void
.end method

.method public final updateCivilizationIdeology(Ljava/lang/String;III)V
    .registers 8
    .param p1, "nCivTag"  # Ljava/lang/String;
    .param p2, "iR"  # I
    .param p3, "iG"  # I
    .param p4, "iB"  # I

    .line 718
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivTag(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    int-to-short v1, p2

    iput-short v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iR:S

    .line 721
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    int-to-short v1, p3

    iput-short v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iG:S

    .line 722
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    int-to-short v1, p4

    iput-short v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iB:S

    .line 724
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateCivilizationIdeology()V

    .line 725
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilization$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFlag_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;Ljava/lang/String;I)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    .line 731
    return-void
.end method

.method public final updateDiplomacyAfterRemoveCiv(I)V
    .registers 9
    .param p1, "nIDToRemove"  # I

    .line 882
    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 884
    .local v0, "nList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 885
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_52

    .line 886
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    .line 888
    :cond_52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_5f

    goto :goto_6e

    .line 892
    :cond_5f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    :goto_6e
    goto :goto_f

    .line 896
    :cond_6f
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_71} :catch_72

    .line 899
    .end local v0  # "nList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    goto :goto_76

    .line 897
    :catch_72
    move-exception v0

    .line 898
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 902
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_76
    :try_start_76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 904
    .local v0, "nList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 905
    .restart local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_c8

    .line 906
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e4

    .line 908
    :cond_c8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_d5

    goto :goto_e4

    .line 912
    :cond_d5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    :goto_e4
    goto :goto_85

    .line 916
    :cond_e5
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_e7} :catch_e8

    .line 919
    .end local v0  # "nList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    goto :goto_ec

    .line 917
    :catch_e8
    move-exception v0

    .line 918
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 922
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_ec
    :try_start_ec
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 924
    .local v0, "nList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 925
    .restart local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_13e

    .line 926
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15a

    .line 928
    :cond_13e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_14b

    goto :goto_15a

    .line 932
    :cond_14b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    :goto_15a
    goto :goto_fb

    .line 936
    :cond_15b
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_15d} :catch_15e

    .line 939
    .end local v0  # "nList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    goto :goto_162

    .line 937
    :catch_15e
    move-exception v0

    .line 938
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 940
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_162
    return-void
.end method

.method public final updateDiplomacy_AfterAddingCivilization()V
    .registers 1

    .line 944
    return-void
.end method

.method public final updateDiplomacy_AfterRemoveCivilization_Relations(I)V
    .registers 9
    .param p1, "nIDToRemove"  # I

    .line 759
    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 761
    .local v0, "nRelation":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 762
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_43

    .line 763
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 765
    :cond_43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_50

    goto :goto_5f

    .line 769
    :cond_50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    :goto_5f
    goto :goto_11

    .line 773
    :cond_60
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->relation:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    .line 776
    .end local v0  # "nRelation":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    goto :goto_69

    .line 774
    :catch_65
    move-exception v0

    .line 775
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 779
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_69
    :try_start_69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 781
    .local v0, "nList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 782
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_bb

    .line 783
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d7

    .line 785
    :cond_bb
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_c8

    goto :goto_d7

    .line 789
    :cond_c8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    :goto_d7
    goto :goto_78

    .line 793
    :cond_d8
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_da} :catch_db

    .line 796
    .end local v0  # "nList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    goto :goto_df

    .line 794
    :catch_db
    move-exception v0

    .line 795
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 799
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_df
    :try_start_df
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 801
    .local v0, "nList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ee
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 802
    .restart local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_131

    .line 803
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14d

    .line 805
    :cond_131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_13e

    goto :goto_14d

    .line 809
    :cond_13e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    :goto_14d
    goto :goto_ee

    .line 813
    :cond_14e
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_150} :catch_151

    .line 816
    .end local v0  # "nList":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;"
    goto :goto_155

    .line 814
    :catch_151
    move-exception v0

    .line 815
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 817
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_155
    return-void
.end method

.method public final updateFriendlyCiv()V
    .registers 1

    .line 3861
    return-void
.end method

.method public final updateGift_Received()V
    .registers 4

    .line 1646
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_2b

    .line 1647
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;->iTurnID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGift:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;->GIFT_INFO_EXPIRATION_TURNS:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    if-ge v1, v2, :cond_28

    .line 1648
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1646
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1651
    .end local v0  # "i":I
    :cond_2b
    return-void
.end method

.method public final updateLoansFromCivNextTurn()V
    .registers 7

    .line 1864
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_89

    .line 1865
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iTurnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iTurnsLeft:I

    .line 1866
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->fromCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->fromCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iGoldPerTurn:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 1868
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iTurnsLeft:I

    if-gtz v1, :cond_85

    .line 1869
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1870
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1871
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_Repaid;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_Repaid;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1864
    :cond_84
    move v0, v2

    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1875
    .end local v0  # "i":I
    :cond_89
    return-void
.end method

.method public updateLoansFromCiv_WarDeclared(I)V
    .registers 10
    .param p1, "warOnCivID"  # I

    .line 1878
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_7f

    .line 1879
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->fromCivID:I

    if-ne v1, p1, :cond_7c

    .line 1880
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iGoldPerTurn:I

    int-to-long v3, v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iTurnsLeft:I

    int-to-long v5, v5

    mul-long v3, v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 1881
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iGoldPerTurn:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLoan:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Loan;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Loan;->REQUEST_LOAN_WAR_DECLARED_ON_LENDER_PENALTY:F

    mul-float v4, v4, v5

    float-to-long v4, v4

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;->iTurnsLeft:I

    int-to-long v6, v6

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 1883
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lLoansTakenFromCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1878
    :cond_7c
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1886
    .end local v0  # "i":I
    :cond_7f
    return-void
.end method

.method public final updateLoansNextTurn()V
    .registers 6

    .line 1819
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 1820
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;->iTurnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;->iTurnsLeft:I

    .line 1822
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;->iTurnsLeft:I

    if-gtz v1, :cond_4c

    .line 1823
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->loansTaken:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1824
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1825
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_Repaid;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_Repaid;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1819
    :cond_4b
    move v0, v2

    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1829
    .end local v0  # "i":I
    :cond_4f
    return-void
.end method

.method public final updateNumberOfUnits()V
    .registers 5

    .line 3208
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfUnits:I

    .line 3210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 3211
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfUnits:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfUnits:I

    .line 3210
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3214
    .end local v0  # "i":I
    :cond_24
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_25
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 3215
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfUnits:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getNumberOfUnits()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfUnits:I

    .line 3214
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 3218
    .end local v0  # "i":I
    :cond_3b
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_3c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 3219
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfUnits:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProviP(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->numOfUnits:I

    .line 3218
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 3221
    .end local v0  # "i":I
    :cond_5c
    return-void
.end method

.method public final updateSanctionsImpact()V
    .registers 5

    .line 4102
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sanctionsImpact:F

    .line 4104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 4105
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sanctionsImpact:F

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->impact:F

    add-float/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sanctionsImpact:F

    .line 4104
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4108
    .end local v1  # "i":I
    :cond_22
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvSanctions:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->MAX_IMPACT_TOTAL:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sanctionsImpact:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sanctionsImpact:F

    .line 4109
    return-void
.end method

.method public final updateSanctionsTurns()V
    .registers 5

    .line 4083
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 4084
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_b3

    .line 4085
    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->untilTurnID:I

    if-lt v1, v2, :cond_75

    .line 4086
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->byCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 4087
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->byCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Relations/Sanctions/Message_SanctionsExpired;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->onCivID:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Messages/Relations/Sanctions/Message_SanctionsExpired;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 4090
    :cond_6a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4091
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateSanctionsImpact()V

    goto :goto_af

    .line 4093
    :cond_75
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->byCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-eqz v1, :cond_a5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->onCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-nez v1, :cond_af

    .line 4094
    :cond_a5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4095
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateSanctionsImpact()V

    .line 4084
    :cond_af
    :goto_af
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_14

    .line 4099
    .end local v0  # "i":I
    :cond_b3
    return-void
.end method
