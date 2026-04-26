.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;
.super Ljava/lang/Object;
.source "GV_Festival.java"


# instance fields
.field public AI_FESTIVAL_MIN_GOLD_MODIFIER:F

.field public COST_FESTIVAL_MOVEMENT_POINTS:I

.field public FESTIVAL_COST_GOLD_ACTIVE_FESTIVAL_MODIFIER:F

.field public FESTIVAL_COST_GOLD_BASE:I

.field public FESTIVAL_COST_GOLD_BASE_MODIFIER:F

.field public FESTIVAL_COST_GOLD_TECH_LEVEL_MODIFIER:F

.field public FESTIVAL_NUM_OF_TURNS:I

.field public HAPPINESS_GAIN_NEIGHBORING_PROVINCES:F

.field public HAPPINESS_GAIN_PER_TURN_BASE:F

.field public HAPPINESS_GAIN_PER_TURN_BASED_ON_PROVINCE_HAPPINESS_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->COST_FESTIVAL_MOVEMENT_POINTS:I

    .line 7
    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_COST_GOLD_BASE:I

    .line 8
    const v0, 0x3f247ae1  # 0.6425f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_COST_GOLD_BASE_MODIFIER:F

    .line 9
    const v0, 0x3e266666  # 0.1625f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_COST_GOLD_TECH_LEVEL_MODIFIER:F

    .line 10
    const v0, 0x3e4ccccd  # 0.2f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_COST_GOLD_ACTIVE_FESTIVAL_MODIFIER:F

    .line 12
    const/4 v0, 0x7

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_NUM_OF_TURNS:I

    .line 14
    const v0, 0x3c6d9168  # 0.0145f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->HAPPINESS_GAIN_PER_TURN_BASE:F

    .line 15
    const v0, 0x3bc88a48  # 0.00612f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->HAPPINESS_GAIN_PER_TURN_BASED_ON_PROVINCE_HAPPINESS_MODIFIER:F

    .line 17
    const v0, 0x3b9374bc  # 0.0045f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->HAPPINESS_GAIN_NEIGHBORING_PROVINCES:F

    .line 19
    const v0, 0x3f8ccccd  # 1.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->AI_FESTIVAL_MIN_GOLD_MODIFIER:F

    return-void
.end method
