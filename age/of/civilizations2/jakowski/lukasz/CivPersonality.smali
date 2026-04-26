.class public Lage/of/civilizations2/jakowski/lukasz/CivPersonality;
.super Ljava/lang/Object;
.source "CivPersonality.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public AI_CIV_AGGRESSION:F

.field public ASSIMILATE_PERC_DISTANCE_SCORE:F

.field public ASSIMILATE_PERC_LOW_STABILITY_SCORE:F

.field public ASSIMILATE_PERC_POPULATION_SCORE:F

.field public BUILD_ARMOURY:F

.field public BUILD_ARMOURY_RECRUITABLE_SCORE:F

.field public BUILD_DANGER_SCORE:F

.field public BUILD_FARM:F

.field public BUILD_FORT:F

.field public BUILD_INVEST:F

.field public BUILD_INVEST_DEVELOPMENT:F

.field public BUILD_INVEST_DEVELOPMENT_SCORE:F

.field public BUILD_INVEST_POP_ECO_DIFFERENCE_SCORE:F

.field public BUILD_INVEST_POP_SCORE:F

.field public BUILD_INVEST_SECOND_INVEST_CHANCE:I

.field public BUILD_INVEST_SECOND_INVEST_MAX_PERC:I

.field public BUILD_LIBRARY:F

.field public BUILD_MARKET:F

.field public BUILD_MARKET_ECO_SCORE:F

.field public BUILD_MARKET_POP_SCORE:F

.field public BUILD_PORT:F

.field public BUILD_RESERVE_RAND:I

.field public BUILD_STABILITY_SCORE:F

.field public BUILD_SUPPLYLINE:F

.field public BUILD_TOWER:F

.field public BUILD_WORKSHOP:F

.field public BUILD_WORKSHOP_ECO_SCORE:F

.field public BUILD_WORKSHOP_POP_SCORE:F

.field public COLONIZATION_DISTANCE:F

.field public COLONIZATION_GROWTH_RATE:F

.field public COLONIZATION_OWN_PROVINCES:F

.field public COLONIZATION_SEA:F

.field public DANGER_EXTRA_KEY_REGION:F

.field public DANGER_EXTRA_PER_OWN_PROVINCE:F

.field public DANGER_PERC_OF_UNITS:F

.field public GOODS_EXTRA_PERC_OF_BUDGET:F

.field public INVESTMENTS_EXTRA_PERC_OF_BUDGET:F

.field public MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY:F

.field public MIN_HAPPINESS_FOR_CIV:I

.field public MIN_MILITARY_SPENDINGS:F

.field public MIN_MILITARY_SPENDINGS_NOT_BORDERING_WITH_ENEMY:F

.field public MIN_MILITARY_SPENDINGS_RECRUIT_AT_WAR:F

.field public MIN_MILITARY_SPENDINGS_WAR:F

.field public MIN_MILITARY_SPENDINGS_WAR_MODIFIER:F

.field public MIN_PROVINCE_HAPPINESS_RUN_FESTIVAL:F

.field public MIN_PROVINCE_STABILITY:F

.field public POTENTIAL_ECONOMY:F

.field public POTENTIAL_POPULATION:F

.field public REGROUP_AT_PEACE_MAX_PROVINCES:I

.field public RESEARCH_PERC_OF_BUDGET:F

.field public TAXATION_LEVEL:F

.field public TREASURY_RESERVE:F

.field public TREASURY_RESERVE_MODIFIER:F

.field public USE_OF_BUDGET_FOR_SPENDINGS:F

.field public VALUABLE_DANGER:F

.field public VALUABLE_NUM_OF_UNITS:F

.field public VALUABLE_NUM_OF_UNITS_RECRUITMENT:F

.field public VALUABLE_POTENTIAL:F

.field public VALUABLE_POTENTIAL_MODIFIED_OWN_LOST_PROVINCE:F

.field public VALUABLE_RECRUIT_FROM_FAR_AWAY_CHANCE:I

.field public VALUABLE_REGION_NUM_OF_PROVINCES:F

.field public VALUABLE_REGION_POTENTIAL:F

.field public WAR_ATTACK_DISTANCE:F

.field public WAR_ATTACK_NAVAL_DISTANCE:F

.field public WAR_ATTACK_NAVAL_DISTANCE_NEW:F

.field public WAR_ATTACK_SCORE_ARMY:F

.field public WAR_ATTACK_SCORE_POTENTIAL:F

.field public WAR_ATTACK_SCORE_WAS_CONQUERED:F

.field public WAR_CLOSE_REGION_EXTRA_SCORE:F

.field public WAR_CLOSE_REGION_PROVINCES:I

.field public WAR_DANGER:F

.field public WAR_NUM_OF_UNITS:F

.field public WAR_POTENTIAL:F

.field public WAR_REGION_NUM_OF_PROVINCES:F

.field public WAR_REGION_POTENTIAL:F

.field public WAR_REGROUP_SPLIT_EXTRA:I

