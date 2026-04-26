.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;
.super Ljava/lang/Object;
.source "GV_Plunder.java"


# instance fields
.field public CREATE_NEW_GAME_MAX:I

.field public PLUNDER_DEV_LOSS_BASE_RATIO:F

.field public PLUNDER_DEV_LOSS_RANDOM_RATIO_10000:I

.field public PLUNDER_ECONOMY_LOSS_BASE_MIN:I

.field public PLUNDER_ECONOMY_LOSS_BASE_RATIO:F

.field public PLUNDER_ECONOMY_LOSS_RANDOM_RATIO_10000:I

.field public PLUNDER_HAPPINESS_LOSS_BASE_RATIO:F

.field public PLUNDER_HAPPINESS_LOSS_RANDOM_RATIO_10000:I

.field public PLUNDER_INCOME_HIGH_REV_RISK_MODIFIER:F

.field public PLUNDER_MIN_ARMY_POP_RATIO:F

.field public PLUNDER_MIN_ARMY_POP_RATIO_TECH_MODIFIER:F

.field public PLUNDER_POP_LOSS_BASE_RATIO_ARMY:F

.field public PLUNDER_POP_LOSS_BASE_RATIO_POPULATION:F

.field public PLUNDER_POP_LOSS_RANDOM_RATIO_10000_ARMY:I

.field public PLUNDER_REV_RISK_BASE_RATIO:F

.field public PLUNDER_REV_RISK_MIN:F

.field public PLUNDER_REV_RISK_RANDOM_RATIO_10000:I

.field public PLUNDER_TAX_INCOME_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3fb9999a  # 1.45f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_TAX_INCOME_MODIFIER:F

    .line 6
    const/high16 v0, 0x3f200000  # 0.625f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_INCOME_HIGH_REV_RISK_MODIFIER:F

    .line 8
    const v0, 0x3e0ccccd  # 0.1375f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_MIN_ARMY_POP_RATIO:F

    .line 9
    const v0, -0x42f0a3d7  # -0.035f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_MIN_ARMY_POP_RATIO_TECH_MODIFIER:F

    .line 11
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_ECONOMY_LOSS_BASE_MIN:I

    .line 12
    const v0, 0x3d2e147b  # 0.0425f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_ECONOMY_LOSS_BASE_RATIO:F

    .line 13
    const/16 v0, 0x20d

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_ECONOMY_LOSS_RANDOM_RATIO_10000:I

    .line 15
    const v0, 0x3db33333  # 0.0875f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_DEV_LOSS_BASE_RATIO:F

    .line 16
    const/16 v0, 0x271

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_DEV_LOSS_RANDOM_RATIO_10000:I

    .line 18
    const v0, 0x3d6a9e6f  # 0.05728f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_HAPPINESS_LOSS_BASE_RATIO:F

    .line 19
    const/16 v0, 0x1aa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_HAPPINESS_LOSS_RANDOM_RATIO_10000:I

    .line 21
    const v0, 0x3c4254a4  # 0.011861f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_REV_RISK_BASE_RATIO:F

    .line 22
    const/16 v0, 0x10c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_REV_RISK_RANDOM_RATIO_10000:I

    .line 23
    const v0, 0x3d0ccff2  # 0.034378f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_REV_RISK_MIN:F

    .line 25
    const v0, 0x3d473abd  # 0.04864f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_POP_LOSS_BASE_RATIO_ARMY:F

    .line 26
    const/16 v0, 0x19c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_POP_LOSS_RANDOM_RATIO_10000_ARMY:I

    .line 27
    const v0, 0x3da0f909  # 0.0786f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_POP_LOSS_BASE_RATIO_POPULATION:F

    .line 29
    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->CREATE_NEW_GAME_MAX:I

    return-void
.end method
