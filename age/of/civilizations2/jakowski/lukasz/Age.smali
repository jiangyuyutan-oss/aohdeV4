.class public Lage/of/civilizations2/jakowski/lukasz/Age;
.super Ljava/lang/Object;
.source "Age.java"


# instance fields
.field public BASE_DIPLOMACY_POINTS:I

.field public BASE_INCOME_PRODUCTION:F

.field public BASE_INCOME_TAXATION:F

.field public BASE_MILITARY_UPKEEP:F

.field public BASE_MOVEMENT_POINTS:I

.field public COLONIZE_COST_DIPLOMACY_POINTS:I

.field public COLONIZE_COST_GOLD_PERC:F

.field public COLONIZE_COST_MOVEMENT_POINTS:I

.field public DEVELOPMENT_LEVEL_INCREASE:F

.field public DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

.field public DISEASE_CHANCE:F

.field public EXPENSES_ADMINSTRATION_DISTANCE:F

.field public EXPENSES_ADMINSTRATION_MODIFIER:F

.field public EXPENSES_MILITARY_UPKEEP_MODIFIER:F

.field public FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

.field public GAME_DAYS_PER_TURN:I

.field public GAME_STARTING_DEVELOPMENT:F

.field public INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

.field public INCOME_PRODUCTION_MODIFIER:F

.field public INCOME_TAXATION_MODIFIER:F

.field public INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

.field public MOVEMENT_POINTS_MODIFIER:F

.field public REVOLUTIONARY_RISK_MODIFIER:F

.field public RIVALS_DISTANCE:F

.field public SHIP_GROUP:I

.field private fEconomyGrowthRate:F

.field private fPopulationGrowthRate:F

.field private iAgeBeginningYear:I

.field private iAgeEndYear:I

