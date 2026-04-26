.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;
.super Ljava/lang/Object;
.source "GV_Trade.java"


# instance fields
.field public AI_TRADE_ACCEPT_PROVINCES_MAX_GOLD_PER_PROVINCE:F

.field public AI_TRADE_ACCEPT_PROVINCES_ONLY_IF_TREASURY_AFTER_PAYING_IS_OVER:F

.field public AI_TRADE_DEFENSIVE_INCOME_MULTIPLIER:F

.field public AI_TRADE_DEFENSIVE_RELATION_GOLD_MAX:F

.field public AI_TRADE_MAX_PROVINCE_SHARE_TO_ACCEPT:F

.field public AI_TRADE_MILITARY_ACCESS_BUDGET_MULTIPLIER:F

.field public AI_TRADE_MILITARY_ACCESS_BUDGET_MULTIPLIER_AT_WAR_WITH_FRIENDLY:F

.field public AI_TRADE_MILITARY_ACCESS_BUDGET_MULTIPLIER_FROM_HATED_CIV:F

.field public AI_TRADE_PROVINCE_COST_MULTIPLIER:F

.field public AI_TRADE_PROVINCE_INCOME_PRODUCTION_WEIGHT:F

.field public AI_TRADE_PROVINCE_INCOME_TAXATION_WEIGHT:F

.field public AI_TRADE_PROVINCE_MIN_COST:F

.field public COST_OFFER_TRADE_REQUEST_DIPLOMACY_POINTS:I

.field public DECLARE_WAR_CIV_GOLD_PER_ENEMY_UNIT:F

.field public DECLARE_WAR_CIV_INCOME_MULTIPLIER:F

.field public DECLARE_WAR_CIV_POP_MODIFIER:F

.field public DECLARE_WAR_MAGIC_NUM_ALWAYS_ACCEPT:I

.field public PROCLAIM_INDEPENDENCE_MAX_PROVINCES:I

.field public PROCLAIM_THEIR_INDEPENDENCE_CIVS_LIMIT:I

.field public TRADE_REQUESTS_RESPONSE:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->COST_OFFER_TRADE_REQUEST_DIPLOMACY_POINTS:I

    .line 7
    const v0, 0x3f59999a  # 0.85f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->DECLARE_WAR_CIV_POP_MODIFIER:F

    .line 8
    const/high16 v0, 0x41200000  # 10.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->DECLARE_WAR_CIV_GOLD_PER_ENEMY_UNIT:F

    .line 9
    const/high16 v1, 0x41bc0000  # 23.5f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->DECLARE_WAR_CIV_INCOME_MULTIPLIER:F

    .line 11
    const/16 v1, 0x29a

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->DECLARE_WAR_MAGIC_NUM_ALWAYS_ACCEPT:I

    .line 13
    const v1, 0x3e19999a  # 0.15f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_MAX_PROVINCE_SHARE_TO_ACCEPT:F

    .line 15
    const/high16 v1, 0x3fc00000  # 1.5f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_PROVINCE_INCOME_TAXATION_WEIGHT:F

    .line 16
    const/high16 v1, 0x40000000  # 2.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_PROVINCE_INCOME_PRODUCTION_WEIGHT:F

    .line 17
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_PROVINCE_MIN_COST:F

    .line 19
    const/high16 v0, 0x43610000  # 225.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_PROVINCE_COST_MULTIPLIER:F

    .line 21
    const/high16 v0, 0x40a00000  # 5.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_DEFENSIVE_INCOME_MULTIPLIER:F

    .line 22
    const/high16 v0, 0x42480000  # 50.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_DEFENSIVE_RELATION_GOLD_MAX:F

    .line 24
    const/high16 v0, 0x43480000  # 200.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_ACCEPT_PROVINCES_MAX_GOLD_PER_PROVINCE:F

    .line 25
    const v0, -0x3ae3c000  # -2500.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_ACCEPT_PROVINCES_ONLY_IF_TREASURY_AFTER_PAYING_IS_OVER:F

    .line 27
    const v0, 0x4105999a  # 8.35f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_MILITARY_ACCESS_BUDGET_MULTIPLIER_AT_WAR_WITH_FRIENDLY:F

    .line 28
    const v0, 0x40166666  # 2.35f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_MILITARY_ACCESS_BUDGET_MULTIPLIER_FROM_HATED_CIV:F

    .line 29
    const v0, 0x3e333333  # 0.175f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->AI_TRADE_MILITARY_ACCESS_BUDGET_MULTIPLIER:F

    .line 31
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->PROCLAIM_INDEPENDENCE_MAX_PROVINCES:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->PROCLAIM_THEIR_INDEPENDENCE_CIVS_LIMIT:I

    .line 34
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Trade;->TRADE_REQUESTS_RESPONSE:Z

    return-void
.end method
