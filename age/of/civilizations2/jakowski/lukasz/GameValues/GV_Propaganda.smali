.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;
.super Ljava/lang/Object;
.source "GV_Propaganda.java"


# instance fields
.field public INCREASE_REV_RISK_IF_HAPPINESS_BELOW:F

.field public INCREASE_REV_RISK_IF_HAPPINESS_BELOW_BY_VALUE_PER_TURN_RANDOM_1000:I

.field public PROPAGANDA_COST_DIPLOMACY:I

.field public PROPAGANDA_COST_GOLD_BASE:I

.field public PROPAGANDA_COST_GOLD_COST_OF_FESTIVAL_MODIFIER:F

.field public PROPAGANDA_COST_GOLD_DISTANCE_MODIFIER:F

.field public PROPAGANDA_PERC_OF_FESTIVAL_HAPPINESS:F

.field public PROPAGANDA_PERC_OF_FESTIVAL_HAPPINESS_NEIGH_PROVINCES:F

.field public PROPAGANDA_TURNS:I

.field public SELECT_PROVINCES_LIMIT_IN_MENU:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x73

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->PROPAGANDA_COST_GOLD_BASE:I

    .line 6
    const v0, 0x403ccccd  # 2.95f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->PROPAGANDA_COST_GOLD_COST_OF_FESTIVAL_MODIFIER:F

    .line 7
    const/high16 v0, 0x3fe00000  # 1.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->PROPAGANDA_COST_GOLD_DISTANCE_MODIFIER:F

    .line 9
    const/4 v0, 0x6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->PROPAGANDA_COST_DIPLOMACY:I

    .line 11
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->SELECT_PROVINCES_LIMIT_IN_MENU:I

    .line 13
    const/16 v0, 0x15

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->PROPAGANDA_TURNS:I

    .line 15
    const v0, 0x3f533333  # 0.825f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->PROPAGANDA_PERC_OF_FESTIVAL_HAPPINESS:F

    .line 16
    const v0, 0x3ea66666  # 0.325f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->PROPAGANDA_PERC_OF_FESTIVAL_HAPPINESS_NEIGH_PROVINCES:F

    .line 18
    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->INCREASE_REV_RISK_IF_HAPPINESS_BELOW:F

    .line 19
    const/16 v0, 0x4b

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->INCREASE_REV_RISK_IF_HAPPINESS_BELOW_BY_VALUE_PER_TURN_RANDOM_1000:I

    return-void
.end method
