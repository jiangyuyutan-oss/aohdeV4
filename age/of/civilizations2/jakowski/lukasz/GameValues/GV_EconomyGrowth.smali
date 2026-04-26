.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;
.super Ljava/lang/Object;
.source "GV_EconomyGrowth.java"


# instance fields
.field public ECO_GROWTH_BASE_VALUE:F

.field public ECO_GROWTH_LOW_ECONOMY_BONUS_BASE:F

.field public ECO_GROWTH_LOW_ECONOMY_BONUS_PROV_DEVELOPMENT_MODIFIER:F

.field public ECO_GROWTH_LOW_ECONOMY_BONUS_PROV_GROWTH_RATE_MODIFIER:F

.field public ECO_GROWTH_MODIFIER_FINAL_BASE_PERC:F

.field public ECO_GROWTH_MODIFIER_FINAL_RANDOM_NEGATIVE_PERC:F

.field public ECO_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_MIN_VALUE:I

.field public ECO_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_PERC:F

.field public ECO_GROWTH_MODIFIER_STARTING_ECONOMY_MIN:F

.field public ECO_GROWTH_MODIFIER_STARTING_ECONOMY_MODIFIER:F

.field public ECO_GROWTH_PROV_DEVELOPMENT_PERC_OF_TECH_MODIFIER:F

.field public ECO_GROWTH_PROV_GROWTH_RATE_MODIFIER:F

.field public ECO_GROWTH_STARTING_POPULATION_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3da8f5c3  # 0.0825f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_STARTING_POPULATION_MODIFIER:F

    .line 7
    const v0, 0x3f266666  # 0.65f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_BASE_VALUE:F

    .line 8
    const v0, 0x3e8ccccd  # 0.275f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_PROV_DEVELOPMENT_PERC_OF_TECH_MODIFIER:F

    .line 9
    const v0, 0x3d99999a  # 0.075f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_PROV_GROWTH_RATE_MODIFIER:F

    .line 11
    const v0, 0x3b8b4396  # 0.00425f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_LOW_ECONOMY_BONUS_BASE:F

    .line 12
    const v0, 0x3f413a93  # 0.7548f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_LOW_ECONOMY_BONUS_PROV_GROWTH_RATE_MODIFIER:F

    .line 13
    const v0, 0x404a918e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_LOW_ECONOMY_BONUS_PROV_DEVELOPMENT_MODIFIER:F

    .line 15
    const v0, 0x3fbbeab3  # 1.4681f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_STARTING_ECONOMY_MODIFIER:F

    .line 16
    const v0, 0x3db11f92

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_STARTING_ECONOMY_MIN:F

    .line 18
    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_BASE_PERC:F

    .line 19
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_PERC:F

    .line 20
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_MIN_VALUE:I

    .line 21
    const/high16 v0, 0x3e800000  # 0.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_RANDOM_NEGATIVE_PERC:F

    return-void
.end method
