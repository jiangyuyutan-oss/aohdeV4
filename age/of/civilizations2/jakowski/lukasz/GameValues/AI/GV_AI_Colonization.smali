.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;
.super Ljava/lang/Object;
.source "GV_AI_Colonization.java"


# instance fields
.field public BASE_COLONIZATION_DIVISOR:I

.field public CAN_COLONIZE_TOP_CIVS_LIMIT:I

.field public CAN_COLONIZE_TOP_CIVS_PERCENT:F

.field public COLONIZATION_SCORE_PER_OWN_NEIGH_PROVINCE:F

.field public MAX_COLONIZATION_COST_TO_BUDGET_RATIO:F

.field public MAX_RANK_COLONIZATION_BONUS:I

.field public PROVINCE_SCALING_FACTOR:F

.field public RANK_COLONIZATION_MULTIPLIER:I

.field public RESUME_COLONIZATION_AFTER_TURNS_TOO_EXPENSIVE:I

.field public RESUME_COLONIZATION_AFTER_TURNS_TOO_EXPENSIVE_RANDOM:I

.field public RESUME_COLONIZATION_AFTER_X_TURNS_AFTER_COLONIZATION:I

.field public RESUME_COLONIZATION_AFTER_X_TURNS_AFTER_COLONIZATION_RANDOM:I

.field public RESUME_COLONIZATION_AFTER_X_TURNS_AFTER_COLONIZATION_SIZE_DIVISOR:F

.field public RESUME_COLONIZATION_AFTER_X_TURNS_AT_WAR:I

.field public RESUME_COLONIZATION_AFTER_X_TURNS_AT_WAR_RANDOM:I

.field public RESUME_COLONIZATION_AFTER_X_TURNS_INSUFFICIENT_GOLD:I

.field public RESUME_COLONIZATION_AFTER_X_TURNS_INSUFFICIENT_GOLD_RANDOM:I

.field public RESUME_COLONIZATION_AFTER_X_TURNS_INSUFFICIENT_TECH:I

.field public RESUME_COLONIZATION_AFTER_X_TURNS_INSUFFICIENT_TECH_RANDOM:I

.field public RESUME_COLONIZATION_AFTER_X_TURNS_IN_PROGRESS:I

.field public RESUME_COLONIZATION_AFTER_X_TURNS_IN_PROGRESS_RANDOM:I

.field public TECH_GAP_REDUCTION_FACTOR:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_IN_PROGRESS:I

    .line 6
    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_IN_PROGRESS_RANDOM:I

    .line 8
    const/16 v1, 0x42

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_INSUFFICIENT_TECH:I

    .line 9
    const/16 v1, 0x30

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_INSUFFICIENT_TECH_RANDOM:I

    .line 11
    const/16 v1, 0xc

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_INSUFFICIENT_GOLD:I

    .line 12
    const/16 v1, 0x12

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_INSUFFICIENT_GOLD_RANDOM:I

    .line 14
    const/high16 v1, 0x41b00000  # 22.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->MAX_COLONIZATION_COST_TO_BUDGET_RATIO:F

    .line 16
    const/16 v1, 0x22

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_TURNS_TOO_EXPENSIVE:I

    .line 17
    const/16 v1, 0x2a

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_TURNS_TOO_EXPENSIVE_RANDOM:I

    .line 19
    const/16 v1, 0x1c

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_AT_WAR:I

    .line 20
    const/16 v1, 0x18

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_AT_WAR_RANDOM:I

    .line 22
    const/16 v1, 0x8

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_AFTER_COLONIZATION:I

    .line 23
    const/16 v1, 0x1a

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_AFTER_COLONIZATION_RANDOM:I

    .line 24
    const/high16 v1, 0x41a00000  # 20.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RESUME_COLONIZATION_AFTER_X_TURNS_AFTER_COLONIZATION_SIZE_DIVISOR:F

    .line 26
    const v1, 0x3eb33333  # 0.35f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->TECH_GAP_REDUCTION_FACTOR:F

    .line 28
    const/4 v2, 0x6

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->BASE_COLONIZATION_DIVISOR:I

    .line 29
    const/4 v2, 0x3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->RANK_COLONIZATION_MULTIPLIER:I

    .line 30
    const/16 v2, 0x16

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->MAX_RANK_COLONIZATION_BONUS:I

    .line 32
    const v2, 0x3c23d70a  # 0.01f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->PROVINCE_SCALING_FACTOR:F

    .line 34
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->CAN_COLONIZE_TOP_CIVS_PERCENT:F

    .line 35
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->CAN_COLONIZE_TOP_CIVS_LIMIT:I

    .line 37
    const v0, 0x3f39999a  # 0.725f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Colonization;->COLONIZATION_SCORE_PER_OWN_NEIGH_PROVINCE:F

    return-void
.end method
