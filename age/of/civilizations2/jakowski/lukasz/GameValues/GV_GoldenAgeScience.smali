.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeScience;
.super Ljava/lang/Object;
.source "GV_GoldenAgeScience.java"


# instance fields
.field public DEFENSE_BONUS_BASE:F

.field public DEFENSE_BONUS_RANDOM_100:I

.field public INCOME_PRODUCTION_BASE:F

.field public INCOME_PRODUCTION_RANDOM_100:I

.field public NUM_OF_TURNS:I

.field public RESEARCHED_TECHNOLOGY_GOLDEN_AGE_SCIENCE_SCORE:I

.field public RESEARCH_BASE:F

.field public RESEARCH_RANDOM_100:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeScience;->NUM_OF_TURNS:I

    .line 7
    const v1, 0x3e19999a  # 0.15f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeScience;->RESEARCH_BASE:F

    .line 8
    const/16 v1, 0xa

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeScience;->RESEARCH_RANDOM_100:I

    .line 10
    const v1, 0x3dcccccd  # 0.1f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeScience;->DEFENSE_BONUS_BASE:F

    .line 11
    const/4 v1, 0x6

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeScience;->DEFENSE_BONUS_RANDOM_100:I

    .line 13
    const v1, 0x3d75c28f  # 0.06f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeScience;->INCOME_PRODUCTION_BASE:F

    .line 14
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeScience;->INCOME_PRODUCTION_RANDOM_100:I

    .line 16
    const/16 v0, 0xfa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeScience;->RESEARCHED_TECHNOLOGY_GOLDEN_AGE_SCIENCE_SCORE:I

    return-void
.end method
