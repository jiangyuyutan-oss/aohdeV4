.class public Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;
.super Ljava/lang/Object;
.source "Save_Civ_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public aACS:I

.field public aACSG:J

.field public allianceID:I

.field public allianceUpdate_TurnID:I

.field public armyExperience:F

.field public armyExpertiseAttack:I

.field public armyExpertiseDefense:I

.field public armyExpertiseLevel:I

.field public assimilates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivTask;",
            ">;"
        }
    .end annotation
.end field

.field public bonusesCiv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public capitalMoved_LastTurnID:I

.field public capitalProvinceID:I

.field public changeTypeOfGovernment:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;

.field public checkFormCiv_TurnID:I

.field public circledVassals_TurnID:I

.field public civAggressionLevel:F

.field public civDiploGD:Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

.field public civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

.field public civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

.field public civRivals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_Rival;",
            ">;"
        }
    .end annotation
.end field

.field public civRivalsSize:I

.field public civsToImproveRelationsWith:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_ImproveRelations;",
            ">;"
        }
    .end annotation
.end field

.field public civsToImproveRelationsWithSize:I

.field public coloniesFounded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Colonies;",
            ">;"
        }
    .end annotation
.end field

.field public coreCapitalProvinceID:I

.field public declareWarCheckNextTurnID:I

.field public diploPoints:I

.field public expandNeutralProvinces_RangeCheck:I

.field public fE:I

.field public fECG:J

.field public fTaxationLevel:F

.field public fVassalLibertyDesire:F

.field public festivals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivTask;",
            ">;"
        }
    .end annotation
.end field

.field public friendlyCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public goldenAge_Military:I

.field public goldenAge_Prosperity:I

.field public goldenAge_Science:I

.field public iAIStyleID:I

.field public iB:S

.field public iG:S

.field public iGD:J

.field public iGE:J

.field public iGEG:J

.field public iGold:J

.field public iGroupID:I

.field public iHatedCivsSize:I

.field public iHatedCivs_BySize:I

.field public iLockTreasury:I

.field public iNextCheckMilitaryAccessSeaTurnID:I

.field public iNextCheckMilitaryAccessTurnID:I

.field public iNextPossibleNavalInvasionTurnID:I

.field public iNukes:I

.field public iNumOfRevolutions:I

.field public iNumOfTurnsAtWar:I

.field public iPlunder_LastTurnID:I

.field public iR:S

.field public iRegroupArmyAtPeace_CheckTurnID:I

.field public iRegroupArmySize:I

.field public iReligionID:I

.field public iRevolt_LastTurnLostProvince:I

.field public iRevolt_SinceTurn:I

.field public iVassalsSize:I

.field public investsDev:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;",
            ">;"
        }
    .end annotation
.end field

.field public investsEco:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivInvest;",
            ">;"
        }
    .end annotation
.end field

.field public isPartOfHolyRomaEmpire:Z

.field public lConstructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;",
            ">;"
        }
    .end annotation
.end field

.field public lEvents_DecisionsTaken:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lGifts_Received:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Gift_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public lHatedCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public lHatedCivs_By:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lLoansTakenFromCiv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilizations/LoanCiv_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public lRegroupArmy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;",
            ">;"
        }
    .end annotation
.end field

.field public lSanctions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;",
            ">;"
        }
    .end annotation
.end field

.field public lWarReparationsGets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/WarReparations;",
            ">;"
        }
    .end annotation
.end field

.field public leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

.field public loansTaken:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public modifier_Administration:F

.field public modifier_AttackBonus:F

.field public modifier_ColonizationCost:F

.field public modifier_DefenseBonus:F

.field public modifier_EconomyGrowth:F

.field public modifier_IncomeProduction:F

.field public modifier_IncomeTaxation:F

.field public modifier_MilitaryUpkeep:F

.field public modifier_MovementPoints:F

.field public modifier_PopGrowth:F

.field public modifier_Research:F

.field public moveAtWar_ArmyFullyRecruitedLastTurn:Z

.field public moveAtWar_ProvincesLostAndConquered_LastTurn:I

.field public nextArmyRestRegroupment_TurnID:I

.field public nextBuildCivsInRange_TurnID:I

.field public nukesConstruction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public numOfBuildingsConstructed:I

.field public numOfConqueredProvinces:I

.field public numOfUnions:I

.field public numberOfInvestments:F

.field public policyID:I

.field public puppetOfCivID:I

.field public recruitedArmy:I

.field public relation:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public researchProgress:F

.field public resumeAllianceCheckAtTurnID:I

.field public resumeColonizationCheckAtTurnID:I

.field public resumeLookingForFriendsAtTurnID:I

.field public resumeLookingForRivalAtTurnID:I

.field public sCivName:Ljava/lang/String;

.field public sCivTag:Ljava/lang/String;

.field public sentMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;",
            ">;"
        }
    .end annotation
.end field

.field public spendingsGoods:F

.field public spendingsInvestments:F

.field public spendingsResearch:F

.field public startingEconomy:J

.field public startingPopulation:J

.field public techLevel:I

.field public techPoints:Lage/of/civilizations2/jakowski/lukasz/TechPoints;

.field public ttWC:J