.field public WAR_REGROUP_SPLIT_MIN:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, 0x3f733333  # 0.95f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TAXATION_LEVEL:F

    .line 18
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->USE_OF_BUDGET_FOR_SPENDINGS:F

    .line 20
    const/high16 v1, 0x41200000  # 10.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TREASURY_RESERVE:F

    .line 21
    const v1, 0x3dcccccd  # 0.1f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TREASURY_RESERVE_MODIFIER:F

    .line 23
    const/high16 v2, 0x3e800000  # 0.25f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->GOODS_EXTRA_PERC_OF_BUDGET:F

    .line 24
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->INVESTMENTS_EXTRA_PERC_OF_BUDGET:F

    .line 25
    const v2, 0x3e4ccccd  # 0.2f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->RESEARCH_PERC_OF_BUDGET:F

    .line 28
    const/high16 v2, 0x3f400000  # 0.75f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY:F

    .line 30
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS:F

    .line 31
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS_WAR:F

    .line 32
    const v2, 0x3f8ccccd  # 1.1f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS_WAR_MODIFIER:F

    .line 34
    const v2, 0x3f666666  # 0.9f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS_RECRUIT_AT_WAR:F

    .line 35
    const v3, 0x3f19999a  # 0.6f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS_NOT_BORDERING_WITH_ENEMY:F

    .line 37
    const/16 v3, 0x41

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_HAPPINESS_FOR_CIV:I

    .line 39
    const/16 v3, 0xa

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->REGROUP_AT_PEACE_MAX_PROVINCES:I

    .line 43
    const/high16 v4, 0x41dc0000  # 27.5f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_POPULATION:F

    .line 44
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_ECONOMY:F

    .line 46
    const/high16 v4, 0x3fe00000  # 1.75f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_EXTRA_KEY_REGION:F

    .line 47
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_EXTRA_PER_OWN_PROVINCE:F

    .line 48
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_PERC_OF_UNITS:F

    .line 50
    const/4 v1, 0x5

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_PROVINCES:I

    .line 51
    const/high16 v1, 0x3fa00000  # 1.25f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_EXTRA_SCORE:F

    .line 55
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_PROVINCE_STABILITY:F

    .line 56
    const v1, 0x3ea8f5c3  # 0.33f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->ASSIMILATE_PERC_DISTANCE_SCORE:F

    .line 57
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->ASSIMILATE_PERC_LOW_STABILITY_SCORE:F

    .line 58
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->ASSIMILATE_PERC_POPULATION_SCORE:F

    .line 60
    const v1, 0x3f333333  # 0.7f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_PROVINCE_HAPPINESS_RUN_FESTIVAL:F

    .line 64
    const v1, 0x3f266666  # 0.65f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_STABILITY_SCORE:F

    .line 65
    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_DANGER_SCORE:F

    .line 67
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_FORT:F

    .line 68
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_TOWER:F

    .line 69
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_PORT:F

    .line 70
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_FARM:F

    .line 72
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP:F

    .line 73
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP_POP_SCORE:F

    .line 74
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP_ECO_SCORE:F

    .line 76
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_MARKET:F

    .line 77
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_MARKET_POP_SCORE:F

    .line 78
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_MARKET_ECO_SCORE:F

    .line 80
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_LIBRARY:F

    .line 82
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_ARMOURY:F

    .line 83
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_ARMOURY_RECRUITABLE_SCORE:F

    .line 85
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_SUPPLYLINE:F

    .line 87
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST:F

    .line 88
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_DEVELOPMENT:F

    .line 89
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_POP_SCORE:F

    .line 90
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_DEVELOPMENT_SCORE:F

    .line 91
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_POP_ECO_DIFFERENCE_SCORE:F

    .line 92
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_RESERVE_RAND:I

    .line 93
    const/16 v1, 0x1e

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_SECOND_INVEST_MAX_PERC:I

    .line 94
    const/16 v1, 0x14

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_SECOND_INVEST_CHANCE:I

    .line 98
    const/high16 v1, 0x41a00000  # 20.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_SEA:F

    .line 99
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_OWN_PROVINCES:F

    .line 100
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_GROWTH_RATE:F

    .line 101
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_DISTANCE:F

    .line 105
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_POTENTIAL:F

    .line 106
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_POTENTIAL_MODIFIED_OWN_LOST_PROVINCE:F

    .line 107
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_DANGER:F

    .line 109
    const v1, 0x3ecccccd  # 0.4f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_REGION_NUM_OF_PROVINCES:F

    .line 110
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_REGION_POTENTIAL:F

    .line 112
    const v2, 0x3f533333  # 0.825f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_NUM_OF_UNITS:F

    .line 113
    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_NUM_OF_UNITS_RECRUITMENT:F

    .line 114
    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_RECRUIT_FROM_FAR_AWAY_CHANCE:I

    .line 118
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_POTENTIAL:F

    .line 119
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_DANGER:F

    .line 120
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_NUM_OF_UNITS:F

    .line 121
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGION_NUM_OF_PROVINCES:F

    .line 122
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGION_POTENTIAL:F

    .line 124
    const v2, 0x3ee66666  # 0.45f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_SCORE_ARMY:F

    .line 125
    const v2, 0x3f066666  # 0.525f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_SCORE_POTENTIAL:F

    .line 126
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_SCORE_WAS_CONQUERED:F

    .line 128
    const/4 v2, 0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGROUP_SPLIT_MIN:I

    .line 129
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGROUP_SPLIT_EXTRA:I

    .line 131
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_NAVAL_DISTANCE:F

    .line 132
    const v2, 0x3e8ccccd  # 0.275f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_NAVAL_DISTANCE_NEW:F

    .line 133
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_DISTANCE:F

    .line 137
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->AI_CIV_AGGRESSION:F

    return-void
.end method
