.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;
.super Ljava/lang/Object;
.source "GV_AI_Diplomacy.java"


# instance fields
.field public ADD_RIVAL_IMPOSE_SANCTIONS_CHANCE_1000:I

.field public ALLIANCE_RANDOM_ACCEPT_CHANCE_PER_1000:I

.field public ALLY_CHOOSE_RANDOM_CHANCE_100:I

.field public CITY_STATE_CHANGE_GOVERNMENT_IF_PROVINCES_OVER:I

.field public CITY_STATE_SEND_GIFT_CHANCE_1000:I

.field public DECLARATION_OF_INDEPENDENCE_BUDGET_MODIFIER:F

.field public DECLARATION_OF_INDEPENDENCE_BY_VASSAL_BUDGET_MODIFIER:F

.field public DEFENSIVE_PACT_ACCEPT_MIN_RELATION:I

.field public DEFENSIVE_PACT_ACCEPT_SAME_RIVALS_REQUIRED:Z

.field public DEFENSIVE_PACT_RENEW_CHANCE_100:I

.field public DEMAND_VASSALIZATION_CHECK_CHANCE_100:I

.field public DEMAND_VASSALIZATION_CIV_FROM_BUDGET_MODIFIER:F

.field public DEMAND_VASSALIZATION_MODULO_TURN:I

.field public DEMAND_VASSALIZATION_MODULO_TURN_CHECK_IF:I

.field public ENABLE_AI_UNIONS_DIFFERENT_RELIGION:Z

.field public GIFT_GUARANTEE_MAX_FROM_CIV_PROVINCES:I

.field public GIFT_GUARANTEE_MIN_OWN_PROVINCES:I

.field public GIFT_HATED_CIV_THRESHOLD:F

.field public GIFT_HATED_CIV_THRESHOLD_RANDOM_1000:I

.field public GIFT_IMPROVE_RELATIONS_HATED_TURNS_MIN:I

.field public GIFT_IMPROVE_RELATIONS_HATED_TURNS_RANDOM:I

.field public GIFT_IMPROVE_RELATIONS_TURNS_MIN:I

.field public GIFT_IMPROVE_RELATIONS_TURNS_RANDOM:I

.field public GIFT_LOW_BUDGET_DECLINE_THRESHOLD:F

.field public GIFT_LOW_BUDGET_DECLINE_THRESHOLD_RANDOM_1000:I

.field public GIFT_RELATION_IMPROVE_THRESHOLD:F

.field public GIFT_RELATION_IMPROVE_THRESHOLD_RANDOM_1000:I

.field public GUARANTEE_DECLINE_BUDGET_MODIFIER_FROM_CIV:F

.field public LOAD_LEADERS_IGNORE_BIRTH_YEAR:Z

.field public MILITARY_ACCESS_ACCEPT_MIN_SCORE:F

.field public MILITARY_ACCESS_ALLIANCE_PENALTY_MULT:F

.field public MILITARY_ACCESS_BASE_SCORE:F

.field public MILITARY_ACCESS_DENIED_GOLD_OFFER_BASE:F

.field public MILITARY_ACCESS_DENIED_GOLD_OFFER_BUDGET_MULT:F

.field public MILITARY_ACCESS_DENIED_GOLD_OFFER_RANDOM_1000:I

.field public MILITARY_ACCESS_SCORE_ALLY_AT_WAR:F

.field public MILITARY_ACCESS_SCORE_EXISTING_INCOMING:F

.field public MILITARY_ACCESS_SCORE_EXISTING_OUTGOING:F

.field public MILITARY_ACCESS_SCORE_GUARANTEE:F

.field public MILITARY_ACCESS_SCORE_HRE_CIV_FROM_IS_NOT_IN_HRE:F

.field public MILITARY_ACCESS_SCORE_HRE_EMPEROR:F

.field public MILITARY_ACCESS_SCORE_HRE_FRIENDLY:F

.field public MILITARY_ACCESS_SCORE_HRE_FRIENDLY_MIN_RELATION:F

.field public MILITARY_ACCESS_SCORE_SHARED_WAR:F

.field public NONAGGRESSION_PACT_RENEW_CHANCE_100:I

.field public NON_AGGRESSION_PACT_ACCEPT_MIN_RELATION:I

.field public OFFER_VASSALIZATION_BUDGET_RATIO_TO_ACCEPT:F

.field public OFFER_VASSALIZATION_BUDGET_RATIO_TO_ACCEPT_EXTRA_PER_VASSAL:F

.field public OFFER_VASSALIZATION_MIN_RELATION:F

.field public PREPARE_FOR_WAR_ACCEPT_MIN_RELATION:I

.field public REMOVE_MESSAGES_TURNS:I

.field public ULTIMATUM_ANNEXATION_GOLD_TO_MODIFIER:F

