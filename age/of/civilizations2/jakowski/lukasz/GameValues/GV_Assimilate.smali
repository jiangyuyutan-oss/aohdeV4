.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;
.super Ljava/lang/Object;
.source "GV_Assimilate.java"


# instance fields
.field public AI_ASSIMILATE_MIN_GOLD_MODIFIER:F

.field public ASSIMILATE_HAPPINESS_CHANGE_PER_TURN:F

.field public ASSIMILATE_NUM_OF_TURNS_MAX:I

.field public ASSIMILATE_NUM_OF_TURNS_MIN:I

.field public ASSIMILATION_DEVELOPMENT_DIVIDER:F

.field public ASSIMILATION_FINAL_MULTIPLIER:F

.field public ASSIMILATION_INSTABILITY_PENALTY:F

.field public ASSIMILATION_REVOLUTION_RISK_PENALTY:F

.field public ASSIMILATION_SCALING_BASE:F

.field public ASSIMILATION_SCALING_RANDOM_10000:I

.field public BASE_ASSIMILATION_RATE:F

.field public BASE_COST_OF_ASSIMILATE:I

.field public COST_ASSIMILATE_MOVEMENT:I

.field public COST_OF_ASSIMILATE_BASE_MODIFIER_DEVELOPMENT:F

.field public COST_OF_ASSIMILATE_BASE_MODIFIER_POPULATION_PERC:F

.field public COST_OF_ASSIMILATE_INCOME_PRODUCTION:F

.field public COST_OF_ASSIMILATE_INCOME_TAXATION:F

.field public COST_OF_ASSIMILATE_MODIFIER_CIV_ASSIMILATION_IN_PROGRESS:F

.field public COST_OF_ASSIMILATE_MODIFIER_DEVELOPMENT:F

.field public COST_OF_ASSIMILATE_MODIFIER_DISTANCE:F

.field public CREATE_NEW_GAME_MAX_ASSIMILATE_SPEED:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->COST_ASSIMILATE_MOVEMENT:I

    .line 7
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATE_NUM_OF_TURNS_MIN:I

    .line 8
    const/16 v0, 0x32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATE_NUM_OF_TURNS_MAX:I

    .line 10
    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->BASE_COST_OF_ASSIMILATE:I

    .line 12
    const v1, 0x3fa33333  # 1.275f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->COST_OF_ASSIMILATE_INCOME_TAXATION:F

    .line 13
    const v1, 0x3f6fdf3b  # 0.937f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->COST_OF_ASSIMILATE_INCOME_PRODUCTION:F

    .line 15
    const v1, 0x3f628f5c  # 0.885f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->COST_OF_ASSIMILATE_BASE_MODIFIER_DEVELOPMENT:F

    .line 16
    const v1, 0x3ee66666  # 0.45f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->COST_OF_ASSIMILATE_MODIFIER_DEVELOPMENT:F

    .line 17
    const v1, 0x3da8f5c3  # 0.0825f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->COST_OF_ASSIMILATE_MODIFIER_CIV_ASSIMILATION_IN_PROGRESS:F

    .line 19
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->COST_OF_ASSIMILATE_MODIFIER_DISTANCE:F

    .line 21
    const/high16 v1, 0x3fd00000  # 1.625f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->COST_OF_ASSIMILATE_BASE_MODIFIER_POPULATION_PERC:F

    .line 23
    const v1, -0x445c28f6  # -0.005f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATE_HAPPINESS_CHANGE_PER_TURN:F

    .line 25
    const v1, 0x3f9ccccd  # 1.225f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->AI_ASSIMILATE_MIN_GOLD_MODIFIER:F

    .line 27
    const v1, 0x3b8b4396  # 0.00425f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->BASE_ASSIMILATION_RATE:F

    .line 28
    const v1, 0x3d4b9cb7  # 0.04971f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_SCALING_BASE:F

    .line 29
    const/16 v1, 0x43f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_SCALING_RANDOM_10000:I

    .line 31
    const/high16 v1, 0x40700000  # 3.75f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_DEVELOPMENT_DIVIDER:F

    .line 33
    const v1, 0x3e666666  # 0.225f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_INSTABILITY_PENALTY:F

    .line 34
    const v1, 0x3d99999a  # 0.075f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_REVOLUTION_RISK_PENALTY:F

    .line 36
    const v1, 0x3f4ccccd  # 0.8f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->ASSIMILATION_FINAL_MULTIPLIER:F

    .line 38
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Assimilate;->CREATE_NEW_GAME_MAX_ASSIMILATE_SPEED:I

    return-void
.end method
