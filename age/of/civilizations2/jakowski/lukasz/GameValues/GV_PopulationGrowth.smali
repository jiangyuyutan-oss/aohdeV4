.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;
.super Ljava/lang/Object;
.source "GV_PopulationGrowth.java"


# instance fields
.field public CREATE_NEW_GAME_MAX_POPULATION_GROWTH:I

.field public CREATE_NEW_GAME_MIN_POPULATION_GROWTH:I

.field public GROWTH_AND_DECLINE_MENU_CIVS_LIMIT:I

.field public POP_GROWTH_BASE_VALUE:F

.field public POP_GROWTH_BASE_VALUE_GOODS_SPENDING_BELOW_RANDOM_100_MAX:I

.field public POP_GROWTH_BASE_VALUE_GOODS_SPENDING_OVER:F

.field public POP_GROWTH_BUDGET_TEXT_RANDOM_MODIFIER:F

.field public POP_GROWTH_LIMIT_PER_TURN:I

.field public POP_GROWTH_LOW_POPULATION_BONUS_BASE:F

.field public POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER:F

.field public POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER_LIMIT:F

.field public POP_GROWTH_MODIFIER_FINAL_BASE_PERC:F

.field public POP_GROWTH_MODIFIER_FINAL_RANDOM_NEGATIVE_PERC:F

.field public POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_MIN_VALUE:I

.field public POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_PERC:F

.field public POP_GROWTH_MODIFIER_STARTING_POPULATION_MIN:F

.field public POP_GROWTH_MODIFIER_STARTING_POPULATION_MODIFIER:F

.field public POP_GROWTH_NATIONALITY_CORE_CIV:F

.field public POP_GROWTH_NATIONALITY_LORD:F

.field public POP_GROWTH_NATIONALITY_NEIGHBORING_PROVINCE_CIV:F

.field public POP_GROWTH_NATIONALITY_OWNER_X_STABILITY:F

.field public POP_GROWTH_NATIONALITY_TRUE_OWNER:F

.field public POP_GROWTH_PROVINCE_DEVELOPMENT_MODIFIER:F

.field public POP_GROWTH_PROVINCE_GROWTH_RATE_BASE:F

.field public POP_GROWTH_PROVINCE_GROWTH_RATE_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->GROWTH_AND_DECLINE_MENU_CIVS_LIMIT:I

    .line 7
    const v1, 0x3e4ccccd  # 0.2f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE:F

    .line 8
    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE_GOODS_SPENDING_OVER:F

    .line 9
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE_GOODS_SPENDING_BELOW_RANDOM_100_MAX:I

    .line 10
    const v0, 0x3c23d70a  # 0.01f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_GROWTH_RATE_BASE:F

    .line 11
    const v0, 0x3ef851ec  # 0.485f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_GROWTH_RATE_MODIFIER:F

    .line 12
    const v0, 0x3c7f9724  # 0.0156f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_DEVELOPMENT_MODIFIER:F

    .line 14
    const v0, 0x3bed9168  # 0.00725f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_BASE:F

    .line 15
    const v0, 0x402fcd98

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER:F

    .line 16
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER_LIMIT:F

    .line 18
    const v1, 0x3fe9999a  # 1.825f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_STARTING_POPULATION_MODIFIER:F

    .line 19
    const v1, 0x3db126e9  # 0.0865f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_STARTING_POPULATION_MIN:F

    .line 21
    const v1, 0x3dcccccd  # 0.1f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_BASE_PERC:F

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_PERC:F

    .line 23
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_MIN_VALUE:I

    .line 24
    const v0, 0x3ea66666  # 0.325f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_NEGATIVE_PERC:F

    .line 26
    const v0, 0x4102147b  # 8.13f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_NATIONALITY_OWNER_X_STABILITY:F

    .line 27
    const v0, 0x3fea3d71  # 1.83f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_NATIONALITY_LORD:F

    .line 28
    const v0, 0x40c7b767

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_NATIONALITY_TRUE_OWNER:F

    .line 29
    const v0, 0x40d927bb  # 6.7861f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_NATIONALITY_CORE_CIV:F

    .line 30
    const/high16 v0, 0x40000000  # 2.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_NATIONALITY_NEIGHBORING_PROVINCE_CIV:F

    .line 32
    const/16 v0, 0xdac

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LIMIT_PER_TURN:I

    .line 34
    const/high16 v0, 0x3f400000  # 0.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BUDGET_TEXT_RANDOM_MODIFIER:F

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->CREATE_NEW_GAME_MIN_POPULATION_GROWTH:I

    .line 37
    const/16 v0, 0x29a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->CREATE_NEW_GAME_MAX_POPULATION_GROWTH:I

    return-void
.end method