.field public ULTIMATUM_ANNEXATION_MAX_NUM_OF_ULTIMATUMS_SENT_BY_PLAYER:I

.field public ULTIMATUM_ANNEXATION_MIN_RANK_TO_ACCEPT:I

.field public ULTIMATUM_ANNEXATION_MIN_RELATION_TO_ACCEPT:I

.field public ULTIMATUM_ANNEXATION_UNITS_FROM_MODIFIER:F

.field public ULTIMATUM_ANNEXATION_UNITS_TO_MODIFIER:F

.field public ULTIMATUM_CHANGE_GOV_GOLD_TO_MODIFIER:F

.field public ULTIMATUM_CHANGE_GOV_UNITS_FROM_MODIFIER:F

.field public ULTIMATUM_CHANGE_GOV_UNITS_TO_MODIFIER:F

.field public ULTIMATUM_LIBERATION_GOLD_TO_MODIFIER:F

.field public ULTIMATUM_LIBERATION_UNITS_FROM_MODIFIER:F

.field public ULTIMATUM_LIBERATION_UNITS_TO_MODIFIER:F

.field public ULTIMATUM_MILITARY_ACCESS_GOLD_TO_MODIFIER:F

.field public ULTIMATUM_MILITARY_ACCESS_UNITS_FROM_MODIFIER:F

.field public ULTIMATUM_MILITARY_ACCESS_UNITS_TO_MODIFIER:F

.field public ULTIMATUM_PROVINCES_GOLD_TO_MODIFIER:F

.field public ULTIMATUM_PROVINCES_MAX_NUM_OF_ULTIMATUMS_SENT_BY_PLAYER:I

.field public ULTIMATUM_PROVINCES_MIN_RANK_TO_ACCEPT:I

.field public ULTIMATUM_PROVINCES_MIN_RELATION_TO_ACCEPT:I

.field public ULTIMATUM_PROVINCES_REFUSE_DECLARE_WAR_BUDGET_MODIFIER:F

.field public ULTIMATUM_PROVINCES_REFUSE_DEMAND_VS_NUM_OF_PROVINCES_MODIFIER:F

.field public ULTIMATUM_PROVINCES_UNITS_FROM_MODIFIER:F

.field public ULTIMATUM_PROVINCES_UNITS_TO_MODIFIER:F

.field public ULTIMATUM_REFUSED_RESPONSE_ARMY_CIV_MODIFIER:F

.field public ULTIMATUM_REFUSE_SANCTIONS_CHANCE_1000:I

.field public ULTIMATUM_VASSALIZATION_GOLD_TO_MODIFIER:F

.field public ULTIMATUM_VASSALIZATION_MIN_RANK_TO_ACCEPT:I

.field public ULTIMATUM_VASSALIZATION_MIN_RELATION_TO_ACCEPT:I

.field public ULTIMATUM_VASSALIZATION_REFUSE_DECLARE_WAR_BUDGET_MODIFIER:F

.field public ULTIMATUM_VASSALIZATION_UNITS_FROM_MODIFIER:F

.field public ULTIMATUM_VASSALIZATION_UNITS_TO_MODIFIER:F

.field public UNION_ALLY_MIN_RELATION:I

.field public UNION_ALLY_NUM_OF_PROVINCES_MODIFIER:F

.field public UNION_MAX_NUM_OF_UNIONS:I

.field public UNION_MIN_LEAGUE:I

.field public UNION_MIN_RELATION:I

.field public UNION_NUM_OF_PROVINCES_MODIFIER:F