.field private sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIFF)V
    .registers 8
    .param p1, "sName"  # Ljava/lang/String;
    .param p2, "iAgeBeginningYear"  # I
    .param p3, "iAgeEndYear"  # I
    .param p4, "fPopulationGrowthRate"  # F
    .param p5, "fEconomyGrowthRate"  # F

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

    .line 20
    const/16 v1, 0x14

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MOVEMENT_POINTS:I

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DEVELOPMENT_LEVEL_INCREASE:F

    .line 24
    const v1, 0x3b988095  # 0.004654f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_TAXATION:F

    .line 25
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_MODIFIER:F

    .line 26
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTION_MODIFIER:F

    .line 27
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_MODIFIER:F

    .line 28
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_MILITARY_UPKEEP_MODIFIER:F

    .line 30
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->MOVEMENT_POINTS_MODIFIER:F

    .line 31
    const/16 v1, 0xa

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_DIPLOMACY_POINTS:I

    .line 33
    const/high16 v1, 0x40600000  # 3.5f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_DISTANCE:F

    .line 35
    const/16 v1, 0x15e

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

    .line 37
    const v1, 0x39d84a2e

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

    .line 38
    const v1, 0x3ddf9e7c

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MILITARY_UPKEEP:F

    .line 40
    const v1, 0x3ee2617c  # 0.44215f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_STARTING_DEVELOPMENT:F

    .line 42
    const/16 v1, 0x22

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_DAYS_PER_TURN:I

    .line 43
    const v1, 0x3c82b1f7  # 0.015954f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_PRODUCTION:F

    .line 44
    const v1, 0x3aca95bb  # 0.0015456f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

    .line 46
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->REVOLUTIONARY_RISK_MODIFIER:F

    .line 48
    const v1, 0x3d4ccccd  # 0.05f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DISEASE_CHANCE:F

    .line 50
    const/16 v1, 0x10

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_MOVEMENT_POINTS:I

    .line 51
    const/16 v1, 0xe

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_DIPLOMACY_POINTS:I

    .line 52
    const v1, 0x3e2b851f  # 0.1675f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_GOLD_PERC:F

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->SHIP_GROUP:I

    .line 56
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->RIVALS_DISTANCE:F

    .line 61
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->sName:Ljava/lang/String;

    .line 62
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeBeginningYear:I

    .line 63
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeEndYear:I

    .line 64
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fPopulationGrowthRate:F

    .line 65
    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fEconomyGrowthRate:F

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIFFFFFFFFIFIFIFFFFIFFFFFIIIF)V
    .registers 47
    .param p1, "sName"  # Ljava/lang/String;
    .param p2, "iAgeBeginningYear"  # I
    .param p3, "iAgeEndYear"  # I
    .param p4, "fPopulationGrowthRate"  # F
    .param p5, "fEconomyGrowthRate"  # F
    .param p6, "FOG_OF_WAR_DISCOVERY_MET_PROVINCES"  # F
    .param p7, "DEVELOPMENT_LEVEL_INCREASE"  # F
    .param p8, "INCOME_TAXATION_MODIFIER"  # F
    .param p9, "INCOME_PRODUCTION_MODIFIER"  # F
    .param p10, "EXPENSES_ADMINSTRATION_MODIFIER"  # F
    .param p11, "EXPENSES_MILITARY_UPKEEP_MODIFIER"  # F
    .param p12, "BASE_MOVEMENT_POINTS"  # I
    .param p13, "MOVEMENT_POINTS_MODIFIER"  # F
    .param p14, "BASE_DIPLOMACY_POINTS"  # I
    .param p15, "EXPENSES_ADMINSTRATION_DISTANCE"  # F
    .param p16, "DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE"  # I
    .param p17, "BASE_INCOME_TAXATION"  # F
    .param p18, "INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER"  # F
    .param p19, "BASE_MILITARY_UPKEEP"  # F
    .param p20, "GAME_STARTING_DEVELOPMENT"  # F
    .param p21, "GAME_DAYS_PER_TURN"  # I
    .param p22, "BASE_INCOME_PRODUCTION"  # F
    .param p23, "INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER"  # F
    .param p24, "REVOLUTIONARY_RISK_MODIFIER"  # F
    .param p25, "DISEASE_CHANCE"  # F
    .param p26, "COLONIZE_COST_GOLD_PERC"  # F
    .param p27, "COLONIZE_COST_MOVEMENT_POINTS"  # I
    .param p28, "COLONIZE_COST_DIPLOMACY_POINTS"  # I
    .param p29, "SHIP_GROUP"  # I
    .param p30, "RIVALS_DISTANCE"  # F

    .line 74
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

    .line 20
    const/16 v2, 0x14

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MOVEMENT_POINTS:I

    .line 22
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DEVELOPMENT_LEVEL_INCREASE:F

    .line 24
    const v2, 0x3b988095  # 0.004654f

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_TAXATION:F

    .line 25
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_MODIFIER:F

    .line 26
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTION_MODIFIER:F

    .line 27
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_MODIFIER:F

    .line 28
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_MILITARY_UPKEEP_MODIFIER:F

    .line 30
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->MOVEMENT_POINTS_MODIFIER:F

    .line 31
    const/16 v2, 0xa

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_DIPLOMACY_POINTS:I

    .line 33
    const/high16 v2, 0x40600000  # 3.5f

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_DISTANCE:F

    .line 35
    const/16 v2, 0x15e

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

    .line 37
    const v2, 0x39d84a2e

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

    .line 38
    const v2, 0x3ddf9e7c

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MILITARY_UPKEEP:F

    .line 40
    const v2, 0x3ee2617c  # 0.44215f

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_STARTING_DEVELOPMENT:F

    .line 42
    const/16 v2, 0x22

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_DAYS_PER_TURN:I

    .line 43
    const v2, 0x3c82b1f7  # 0.015954f

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_PRODUCTION:F

    .line 44
    const v2, 0x3aca95bb  # 0.0015456f

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

    .line 46
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->REVOLUTIONARY_RISK_MODIFIER:F

    .line 48
    const v2, 0x3d4ccccd  # 0.05f

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DISEASE_CHANCE:F

    .line 50
    const/16 v2, 0x10

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_MOVEMENT_POINTS:I

    .line 51
    const/16 v2, 0xe

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_DIPLOMACY_POINTS:I

    .line 52
    const v2, 0x3e2b851f  # 0.1675f

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_GOLD_PERC:F

    .line 54
    const/4 v2, 0x0

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->SHIP_GROUP:I

    .line 56
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->RIVALS_DISTANCE:F

    .line 75
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->sName:Ljava/lang/String;

    .line 76
    move/from16 v1, p2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeBeginningYear:I

    .line 77
    move/from16 v3, p3

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeEndYear:I

    .line 78
    move/from16 v4, p4

    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->fPopulationGrowthRate:F

    .line 79
    move/from16 v5, p5

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->fEconomyGrowthRate:F

    .line 81
    move/from16 v6, p6

    iput v6, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

    .line 82
    move/from16 v7, p7

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DEVELOPMENT_LEVEL_INCREASE:F

    .line 84
    move/from16 v8, p8

    iput v8, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_MODIFIER:F

    .line 85
    move/from16 v9, p9

    iput v9, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTION_MODIFIER:F

    .line 86
    move/from16 v10, p10

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_MODIFIER:F

    .line 87
    move/from16 v11, p11

    iput v11, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_MILITARY_UPKEEP_MODIFIER:F

    .line 89
    move/from16 v12, p12

    iput v12, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MOVEMENT_POINTS:I

    .line 90
    move/from16 v13, p13

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->MOVEMENT_POINTS_MODIFIER:F

    .line 91
    move/from16 v14, p14

    iput v14, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_DIPLOMACY_POINTS:I

    .line 92
    move/from16 v15, p15

    iput v15, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_DISTANCE:F

    .line 94
    move/from16 v1, p16

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

    .line 95
    move/from16 v1, p17

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_TAXATION:F

    .line 97
    move/from16 v1, p18

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

    .line 99
    move/from16 v1, p19

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MILITARY_UPKEEP:F

    .line 100
    move/from16 v1, p20

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_STARTING_DEVELOPMENT:F

    .line 102
    move/from16 v1, p21

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_DAYS_PER_TURN:I

    .line 104
    move/from16 v1, p22

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_PRODUCTION:F

    .line 105
    move/from16 v1, p23

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

    .line 106
    move/from16 v1, p24

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->REVOLUTIONARY_RISK_MODIFIER:F

    .line 108
    move/from16 v1, p26

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_GOLD_PERC:F

    .line 109
    move/from16 v1, p27

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_MOVEMENT_POINTS:I

    .line 110
    move/from16 v1, p28

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_DIPLOMACY_POINTS:I

    .line 112
    move/from16 v1, p25

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DISEASE_CHANCE:F

    .line 114
    move/from16 v1, p29

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->SHIP_GROUP:I

    .line 116
    move/from16 v1, p30

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->RIVALS_DISTANCE:F

    .line 117
    return-void
.end method


# virtual methods
.method public final getBeginningYear()I
    .registers 2

    .line 130
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeBeginningYear:I

    return v0
.end method

.method public final getEconomyGrowthRate()F
    .registers 2

    .line 146
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fEconomyGrowthRate:F

    return v0
.end method

.method public final getEndYear()I
    .registers 2

    .line 134
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeEndYear:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPopulationGrowthRate()F
    .registers 2

    .line 138
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fPopulationGrowthRate:F

    return v0
.end method

.method public final setEconomyGrowthRate(F)V
    .registers 2
    .param p1, "fEconomyGrowthRate"  # F

    .line 150
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fEconomyGrowthRate:F

    .line 151
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "sName"  # Ljava/lang/String;

    .line 126
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->sName:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public final setPopulationGrowthRate(F)V
    .registers 2
    .param p1, "fPopulationGrowthRate"  # F

    .line 142
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fPopulationGrowthRate:F

    .line 143
    return-void
.end method
