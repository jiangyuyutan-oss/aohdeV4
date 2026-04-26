.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;
.super Ljava/lang/Object;
.source "GV_Economy.java"


# instance fields
.field public CREATE_NEW_GAME_MAX_ECONOMY_GROWTH:I

.field public CREATE_NEW_GAME_MIN_ECONOMY_GROWTH:I

.field public ECONOMY_GROWTH_STARTING_ECONOMY_MODIFIER:F

.field public ECONOMY_MIN:I

.field public ECO_GROWTH_BUDGET_TEXT_RANDOM_MODIFIER:F

.field public ECO_GROWTH_SATURATION_STRENGTH:F

.field public GOODS_OVER_MIN_BASE:F

.field public GOODS_UNDER_MIN_PENALTY:F

.field public INVEST_OVER_INVESTMENTS_MODIFIER:F

.field public INVEST_OVER_MIN_DEV_BASE:F

.field public INVEST_OVER_MIN_ECO_BASE:F

.field public INVEST_UNDER_MIN_DEV_PENALTY:F

.field public INVEST_UNDER_MIN_ECO_PENALTY:F

.field public MIN_ECONOMY_CHANCE:I

.field public POPULATION_GROWTH_STARTING_POPULATION_MODIFIER:F

.field public POPULATION_GROWTH_USE_SIMPLER_VERSION:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x95

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECONOMY_MIN:I

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->MIN_ECONOMY_CHANCE:I

    .line 8
    const v1, -0x4362017d

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->GOODS_UNDER_MIN_PENALTY:F

    .line 9
    const v2, 0x3c62d624  # 0.013845f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->GOODS_OVER_MIN_BASE:F

    .line 11
    const v2, -0x40db6d44

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->INVEST_UNDER_MIN_DEV_PENALTY:F

    .line 12
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->INVEST_UNDER_MIN_ECO_PENALTY:F

    .line 14
    const v1, 0x3c23d70a  # 0.01f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->INVEST_OVER_MIN_DEV_BASE:F

    .line 15
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->INVEST_OVER_MIN_ECO_BASE:F

    .line 17
    const/high16 v1, 0x3fa00000  # 1.25f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->INVEST_OVER_INVESTMENTS_MODIFIER:F

    .line 19
    const/high16 v1, 0x3e400000  # 0.1875f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->POPULATION_GROWTH_STARTING_POPULATION_MODIFIER:F

    .line 20
    const v1, 0x3dbd70a4  # 0.0925f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECONOMY_GROWTH_STARTING_ECONOMY_MODIFIER:F

    .line 22
    const v1, 0x3ecccccd  # 0.4f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECO_GROWTH_SATURATION_STRENGTH:F

    .line 24
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->POPULATION_GROWTH_USE_SIMPLER_VERSION:Z

    .line 26
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->CREATE_NEW_GAME_MIN_ECONOMY_GROWTH:I

    .line 27
    const/16 v0, 0x29a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->CREATE_NEW_GAME_MAX_ECONOMY_GROWTH:I

    .line 29
    const/high16 v0, 0x3f400000  # 0.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECO_GROWTH_BUDGET_TEXT_RANDOM_MODIFIER:F

    return-void
.end method
