.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;
.super Ljava/lang/Object;
.source "GV_AI_DeclareWar.java"


# instance fields
.field public AI_CONQUER_OWN_VASSALS_CHANCE:I

.field public AI_CONQUER_OWN_VASSALS_IF_OVER:I

.field public AI_CONQUER_VASSALS:Z

.field public AI_DECLARE_WAR_ALLIES_ARMY_MODIFIER:F

.field public AI_DECLARE_WAR_ALLIES_ARMY_MODIFIER_DEFENDERS:F

.field public AI_DECLARE_WAR_DEFENDER_ARMY_MODIFIER:F

.field public AI_DECLARE_WAR_ONLY_IF_GOLD_OVER:I

.field public AI_DECLARE_WAR_ONLY_IF_HAPPINESS_OVER:F

.field public AI_DECLARE_WAR_ONLY_IF_STABILITY_OVER:F

.field public AI_MAX_RELATION_TO_DECLARE_WAR:F

.field public AI_MAX_RELATION_TO_DECLARE_WAR_WITH_PLAYER:F

.field public AI_PREPARE_FOR_WAR_AGAINST_OWN_VASSAL_CHANCE:I

.field public AI_PREPARE_FOR_WAR_CHECK_LIMIT:I

.field public AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CIV_ARMY_MAX_CHANCE:I

.field public AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CIV_PROVINCES_CHANCE:I

.field public AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CLOSEST_CIV_ALL_PROVINCES_CHANCE:I

.field public AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CLOSEST_CIV_CAPITAL_CHANCE:I

.field public AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_RANDOM_NUMBER:I

.field public AI_PREPARE_FOR_WAR_CIVS_LIMIT:I

.field public AI_PREPARE_FOR_WAR_CLOSEST_CIV_CHANCE:I

.field public AI_PREPARE_FOR_WAR_CLOSEST_CIV_CIVS_LIMIT:I

.field public AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_LIMIT:I

.field public AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_TOP_RANK_CIVS:I

.field public AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_TOP_RANK_CIVS_CHANCE:I

.field public AI_PREPARE_FOR_WAR_PRIORITIZE_NEIGHBORS_TRIBAL_CHANCE:I

.field public AI_PREPARE_FOR_WAR_PRIORITIZE_TRIBAL:Z

.field public BASE_WAR_CHECK_DELAY_TURNS:I

.field public BUDGET_MODIFIER_BASE:F

.field public BUDGET_MODIFIER_RANDOM_1000:I

.field public CIV_SIZE_MODIFIER:F

.field public DECLARE_WAR_TARGET_RELATION:I

.field public MIN_PROVINCES_FOR_NAVAL_ACTIONS:I

.field public NAVAL_EXPANSION_RANDOM_CHANCE_100:I

.field public PERSONALITY_AI_AGGRESSION_MIN:F

.field public PERSONALITY_AI_AGGRESSION_RANDOM:F

.field public RELATION_MODIFIER_BASE:F

.field public RELATION_MODIFIER_RANDOM_1000:I

.field public SCORE_CIV_AGGRESSION_DIVISOR:F

.field public SCORE_MAX_BUDGET_RATIO:F

.field public TRADE_RQ_COALITION_BRIBE_GOLD_MIN:I

.field public TRADE_RQ_COALITION_BRIBE_GOLD_PERC_OF_ARMY_MIN:F

.field public TRADE_RQ_COALITION_BRIBE_GOLD_PERC_OF_ARMY_RANDOM_100:I

.field public TRADE_RQ_COALITION_BRIBE_GOLD_RANDOM:I

.field public TRADE_RQ_COALITION_MIN_BUDGET_RATIO:F

.field public WAR_CHECK_CIV_COUNT_RANDOM_DIVISOR:F

.field public WAR_CHECK_CIV_COUNT_RANDOM_DIVISOR_2:F

.field public WAR_CHECK_DELAY_RANDOM_TURNS:I

.field public WAR_CHECK_DELAY_RANDOM_TURNS_AFTER_PREPARATION:I

.field public WAR_CHECK_DELAY_RANDOM_TURNS_TRIBAL:I

.field public WAR_PREPARATION_MIN_BUDGET_RATIO:F

.field public WAR_PREPARATION_MIN_TURNS:I

