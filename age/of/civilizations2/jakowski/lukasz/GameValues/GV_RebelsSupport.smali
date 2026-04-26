.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;
.super Ljava/lang/Object;
.source "GV_RebelsSupport.java"


# instance fields
.field public COST_SUPPORT_REBELS_DIPLOMACY_POINTS:I

.field public SUPPORT_REBELS_ASSIMILATE_COST_MODIFIER:F

.field public SUPPORT_REBELS_ASSIMILATE_MORE_SUPPORTERS_MODIFIER:F

.field public SUPPORT_REBELS_ASSIMILATE_PERC:F

.field public SUPPORT_REBELS_MAX_COST_MODIFIER:F

.field public SUPPORT_REBELS_MONEY_TO_POPULATION_RATIO_MODIFIER:F

.field public SUPPORT_REBELS_NUM_OF_TURNS_MAX:I

.field public SUPPORT_REBELS_REV_RISK_CHANGE_BASE_VALUE:F

.field public SUPPORT_REBELS_RUN_BASE_POPULATION:F

.field public SUPPORT_REBELS_RUN_BASE_RANDOM:F

.field public SUPPORT_REBELS_RUN_DEVELOPMENT_MODIFIER:F

.field public SUPPORT_REBELS_RUN_HAPPINESS_MODIFIER:F

.field public SUPPORT_REBELS_RUN_MIN_DEVELOPMENT_MODIFIER:F

.field public SUPPORT_REBELS_RUN_MIN_HAPPINESS_MODIFIER:F

.field public SUPPORT_REBELS_RUN_PER_REV_RISK_MODIFIER:F

.field public SUPPORT_REBELS_RUN_RANDOM_OF_10000:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->COST_SUPPORT_REBELS_DIPLOMACY_POINTS:I

    .line 7
    const/16 v0, 0x23

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_NUM_OF_TURNS_MAX:I

    .line 9
    const v0, 0x3fd051ec  # 1.6275f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_ASSIMILATE_COST_MODIFIER:F

    .line 10
    const v0, 0x3f5851ec  # 0.845f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_ASSIMILATE_PERC:F

    .line 11
    const/high16 v0, 0x3e000000  # 0.125f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_ASSIMILATE_MORE_SUPPORTERS_MODIFIER:F

    .line 13
    const v0, 0x3bd4fdf4  # 0.0065f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_BASE_POPULATION:F

    .line 15
    const v0, 0x3d4b9cb7  # 0.04971f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_BASE_RANDOM:F

    .line 16
    const/16 v0, 0x43f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_RANDOM_OF_10000:I

    .line 18
    const/high16 v0, 0x3e800000  # 0.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_MIN_HAPPINESS_MODIFIER:F

    .line 19
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_HAPPINESS_MODIFIER:F

    .line 21
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_MIN_DEVELOPMENT_MODIFIER:F

    .line 22
    const v0, 0x3e4ccccd  # 0.2f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_DEVELOPMENT_MODIFIER:F

    .line 24
    const v0, 0x3ccccccd  # 0.025f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_RUN_PER_REV_RISK_MODIFIER:F

    .line 26
    const/high16 v0, 0x40200000  # 2.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_MAX_COST_MODIFIER:F

    .line 28
    const v0, 0x3d98fc50  # 0.0747f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_MONEY_TO_POPULATION_RATIO_MODIFIER:F

    .line 29
    const v0, 0x3e8ccccd  # 0.275f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RebelsSupport;->SUPPORT_REBELS_REV_RISK_CHANGE_BASE_VALUE:F

    return-void
.end method
