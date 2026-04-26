.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;
.super Ljava/lang/Object;
.source "GV_InvestEconomy.java"


# instance fields
.field public INVEST_ECONOMY_MIN_INCREASE_PER_TURN:I

.field public INVEST_ECO_COST_MOVEMENT_POINTS:I

.field public INVEST_ECO_GAIN_PER_GOLD_DEVELOPMENT_BASE:F

.field public INVEST_ECO_GAIN_PER_GOLD_DEVELOPMENT_MODIFIER:F

.field public INVEST_ECO_GAIN_PER_GOLD_DEVELOPMENT_MULTIPLY:F

.field public INVEST_ECO_GAIN_PER_GOLD_DIVIDE:F

.field public INVEST_ECO_GAIN_PER_GOLD_ECO_GROWTH_RATE_BASE:F

.field public INVEST_ECO_GAIN_PER_GOLD_ECO_GROWTH_RATE_MODIFIER:F

.field public INVEST_ECO_MAX_GOLD_DEVELOPMENT_BASE:F

.field public INVEST_ECO_MAX_GOLD_DEVELOPMENT_LIMIT:F

.field public INVEST_ECO_MAX_GOLD_DEVELOPMENT_MODIFIER:F

.field public INVEST_ECO_MAX_GOLD_ECONOMY_MODIFIER:F

.field public INVEST_ECO_MAX_GOLD_FINAL_MODIFIER:F

.field public INVEST_ECO_MAX_GOLD_POPULATION_MODIFIER:F

.field public INVEST_ECO_NUM_OF_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0xc

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_COST_MOVEMENT_POINTS:I

    .line 7
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_NUM_OF_TURNS:I

    .line 9
    const/high16 v0, 0x40d80000  # 6.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_MAX_GOLD_FINAL_MODIFIER:F

    .line 11
    const v0, 0x3ea66666  # 0.325f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_MAX_GOLD_ECONOMY_MODIFIER:F

    .line 12
    const v0, 0x3e87ae14  # 0.265f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_MAX_GOLD_POPULATION_MODIFIER:F

    .line 14
    const v0, 0x3f266666  # 0.65f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_MAX_GOLD_DEVELOPMENT_BASE:F

    .line 15
    const v0, 0x3eb33333  # 0.35f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_MAX_GOLD_DEVELOPMENT_MODIFIER:F

    .line 16
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_MAX_GOLD_DEVELOPMENT_LIMIT:F

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECONOMY_MIN_INCREASE_PER_TURN:I

    .line 20
    const/high16 v0, 0x40600000  # 3.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_GAIN_PER_GOLD_DIVIDE:F

    .line 22
    const v0, 0x3f466666  # 0.775f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_GAIN_PER_GOLD_DEVELOPMENT_BASE:F

    .line 23
    const v0, 0x3deb851f  # 0.115f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_GAIN_PER_GOLD_DEVELOPMENT_MODIFIER:F

    .line 24
    const v0, 0x3fc66666  # 1.55f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_GAIN_PER_GOLD_DEVELOPMENT_MULTIPLY:F

    .line 26
    const v0, 0x3e8ccccd  # 0.275f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_GAIN_PER_GOLD_ECO_GROWTH_RATE_BASE:F

    .line 27
    const v0, 0x3f133333  # 0.575f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_GAIN_PER_GOLD_ECO_GROWTH_RATE_MODIFIER:F

    return-void
.end method