.field public UNION_SECOND_UNION_MAX_PROVINCES:I


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->LOAD_LEADERS_IGNORE_BIRTH_YEAR:Z

    .line 7
    const/16 v1, 0x14

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->REMOVE_MESSAGES_TURNS:I

    .line 9
    const/16 v2, 0x56

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ADD_RIVAL_IMPOSE_SANCTIONS_CHANCE_1000:I

    .line 11
    const/16 v2, 0x1b

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ALLIANCE_RANDOM_ACCEPT_CHANCE_PER_1000:I

    .line 12
    const/4 v2, 0x5

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ALLY_CHOOSE_RANDOM_CHANCE_100:I

    .line 14
    const/16 v3, -0x23

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->NON_AGGRESSION_PACT_ACCEPT_MIN_RELATION:I

    .line 16
    const/4 v3, -0x5

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->PREPARE_FOR_WAR_ACCEPT_MIN_RELATION:I

    .line 18
    const/16 v3, 0xf

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->DEFENSIVE_PACT_ACCEPT_MIN_RELATION:I

    .line 19
    const/4 v3, 0x1

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->DEFENSIVE_PACT_ACCEPT_SAME_RIVALS_REQUIRED:Z

    .line 21
    const/16 v3, 0x9

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->DEFENSIVE_PACT_RENEW_CHANCE_100:I

    .line 22
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->NONAGGRESSION_PACT_RENEW_CHANCE_100:I

    .line 24
    const v4, 0x3f48f5c3  # 0.785f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_HATED_CIV_THRESHOLD:F

    .line 25
    const/16 v5, 0x64

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_HATED_CIV_THRESHOLD_RANDOM_1000:I

    .line 27
    const v6, 0x3ea3d70a  # 0.32f

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_LOW_BUDGET_DECLINE_THRESHOLD:F

    .line 28
    const/16 v6, 0x55

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_LOW_BUDGET_DECLINE_THRESHOLD_RANDOM_1000:I

    .line 30
    const v6, 0x3e570a3d  # 0.21f

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_RELATION_IMPROVE_THRESHOLD:F

    .line 31
    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_RELATION_IMPROVE_THRESHOLD_RANDOM_1000:I

    .line 33
    const/4 v5, 0x4

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_IMPROVE_RELATIONS_HATED_TURNS_MIN:I

    .line 34
    const/16 v5, 0xa

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_IMPROVE_RELATIONS_HATED_TURNS_RANDOM:I

    .line 36
    const/4 v5, 0x6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_IMPROVE_RELATIONS_TURNS_MIN:I

    .line 37
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_IMPROVE_RELATIONS_TURNS_RANDOM:I

    .line 39
    const/4 v5, 0x3

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_GUARANTEE_MIN_OWN_PROVINCES:I

    .line 40
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GIFT_GUARANTEE_MAX_FROM_CIV_PROVINCES:I

    .line 42
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->GUARANTEE_DECLINE_BUDGET_MODIFIER_FROM_CIV:F

    .line 44
    const v4, -0x3f06e148  # -7.785f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_BASE_SCORE:F

    .line 45
    const/high16 v4, 0x40700000  # 3.75f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_SCORE_EXISTING_OUTGOING:F

    .line 46
    const/high16 v4, 0x40880000  # 4.25f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_SCORE_EXISTING_INCOMING:F

    .line 47
    const/high16 v4, 0x414c0000  # 12.75f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_SCORE_GUARANTEE:F

    .line 49
    const/high16 v4, -0x3e900000  # -15.0f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_SCORE_HRE_FRIENDLY_MIN_RELATION:F

    .line 50
    const v4, 0x414d999a  # 12.85f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_SCORE_HRE_FRIENDLY:F

    .line 51
    const/high16 v4, 0x437a0000  # 250.0f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_SCORE_HRE_EMPEROR:F

    .line 52
    const/high16 v4, -0x3f780000  # -4.25f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_SCORE_HRE_CIV_FROM_IS_NOT_IN_HRE:F

    .line 54
    const v4, 0x40ef3333  # 7.475f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_ALLIANCE_PENALTY_MULT:F

    .line 55
    const v4, -0x3b448000  # -1500.0f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_SCORE_ALLY_AT_WAR:F

    .line 57
    const/high16 v4, 0x447a0000  # 1000.0f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_SCORE_SHARED_WAR:F

    .line 59
    const/4 v4, 0x0

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_ACCEPT_MIN_SCORE:F

    .line 61
    const/high16 v4, 0x3fb00000  # 1.375f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_DENIED_GOLD_OFFER_BUDGET_MULT:F

    .line 62
    const v4, 0x3ed9999a  # 0.425f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_DENIED_GOLD_OFFER_BASE:F

    .line 63
    const/16 v4, 0x145

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->MILITARY_ACCESS_DENIED_GOLD_OFFER_RANDOM_1000:I

    .line 65
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_ANNEXATION_MAX_NUM_OF_ULTIMATUMS_SENT_BY_PLAYER:I

    .line 66
    const/16 v1, 0x1e

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_PROVINCES_MAX_NUM_OF_ULTIMATUMS_SENT_BY_PLAYER:I

    .line 68
    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_PROVINCES_REFUSE_DEMAND_VS_NUM_OF_PROVINCES_MODIFIER:F

    .line 70
    const/16 v1, -0x46

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_ANNEXATION_MIN_RELATION_TO_ACCEPT:I

    .line 71
    const/16 v4, 0x19

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_ANNEXATION_MIN_RANK_TO_ACCEPT:I

    .line 72
    const/high16 v6, 0x3e800000  # 0.25f

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_ANNEXATION_UNITS_FROM_MODIFIER:F

    .line 73
    const v7, 0x3f8ccccd  # 1.1f

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_ANNEXATION_UNITS_TO_MODIFIER:F

    .line 74
    const/high16 v8, 0x40100000  # 2.25f

    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_ANNEXATION_GOLD_TO_MODIFIER:F

    .line 76
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_PROVINCES_MIN_RELATION_TO_ACCEPT:I

    .line 77
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_PROVINCES_MIN_RANK_TO_ACCEPT:I

    .line 79
    const v9, 0x3e23d70a  # 0.16f

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_PROVINCES_UNITS_FROM_MODIFIER:F

    .line 80
    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_PROVINCES_UNITS_TO_MODIFIER:F

    .line 81
    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_PROVINCES_GOLD_TO_MODIFIER:F

    .line 83
    const v9, 0x3f6a9fbe  # 0.9165f

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_PROVINCES_REFUSE_DECLARE_WAR_BUDGET_MODIFIER:F

    .line 85
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_VASSALIZATION_MIN_RELATION_TO_ACCEPT:I

    .line 86
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_VASSALIZATION_MIN_RANK_TO_ACCEPT:I

    .line 88
    const v1, 0x3e3851ec  # 0.18f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_VASSALIZATION_UNITS_FROM_MODIFIER:F

    .line 89
    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_VASSALIZATION_UNITS_TO_MODIFIER:F

    .line 90
    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_VASSALIZATION_GOLD_TO_MODIFIER:F

    .line 92
    const v1, 0x3f5d70a4  # 0.865f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_VASSALIZATION_REFUSE_DECLARE_WAR_BUDGET_MODIFIER:F

    .line 94
    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_CHANGE_GOV_UNITS_FROM_MODIFIER:F

    .line 95
    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_CHANGE_GOV_UNITS_TO_MODIFIER:F

    .line 96
    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_CHANGE_GOV_GOLD_TO_MODIFIER:F

    .line 98
    const v1, 0x3f39999a  # 0.725f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_MILITARY_ACCESS_UNITS_FROM_MODIFIER:F

    .line 99
    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_MILITARY_ACCESS_UNITS_TO_MODIFIER:F

    .line 100
    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_MILITARY_ACCESS_GOLD_TO_MODIFIER:F

    .line 102
    const v1, 0x3eb851ec  # 0.36f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_LIBERATION_UNITS_FROM_MODIFIER:F

    .line 103
    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_LIBERATION_UNITS_TO_MODIFIER:F

    .line 104
    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_LIBERATION_GOLD_TO_MODIFIER:F

    .line 106
    const/16 v1, 0xa4

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_REFUSE_SANCTIONS_CHANCE_1000:I

    .line 108
    const/16 v1, -0xa

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->UNION_MIN_LEAGUE:I

    .line 109
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->UNION_SECOND_UNION_MAX_PROVINCES:I

    .line 110
    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->UNION_MAX_NUM_OF_UNIONS:I

    .line 112
    const/16 v1, 0x31

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->UNION_ALLY_MIN_RELATION:I

    .line 113
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->UNION_ALLY_NUM_OF_PROVINCES_MODIFIER:F

    .line 115
    const/16 v3, 0x3c

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->UNION_MIN_RELATION:I

    .line 116
    const/high16 v3, 0x3fc00000  # 1.5f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->UNION_NUM_OF_PROVINCES_MODIFIER:F

    .line 118
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ENABLE_AI_UNIONS_DIFFERENT_RELIGION:Z

    .line 120
    const/high16 v0, 0x41540000  # 13.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->OFFER_VASSALIZATION_BUDGET_RATIO_TO_ACCEPT:F

    .line 121
    const/high16 v0, 0x40900000  # 4.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->OFFER_VASSALIZATION_BUDGET_RATIO_TO_ACCEPT_EXTRA_PER_VASSAL:F

    .line 122
    const/high16 v0, 0x41a00000  # 20.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->OFFER_VASSALIZATION_MIN_RELATION:F

    .line 124
    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->DECLARATION_OF_INDEPENDENCE_BUDGET_MODIFIER:F

    .line 125
    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->DECLARATION_OF_INDEPENDENCE_BY_VASSAL_BUDGET_MODIFIER:F

    .line 127
    const/16 v0, 0x2a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->CITY_STATE_SEND_GIFT_CHANCE_1000:I

    .line 128
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->CITY_STATE_CHANGE_GOVERNMENT_IF_PROVINCES_OVER:I

    .line 130
    const/16 v0, 0x5c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->DEMAND_VASSALIZATION_MODULO_TURN:I

    .line 131
    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->DEMAND_VASSALIZATION_MODULO_TURN_CHECK_IF:I

    .line 133
    const/4 v0, 0x7

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->DEMAND_VASSALIZATION_CHECK_CHANCE_100:I

    .line 135
    const v0, 0x3ecccccd  # 0.4f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->DEMAND_VASSALIZATION_CIV_FROM_BUDGET_MODIFIER:F

    .line 137
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Diplomacy;->ULTIMATUM_REFUSED_RESPONSE_ARMY_CIV_MODIFIER:F

    return-void
.end method
