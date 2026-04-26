.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;
.super Ljava/lang/Object;
.source "GV_Colonize.java"


# instance fields
.field public BASE_ECONOMY_MIN:I

.field public BASE_POPULATION:I

.field public COLONIZATION_AUTO_EXPAND_CHANCE_100_DEFAULT:I

.field public COLONIZE_ARMY_MIN:I

.field public COLONIZE_ARMY_RANDOM:I

.field public COLONIZE_COST_GOLD_DISTANCE_MODIFIER:F

.field public COLONIZE_COST_GOLD_GROWTH_RATE_MODIFIER:F

.field public COLONIZE_COST_GOLD_NONE_MODIFIER:F

.field public COLONIZE_COST_GOLD_SAME_CONTINENT_MODIFIER:F

.field public COLONIZE_COST_GOLD_SAME_REGION_AND_CONTINENT_MODIFIER:F

.field public COLONIZE_COST_GOLD_SAME_REGION_MODIFIER:F

.field public COLONIZE_COST_MOVEMENT_POINTS_DISTANCE_MODIFIER:F

.field public COLONIZE_COST_MOVEMENT_POINTS_MAX:I

.field public COLONIZE_COST_PENALTY_LOW_TECH_BASE:F

.field public COLONIZE_COST_PENALTY_LOW_TECH_DIFFERENCE_MODIFIER:F

.field public COLONIZE_COST_REDUCTION_SAME_CIV_NEIGHBORING_PROVINCES_PERC:F

.field public DEVELOPMENT_MIN:F

.field public DEVELOPMENT_RANDOM_1000:I

.field public HAPPINESS_MIN:I

.field public HAPPINESS_RANDOM:I

.field public NEUTRAL_POPULATION_ASSIMILATION_BASE:F

.field public NEUTRAL_POPULATION_ASSIMILATION_RANDOM_100:I

.field public NEW_COLONY_BONUS:I

.field public NEW_COLONY_GROWTH_RATE_BONUS_BASE:F

.field public NEW_COLONY_GROWTH_RATE_BONUS_PERC_OF_PROVINCE_GROWTH:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x28

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_MOVEMENT_POINTS_MAX:I

    .line 6
    const v0, 0x3fd051ec  # 1.6275f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_MOVEMENT_POINTS_DISTANCE_MODIFIER:F

    .line 8
    const v0, 0x3dad0e56  # 0.0845f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_GOLD_GROWTH_RATE_MODIFIER:F

    .line 9
    const v0, 0x3e07ae14  # 0.1325f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_GOLD_DISTANCE_MODIFIER:F

    .line 11
    const v0, 0x3f50a3d7  # 0.815f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_GOLD_SAME_REGION_AND_CONTINENT_MODIFIER:F

    .line 12
    const v0, 0x3f6a3d71  # 0.915f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_GOLD_SAME_REGION_MODIFIER:F

    .line 13
    const v0, 0x3f5d70a4  # 0.865f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_GOLD_SAME_CONTINENT_MODIFIER:F

    .line 14
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_GOLD_NONE_MODIFIER:F

    .line 16
    const v0, -0x41333333  # -0.4f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_REDUCTION_SAME_CIV_NEIGHBORING_PROVINCES_PERC:F

    .line 18
    const v0, 0x402b3333  # 2.675f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_PENALTY_LOW_TECH_BASE:F

    .line 19
    const/high16 v0, 0x41040000  # 8.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_COST_PENALTY_LOW_TECH_DIFFERENCE_MODIFIER:F

    .line 21
    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->BASE_POPULATION:I

    .line 22
    const/16 v0, 0xfa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->BASE_ECONOMY_MIN:I

    .line 24
    const/16 v0, 0x32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->NEW_COLONY_BONUS:I

    .line 25
    const v0, 0x3df9db23  # 0.122f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->NEW_COLONY_GROWTH_RATE_BONUS_BASE:F

    .line 26
    const v0, 0x3e73b646  # 0.238f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->NEW_COLONY_GROWTH_RATE_BONUS_PERC_OF_PROVINCE_GROWTH:F

    .line 28
    const/16 v0, 0x19

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_ARMY_MIN:I

    .line 29
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZE_ARMY_RANDOM:I

    .line 31
    const/16 v0, 0x3e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->HAPPINESS_MIN:I

    .line 32
    const/16 v0, 0x1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->HAPPINESS_RANDOM:I

    .line 34
    const/high16 v0, 0x3e000000  # 0.125f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->DEVELOPMENT_MIN:F

    .line 35
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->DEVELOPMENT_RANDOM_1000:I

    .line 37
    const/high16 v0, 0x3ec00000  # 0.375f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->NEUTRAL_POPULATION_ASSIMILATION_BASE:F

    .line 38
    const/16 v0, 0x23

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->NEUTRAL_POPULATION_ASSIMILATION_RANDOM_100:I

    .line 40
    const/16 v0, 0x5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Colonize;->COLONIZATION_AUTO_EXPAND_CHANCE_100_DEFAULT:I

    return-void
.end method