.field public WAR_PREPARATION_RANDOM_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3e99999a  # 0.3f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->PERSONALITY_AI_AGGRESSION_MIN:F

    .line 6
    const v0, 0x3f333333  # 0.7f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->PERSONALITY_AI_AGGRESSION_RANDOM:F

    .line 8
    const/high16 v0, 0x41f00000  # 30.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_MAX_RELATION_TO_DECLARE_WAR_WITH_PLAYER:F

    .line 9
    const/high16 v1, 0x42480000  # 50.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_MAX_RELATION_TO_DECLARE_WAR:F

    .line 11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_PRIORITIZE_TRIBAL:Z

    .line 12
    const/16 v1, 0x4a

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_PRIORITIZE_NEIGHBORS_TRIBAL_CHANCE:I

    .line 14
    const/4 v1, 0x4

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_TOP_RANK_CIVS:I

    .line 15
    const/16 v2, 0x13

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_TOP_RANK_CIVS_CHANCE:I

    .line 17
    const/16 v2, 0xa

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_LIMIT:I

    .line 19
    const/4 v2, 0x0

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_CONQUER_VASSALS:Z

    .line 20
    const/16 v2, 0x32

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_CONQUER_OWN_VASSALS_IF_OVER:I

    .line 21
    const/16 v3, 0x44

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_CONQUER_OWN_VASSALS_CHANCE:I

    .line 23
    const/4 v3, 0x6

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_AGAINST_OWN_VASSAL_CHANCE:I

    .line 25
    const/16 v3, 0x58

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CLOSEST_CIV_CHANCE:I

    .line 26
    const/4 v3, 0x5

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CLOSEST_CIV_CIVS_LIMIT:I

    .line 28
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CHECK_LIMIT:I

    .line 30
    const/16 v3, 0x64

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_RANDOM_NUMBER:I

    .line 31
    const/16 v4, 0x4e

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CLOSEST_CIV_ALL_PROVINCES_CHANCE:I

    .line 32
    const/16 v4, 0x5f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CLOSEST_CIV_CAPITAL_CHANCE:I

    .line 33
    const/16 v4, 0x60

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CIV_PROVINCES_CHANCE:I

    .line 34
    const/16 v4, 0x62

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CIV_ARMY_MAX_CHANCE:I

    .line 36
    const v4, 0x3f59999a  # 0.85f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_DECLARE_WAR_ALLIES_ARMY_MODIFIER:F

    .line 37
    const v4, 0x3f666666  # 0.9f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_DECLARE_WAR_ALLIES_ARMY_MODIFIER_DEFENDERS:F

    .line 39
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_DECLARE_WAR_DEFENDER_ARMY_MODIFIER:F

    .line 41
    const/4 v5, 0x2

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_PREPARE_FOR_WAR_CIVS_LIMIT:I

    .line 43
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_DECLARE_WAR_ONLY_IF_GOLD_OVER:I

    .line 45
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_DECLARE_WAR_ONLY_IF_STABILITY_OVER:F

    .line 46
    const v2, 0x42896666  # 68.7f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->AI_DECLARE_WAR_ONLY_IF_HAPPINESS_OVER:F

    .line 48
    const/16 v2, 0x26

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->BASE_WAR_CHECK_DELAY_TURNS:I

    .line 50
    const/16 v2, 0x16

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->WAR_CHECK_DELAY_RANDOM_TURNS:I

    .line 51
    const/16 v2, 0x19

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->WAR_CHECK_DELAY_RANDOM_TURNS_AFTER_PREPARATION:I

    .line 52
    const/16 v2, 0x23

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->WAR_CHECK_DELAY_RANDOM_TURNS_TRIBAL:I

    .line 54
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->WAR_CHECK_CIV_COUNT_RANDOM_DIVISOR:F

    .line 55
    const/high16 v0, 0x41c80000  # 25.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->WAR_CHECK_CIV_COUNT_RANDOM_DIVISOR_2:F

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->NAVAL_EXPANSION_RANDOM_CHANCE_100:I

    .line 58
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->MIN_PROVINCES_FOR_NAVAL_ACTIONS:I

    .line 60
    const/16 v2, -0x32

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->DECLARE_WAR_TARGET_RELATION:I

    .line 62
    const v2, 0x3fa33333  # 1.275f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->RELATION_MODIFIER_BASE:F

    .line 63
    const/16 v2, 0x3cf

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->RELATION_MODIFIER_RANDOM_1000:I

    .line 65
    const/high16 v2, 0x3e000000  # 0.125f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->BUDGET_MODIFIER_BASE:F

    .line 66
    const/16 v2, 0x6db

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->BUDGET_MODIFIER_RANDOM_1000:I

    .line 68
    const/high16 v2, 0x3f200000  # 0.625f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->CIV_SIZE_MODIFIER:F

    .line 70
    const v2, 0x3f31eb85  # 0.695f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->WAR_PREPARATION_MIN_BUDGET_RATIO:F

    .line 72
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->WAR_PREPARATION_MIN_TURNS:I

    .line 73
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->WAR_PREPARATION_RANDOM_TURNS:I

    .line 75
    const v0, 0x3f1ae148  # 0.605f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->TRADE_RQ_COALITION_MIN_BUDGET_RATIO:F

    .line 76
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->TRADE_RQ_COALITION_BRIBE_GOLD_MIN:I

    .line 77
    const/16 v0, 0x15e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->TRADE_RQ_COALITION_BRIBE_GOLD_RANDOM:I

    .line 78
    const v0, 0x3e4ccccd  # 0.2f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->TRADE_RQ_COALITION_BRIBE_GOLD_PERC_OF_ARMY_MIN:F

    .line 79
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->TRADE_RQ_COALITION_BRIBE_GOLD_PERC_OF_ARMY_RANDOM_100:I

    .line 81
    const v0, 0x3f733333  # 0.95f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->SCORE_MAX_BUDGET_RATIO:F

    .line 83
    const/high16 v0, 0x40800000  # 4.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_DeclareWar;->SCORE_CIV_AGGRESSION_DIVISOR:F

    return-void
.end method
