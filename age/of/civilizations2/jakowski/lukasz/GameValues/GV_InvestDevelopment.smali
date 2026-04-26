.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestDevelopment;
.super Ljava/lang/Object;
.source "GV_InvestDevelopment.java"


# instance fields
.field public INVEST_COST_GOLD_AGE_ECONOMY_GROWTH_RATE_BASE:F

.field public INVEST_COST_GOLD_AGE_ECONOMY_GROWTH_RATE_MODIFIER:F

.field public INVEST_COST_GOLD_STARTING_POPULATION_MODIFIER:F

.field public INVEST_DEVELOPMENT_MIN_INCREASE_PER_TURN:F

.field public INVEST_DEVELOPMENT_MOVEMENT_POINTS:I

.field public INVEST_DEVELOPMENT_NUM_OF_TURNS:I

.field public INVEST_MAX_GOLD_DEVELOPMENT_MIN:F

.field public INVEST_MAX_GOLD_DEVELOPMENT_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestDevelopment;->INVEST_DEVELOPMENT_MOVEMENT_POINTS:I

    .line 7
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestDevelopment;->INVEST_DEVELOPMENT_NUM_OF_TURNS:I

    .line 9
    const v0, 0x3ed9999a  # 0.425f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestDevelopment;->INVEST_COST_GOLD_STARTING_POPULATION_MODIFIER:F

    .line 11
    const/high16 v0, 0x3ec00000  # 0.375f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestDevelopment;->INVEST_COST_GOLD_AGE_ECONOMY_GROWTH_RATE_BASE:F

    .line 12
    const/high16 v0, 0x3f200000  # 0.625f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestDevelopment;->INVEST_COST_GOLD_AGE_ECONOMY_GROWTH_RATE_MODIFIER:F

    .line 14
    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestDevelopment;->INVEST_MAX_GOLD_DEVELOPMENT_MIN:F

    .line 15
    const v0, 0x3f39999a  # 0.725f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestDevelopment;->INVEST_MAX_GOLD_DEVELOPMENT_MODIFIER:F

    .line 17
    const v0, 0x3727c5ac  # 1.0E-5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestDevelopment;->INVEST_DEVELOPMENT_MIN_INCREASE_PER_TURN:F

    return-void
.end method
