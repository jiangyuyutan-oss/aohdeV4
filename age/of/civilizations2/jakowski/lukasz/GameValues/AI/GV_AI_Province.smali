.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;
.super Ljava/lang/Object;
.source "GV_AI_Province.java"


# instance fields
.field public ASSIMILATE_STABILITY_TO_TURNS_DIVISOR:F

.field public BUILD_INVEST_MIN_MOVEMENT_POINTS:I

.field public BUILD_MAX_REV_RISK:F

.field public BUILD_MIN_STABILITY:F

.field public DANGER_AT_WAR_RELATION_MULTIPLIER:F

.field public DANGER_CAPITAL_SEA_BASE:I

.field public DANGER_CAPITAL_SEA_PER_NEIGHBOR:I

.field public DANGER_DIFFERENT_CIV_BASE:F

.field public DANGER_DIFFERENT_CIV_BASE_CAPITAL:F

.field public DANGER_EXTRA_AT_WAR:I

.field public DANGER_LEVEL_BASE:I

.field public DANGER_NEIGHBOR_PROVINCE_LOST_MULTIPLIER:F

.field public DANGER_NEIGH_PROVINCE_AT_WAR:I

.field public DANGER_NEIGH_PROVINCE_AT_WAR_CAPITAL:I

.field public DANGER_NEIGH_PROVINCE_AT_WAR_WAS_ATTACKED_MODIFIER:F

.field public DANGER_NEIGH_PROVINCE_DIFFERENT_CIV:I

.field public DANGER_NEIGH_PROVINCE_DIFFERENT_CIV_CAPITAL:I

.field public DANGER_PREPARE_FOR_WAR_BASE:F

.field public DANGER_PREPARE_FOR_WAR_TURNS_LEFT:F

.field public DANGER_PROVINCE_COUNT_BASE:F

.field public DANGER_PROVINCE_COUNT_MAX:F

.field public DANGER_PROVINCE_WAS_ATTACKED:I

.field public DANGER_PROVINCE_WAS_ATTACKED_ARMY_IN_PROVINCE_MODIFIER_100:I

.field public DANGER_PROVINCE_WAS_ATTACKED_CAPITAL:I

.field public DANGER_RELATION_BASE:F

.field public DANGER_RELATION_DIVISOR:F

.field public DANGER_RELATION_MIN:F

.field public DANGER_REV_RISK_MODIFIER:F

.field public DANGER_SEA_AT_WAR:F

.field public DANGER_SEA_AT_WAR_CAPITAL:F

.field public DANGER_SEA_BAD_RELATIONS:F

.field public DANGER_SEA_BAD_RELATIONS_CAPITAL:F

.field public DANGER_SEA_BAD_RELATIONS_VALUE:I

.field public EXTRA_INVEST_DEVELOPMENT_MIN_TURN_ID:I

.field public EXTRA_INVEST_ECO_EVERY_X_TURN:I

.field public HAPPINESS_CRISIS_BASE:I

.field public HAPPINESS_CRISIS_RANDOM:I

.field public MIN_GOLD_TO_BUILD:I

.field public MIN_GOLD_TO_INVEST:I

.field public MIN_HAPPINESS_TO_ASSIMILATE_PROVINCE:F

.field public POTENTIAL_BASE:I

.field public POTENTIAL_CAPITAL:I

.field public POTENTIAL_DEVELOPMENT:I

.field public POTENTIAL_ECONOMY:I

.field public POTENTIAL_FORT_REDUCTION_MULTIPLIER:F

.field public POTENTIAL_GROWTH_RATE:I

.field public POTENTIAL_LVL_FARM:I

.field public POTENTIAL_LVL_FORT:I

.field public POTENTIAL_LVL_PORT:I

.field public POTENTIAL_LVL_WATCH_TOWER:I

.field public POTENTIAL_LVL_WORKSHOP:I

.field public POTENTIAL_NEIGHBOR_DIFFERENT_OWNER_FLAT_PENALTY:I

.field public POTENTIAL_NEIGHBOR_DIFFERENT_OWNER_MODIFIER:F

