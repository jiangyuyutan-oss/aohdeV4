.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;
.super Ljava/lang/Object;
.source "GV_War.java"


# instance fields
.field public COALITION_ARMY_MODIFIER:F

.field public COALITION_BUDGET_AGAINST_MODIFIER:F

.field public GET_SPY_MESSAGE_ABOUT_AI_PREPARING_FOR_WAR_CHANCE_1000:I

.field public SPY_MESSAGE_ABOUT_AI_PREPARING_FOR_WAR_ONLY_FROM_LORDS:Z

.field public WAR_CANT_BE_DECLARED_IN_FIRST_X_TURNS_DEFAULT:I

.field public WAR_SCORE_MODIFIER_BASE_BIGGER_CIV:F

.field public WAR_SCORE_MODIFIER_BASE_SMALL_CIV:F

.field public WAR_SCORE_MODIFIER_CONQUERED_PROVINCES_WEIGHT:F

.field public WAR_SCORE_MODIFIER_EXTRA_IF_SMALLER_CIV_WON:F

.field public WAR_SCORE_MODIFIER_LOST_PROVINCES_WEIGHT:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_CANT_BE_DECLARED_IN_FIRST_X_TURNS_DEFAULT:I

    .line 7
    const v0, 0x3f333333  # 0.7f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_SMALL_CIV:F

    .line 8
    const v0, 0x3e4ccccd  # 0.2f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_BIGGER_CIV:F

    .line 10
    const v1, 0x3dcccccd  # 0.1f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_LOST_PROVINCES_WEIGHT:F

    .line 12
    const v1, 0x3eb33333  # 0.35f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_CONQUERED_PROVINCES_WEIGHT:F

    .line 14
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_EXTRA_IF_SMALLER_CIV_WON:F

    .line 16
    const/high16 v0, 0x40a00000  # 5.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->COALITION_BUDGET_AGAINST_MODIFIER:F

    .line 17
    const/high16 v0, 0x3f400000  # 0.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->COALITION_ARMY_MODIFIER:F

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->SPY_MESSAGE_ABOUT_AI_PREPARING_FOR_WAR_ONLY_FROM_LORDS:Z

    .line 20
    const/16 v0, 0x3a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->GET_SPY_MESSAGE_ABOUT_AI_PREPARING_FOR_WAR_CHANCE_1000:I

    return-void
.end method