.field public vassals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public warReparationsPay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/WarReparations;",
            ">;"
        }
    .end annotation
.end field

.field public warWeariness:F


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iReligionID:I

    .line 44
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iGroupID:I

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fVassalLibertyDesire:F

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    .line 55
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iVassalsSize:I

    .line 58
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iAIStyleID:I

    .line 60
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    .line 61
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    .line 62
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRegroupArmyAtPeace_CheckTurnID:I

    .line 69
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->isPartOfHolyRomaEmpire:Z

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civRivals:Ljava/util/List;

    .line 72
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civRivalsSize:I

    .line 75
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->declareWarCheckNextTurnID:I

    .line 77
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nextArmyRestRegroupment_TurnID:I

    .line 79
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->numOfUnions:I

    .line 81
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civAggressionLevel:F

    .line 83
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->resumeAllianceCheckAtTurnID:I

    .line 84
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->allianceUpdate_TurnID:I

    .line 85
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->circledVassals_TurnID:I

    .line 86
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->checkFormCiv_TurnID:I

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->coloniesFounded:Ljava/util/List;

    .line 99
    const/4 v2, 0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->resumeColonizationCheckAtTurnID:I

    .line 101
    const/4 v3, 0x0

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->changeTypeOfGovernment:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;

    .line 103
    const/4 v3, 0x6

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->expandNeutralProvinces_RangeCheck:I

    .line 107
    const/4 v3, -0x1

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->coreCapitalProvinceID:I

    .line 108
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMoveCapital:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MoveCapital;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MoveCapital;->MOVE_CAPITAL_LOCK_MOVING_FOR_X_TURNS:I

    neg-int v3, v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->capitalMoved_LastTurnID:I

    .line 110
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNextPossibleNavalInvasionTurnID:I

    .line 112
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nextBuildCivsInRange_TurnID:I

    .line 114
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->resumeLookingForRivalAtTurnID:I

    .line 115
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->resumeLookingForFriendsAtTurnID:I

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civsToImproveRelationsWith:Ljava/util/List;

    .line 118
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civsToImproveRelationsWithSize:I

    .line 124
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    .line 128
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNukes:I

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nukesConstruction:Ljava/util/List;

    .line 134
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iGE:J

    .line 136
    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iGEG:J

    .line 139
    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iGD:J

    .line 142
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->aACS:I

    .line 144
    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->aACSG:J

    .line 147
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fE:I

    .line 149
    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fECG:J

    .line 154
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->armyExpertiseLevel:I

    .line 157
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->armyExpertiseAttack:I

    .line 159
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->armyExpertiseDefense:I

    .line 162
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->armyExperience:F

    .line 167
    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    .line 171
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iPlunder_LastTurnID:I

    .line 172
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNextCheckMilitaryAccessTurnID:I

    .line 173
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNextCheckMilitaryAccessSeaTurnID:I

    .line 177
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->numOfConqueredProvinces:I

    .line 178
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->numOfBuildingsConstructed:I

    .line 179
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->recruitedArmy:I

    .line 181
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iLockTreasury:I

    .line 185
    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->startingPopulation:J

    .line 186
    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->startingEconomy:J

    .line 190
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNumOfRevolutions:I

    .line 192
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->moveAtWar_ArmyFullyRecruitedLastTurn:Z

    .line 193
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    .line 198
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/TechPoints;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/TechPoints;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techPoints:Lage/of/civilizations2/jakowski/lukasz/TechPoints;

    .line 200
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_PopGrowth:F

    .line 201
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_EconomyGrowth:F

    .line 202
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeTaxation:F

    .line 203
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_IncomeProduction:F

    .line 204
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Administration:F

    .line 205
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_Research:F

    .line 206
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MilitaryUpkeep:F

    .line 207
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_AttackBonus:F

    .line 208
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_DefenseBonus:F

    .line 209
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_MovementPoints:F

    .line 210
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->modifier_ColonizationCost:F

    .line 213
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->bonusesCiv:Ljava/util/List;

    .line 216
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->goldenAge_Prosperity:I

    .line 217
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->goldenAge_Military:I

    .line 218
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->goldenAge_Science:I

    .line 220
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    .line 221
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warWeariness:F

    .line 242
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsResearch:F

    .line 243
    const v3, 0x3e23d70a  # 0.16f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsInvestments:F

    .line 244
    const v3, 0x3e4ccccd  # 0.2f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->spendingsGoods:F

    .line 246
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->researchProgress:F

    .line 248
    const v3, 0x3dcccccd  # 0.1f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fTaxationLevel:F

    .line 252
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->festivals:Ljava/util/List;

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->assimilates:Ljava/util/List;

    .line 257
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsEco:Ljava/util/List;

    .line 258
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->investsDev:Ljava/util/List;

    .line 261
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->numberOfInvestments:F

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    .line 271
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->allianceID:I

    .line 274
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    .line 276
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRevolt_SinceTurn:I

    .line 277
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iRevolt_LastTurnLostProvince:I

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    .line 280
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iHatedCivsSize:I

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    .line 282
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iHatedCivs_BySize:I

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->friendlyCivs:Ljava/util/List;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->sentMessages:Ljava/util/List;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->lSanctions:Ljava/util/List;

    return-void
.end method