.field public POTENTIAL_NEIGHBOR_SAME_OWNER_BONUS:I

.field public POTENTIAL_NEUTRAL_BASE:I

.field public POTENTIAL_NEUTRAL_GROWTH_RATE_BASE:I

.field public POTENTIAL_NEUTRAL_GROWTH_RATE_NEIGH_PROVINCES_BASE:I

.field public POTENTIAL_NEUTRAL_GROWTH_RATE_NEIGH_PROVINCES_BASE_MODIFIER:F

.field public POTENTIAL_NEUTRAL_GROWTH_RATE_NEIGH_PROVINCES_BASE_PER_PROVINCE:F

.field public POTENTIAL_NEUTRAL_NEIGH_BASE:I

.field public POTENTIAL_NEUTRAL_NEIGH_GROWTH_MULTIPLIER:F

.field public POTENTIAL_POPULATION:I

.field public PROVINCE_WAS_ATTACKED_TURNS:I

.field public RELOCATE_CAPITAL_ECONOMY_DIVISOR:F

.field public RELOCATE_CAPITAL_TOTAL_POPULATION_DIVISOR:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3ef0a3d7  # 0.47f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->MIN_HAPPINESS_TO_ASSIMILATE_PROVINCE:F

    .line 7
    const v0, 0x3f35c28f  # 0.71f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->BUILD_MIN_STABILITY:F

    .line 8
    const v0, 0x3d4ccccd  # 0.05f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->BUILD_MAX_REV_RISK:F

    .line 10
    const v0, 0x3fdcac08  # 1.724f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->ASSIMILATE_STABILITY_TO_TURNS_DIVISOR:F

    .line 12
    const/high16 v0, 0x41700000  # 15.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->RELOCATE_CAPITAL_TOTAL_POPULATION_DIVISOR:F

    .line 13
    const/high16 v0, 0x40c00000  # 6.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->RELOCATE_CAPITAL_ECONOMY_DIVISOR:F

    .line 15
    const/16 v0, 0x36

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->HAPPINESS_CRISIS_BASE:I

    .line 16
    const/16 v0, 0xc

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->HAPPINESS_CRISIS_RANDOM:I

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->PROVINCE_WAS_ATTACKED_TURNS:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_LEVEL_BASE:I

    .line 22
    const/16 v1, 0x1c2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_EXTRA_AT_WAR:I

    .line 24
    const v1, 0x3f39999a  # 0.725f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PREPARE_FOR_WAR_BASE:F

    .line 25
    const v1, 0x3e8ccccd  # 0.275f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PREPARE_FOR_WAR_TURNS_LEFT:F

    .line 27
    const/16 v1, 0x37

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PROVINCE_WAS_ATTACKED_CAPITAL:I

    .line 28
    const/16 v1, 0xa

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PROVINCE_WAS_ATTACKED:I

    .line 29
    const/16 v1, 0x23

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PROVINCE_WAS_ATTACKED_ARMY_IN_PROVINCE_MODIFIER_100:I

    .line 31
    const/high16 v1, 0x42c80000  # 100.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_REV_RISK_MODIFIER:F

    .line 33
    const/16 v1, 0x18

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGH_PROVINCE_AT_WAR:I

    .line 34
    const/16 v2, 0x40

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGH_PROVINCE_AT_WAR_CAPITAL:I

    .line 35
    const v2, 0x3fe33333  # 1.775f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGH_PROVINCE_AT_WAR_WAS_ATTACKED_MODIFIER:F

    .line 37
    const/4 v2, 0x6

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGH_PROVINCE_DIFFERENT_CIV:I

    .line 38
    const/16 v2, 0xe

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGH_PROVINCE_DIFFERENT_CIV_CAPITAL:I

    .line 40
    const/high16 v2, 0x42430000  # 48.75f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_DIFFERENT_CIV_BASE_CAPITAL:F

    .line 41
    const v2, 0x4205cccd  # 33.45f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_DIFFERENT_CIV_BASE:F

    .line 43
    const/high16 v2, 0x409c0000  # 4.875f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_AT_WAR_RELATION_MULTIPLIER:F

    .line 44
    const/high16 v2, 0x3f400000  # 0.75f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_RELATION_MIN:F

    .line 45
    const v2, 0x3fc66666  # 1.55f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_RELATION_BASE:F

    .line 46
    const/high16 v2, 0x41c80000  # 25.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_RELATION_DIVISOR:F

    .line 48
    const/high16 v2, 0x3f200000  # 0.625f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PROVINCE_COUNT_BASE:F

    .line 49
    const v2, 0x3fb5c28f  # 1.42f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_PROVINCE_COUNT_MAX:F

    .line 51
    const/16 v2, 0x7d

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_CAPITAL_SEA_BASE:I

    .line 52
    const/16 v2, 0x19

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_CAPITAL_SEA_PER_NEIGHBOR:I

    .line 54
    const/high16 v2, 0x41e60000  # 28.75f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_SEA_AT_WAR_CAPITAL:F

    .line 55
    const v2, 0x416deb85  # 14.87f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_SEA_AT_WAR:F

    .line 57
    const/high16 v2, 0x410c0000  # 8.75f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_SEA_BAD_RELATIONS_CAPITAL:F

    .line 58
    const v2, 0x409bd70a  # 4.87f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_SEA_BAD_RELATIONS:F

    .line 60
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_SEA_BAD_RELATIONS_VALUE:I

    .line 62
    const v0, 0x3e19999a  # 0.15f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->DANGER_NEIGHBOR_PROVINCE_LOST_MULTIPLIER:F

    .line 64
    const/16 v0, 0xf5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_BASE:I

    .line 66
    const/16 v0, 0xeb

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_POPULATION:I

    .line 67
    const/16 v0, 0xb9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_GROWTH_RATE:I

    .line 68
    const/16 v0, 0xaf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_ECONOMY:I

    .line 69
    const/16 v0, 0x73

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_DEVELOPMENT:I

    .line 71
    const/16 v0, 0x8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_LVL_PORT:I

    .line 72
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_LVL_FORT:I

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_LVL_FARM:I

    .line 74
    const/4 v2, 0x7

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_LVL_WORKSHOP:I

    .line 75
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_LVL_WATCH_TOWER:I

    .line 77
    const/16 v0, 0xe1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_BASE:I

    .line 78
    const/16 v0, 0x177

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_GROWTH_RATE_BASE:I

    .line 79
    const/16 v0, 0x113

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_GROWTH_RATE_NEIGH_PROVINCES_BASE:I

    .line 80
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_GROWTH_RATE_NEIGH_PROVINCES_BASE_MODIFIER:F

    .line 81
    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_GROWTH_RATE_NEIGH_PROVINCES_BASE_PER_PROVINCE:F

    .line 83
    const/16 v0, 0x17

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_CAPITAL:I

    .line 85
    const v0, 0x3f59999a  # 0.85f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEIGHBOR_DIFFERENT_OWNER_MODIFIER:F

    .line 86
    const/16 v0, -0x18

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEIGHBOR_DIFFERENT_OWNER_FLAT_PENALTY:I

    .line 88
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEIGHBOR_SAME_OWNER_BONUS:I

    .line 90
    const/16 v0, 0x9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_NEIGH_BASE:I

    .line 91
    const/high16 v0, 0x42380000  # 46.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_NEUTRAL_NEIGH_GROWTH_MULTIPLIER:F

    .line 93
    const v0, 0x3f74e3bd  # 0.9566f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->POTENTIAL_FORT_REDUCTION_MULTIPLIER:F

    .line 95
    const/16 v0, 0xb

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->BUILD_INVEST_MIN_MOVEMENT_POINTS:I

    .line 97
    const/16 v0, 0xdac

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->MIN_GOLD_TO_BUILD:I

    .line 98
    const/16 v0, 0x3e8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->MIN_GOLD_TO_INVEST:I

    .line 100
    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->EXTRA_INVEST_DEVELOPMENT_MIN_TURN_ID:I

    .line 102
    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->EXTRA_INVEST_ECO_EVERY_X_TURN:I

    return-void
.end method
