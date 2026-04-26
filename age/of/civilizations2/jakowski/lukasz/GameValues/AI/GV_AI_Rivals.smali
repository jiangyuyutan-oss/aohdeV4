.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;
.super Ljava/lang/Object;
.source "GV_AI_Rivals.java"


# instance fields
.field public AI_RIVALS_SCORE_RELATION:F

.field public END_OF_RIVALRY_AFTER_EXTRA_TURNS_BASE:I

.field public END_OF_RIVALRY_AFTER_EXTRA_TURNS_RANDOM:I

.field public NUM_OF_RIVALS_TO_CHOOSE_FROM:I

.field public OLD_RIVALS_BUDGET_MODIFIER:F

.field public OLD_RIVALS_BUDGET_MODIFIER_2:F

.field public OLD_RIVALS_BUDGET_MODIFIER_2_RANDOM_100:I

.field public OLD_RIVALS_BUDGET_MODIFIER_2_SMALL_CIV:F

.field public OLD_RIVALS_BUDGET_MODIFIER_2_SMALL_CIV_PROVINCES_BELOW:I

.field public OLD_RIVALS_BUDGET_MODIFIER_2_SMALL_CIV_RANDOM_100:I

.field public OLD_RIVALS_BUDGET_MODIFIER_RANDOM_1000:I

.field public OLD_RIVALS_CIV_SIZE_MODIFIER:F

.field public OLD_RIVALS_CIV_SIZE_MODIFIER_RANDOM_1000:I

.field public OLD_RIVALS_DISTANCE_BONUS:F

.field public OLD_RIVALS_DISTANCE_MODIFIER:F

.field public OLD_RIVALS_DISTANCE_RANK_MODIFIER:F

.field public OLD_RIVALS_RANGE_AGGRESSION_BASE:F

.field public OLD_RIVALS_RANGE_AGGRESSION_RANDOM_100:I

.field public OLD_RIVALS_RELATIONS_MODIFIER:F

.field public RESUME_LOOKING_FOR_ENEMY_AT_TURN_ID:I

.field public RESUME_LOOKING_FOR_ENEMY_AT_TURN_ID_RANDOM:I

.field public RIVALS_LIMIT:I

.field public RIVALS_SCORE_DISTANCE:F

.field public RIVALS_SCORE_MIN:F

.field public UPDATE_RIVALRY_END_EVERY_X_TURNS:I

.field public USE_NEW_RIVALS_SYSTEM:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->USE_NEW_RIVALS_SYSTEM:Z

    .line 7
    const/4 v0, 0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->RIVALS_LIMIT:I

    .line 9
    const/16 v0, 0xd

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->NUM_OF_RIVALS_TO_CHOOSE_FROM:I

    .line 11
    const v0, 0x3ed9999a  # 0.425f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->RIVALS_SCORE_MIN:F

    .line 12
    const v0, 0x3f2ccccd  # 0.675f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->RIVALS_SCORE_DISTANCE:F

    .line 13
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->AI_RIVALS_SCORE_RELATION:F

    .line 15
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->UPDATE_RIVALRY_END_EVERY_X_TURNS:I

    .line 17
    const/16 v0, 0x63

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->END_OF_RIVALRY_AFTER_EXTRA_TURNS_BASE:I

    .line 18
    const/16 v0, 0x42

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->END_OF_RIVALRY_AFTER_EXTRA_TURNS_RANDOM:I

    .line 20
    const/16 v0, 0x26

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->RESUME_LOOKING_FOR_ENEMY_AT_TURN_ID:I

    .line 21
    const/16 v0, 0x1a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->RESUME_LOOKING_FOR_ENEMY_AT_TURN_ID_RANDOM:I

    .line 23
    const v0, 0x3feccccd  # 1.85f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_BUDGET_MODIFIER:F

    .line 24
    const/16 v0, 0x1db

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_BUDGET_MODIFIER_RANDOM_1000:I

    .line 26
    const/high16 v0, 0x3f200000  # 0.625f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_CIV_SIZE_MODIFIER:F

    .line 27
    const/16 v0, 0x20d

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_CIV_SIZE_MODIFIER_RANDOM_1000:I

    .line 29
    const v0, 0x3e90a3d7  # 0.2825f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_DISTANCE_MODIFIER:F

    .line 30
    const v0, 0x3e170a3d  # 0.1475f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_DISTANCE_RANK_MODIFIER:F

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_BUDGET_MODIFIER_2_SMALL_CIV_PROVINCES_BELOW:I

    .line 33
    const v0, 0x3f6ccccd  # 0.925f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_BUDGET_MODIFIER_2_SMALL_CIV:F

    .line 34
    const/16 v0, 0xf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_BUDGET_MODIFIER_2_SMALL_CIV_RANDOM_100:I

    .line 36
    const v0, 0x3f466666  # 0.775f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_BUDGET_MODIFIER_2:F

    .line 37
    const/16 v0, 0x271

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_BUDGET_MODIFIER_2_RANDOM_100:I

    .line 39
    const/high16 v0, 0x3e800000  # 0.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_RANGE_AGGRESSION_BASE:F

    .line 40
    const/16 v0, 0x15e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_RANGE_AGGRESSION_RANDOM_100:I

    .line 42
    const v0, 0x3e88f5c3  # 0.2675f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_DISTANCE_BONUS:F

    .line 43
    const v0, 0x3deb851f  # 0.115f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Rivals;->OLD_RIVALS_RELATIONS_MODIFIER:F

    return-void
.end method
