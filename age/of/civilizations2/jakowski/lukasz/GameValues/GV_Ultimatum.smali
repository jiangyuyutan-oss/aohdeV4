.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;
.super Ljava/lang/Object;
.source "GV_Ultimatum.java"


# instance fields
.field public ANNEXATION_HAPPINESS_CHANGE:F

.field public ANNEXATION_REV_RISK_EXTRA_BASE:F

.field public ANNEXATION_REV_RISK_EXTRA_RANDOM_100:I

.field public ANNEX_PROVINCE_HAPPINESS_CHANGE:F

.field public ANNEX_PROVINCE_RISK_EXTRA_BASE:F

.field public ANNEX_PROVINCE_RISK_EXTRA_RANDOM_100:I

.field public COST_ULTIMATUM_DIPLOMACY_POINTS:I

.field public ULTIMATUM_REQUIRED_RELATIONS:I

.field public ULTIMATUM_TRUCE_TURNS:I

.field public ULTIMATUM_TRUCE_TURNS_DEMAND_LIBERATION:I

.field public ULTIMATUM_VASSAL_LIBERTY_DESIRE_BASE_INCREASE:F

.field public ULTIMATUM_VASSAL_LIBERTY_DESIRE_PERC_INCREASE:F

.field public ULTIMATUM_VASSAL_LIBERTY_DESIRE_RANDOM_INCREASE:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x18

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->COST_ULTIMATUM_DIPLOMACY_POINTS:I

    .line 7
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ULTIMATUM_TRUCE_TURNS:I

    .line 8
    const/16 v0, 0x19

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ULTIMATUM_TRUCE_TURNS_DEMAND_LIBERATION:I

    .line 9
    const/16 v0, -0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ULTIMATUM_REQUIRED_RELATIONS:I

    .line 11
    const/high16 v0, 0x3fa00000  # 1.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ULTIMATUM_VASSAL_LIBERTY_DESIRE_PERC_INCREASE:F

    .line 12
    const/high16 v0, 0x41900000  # 18.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ULTIMATUM_VASSAL_LIBERTY_DESIRE_BASE_INCREASE:F

    .line 13
    const/16 v0, 0x24

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ULTIMATUM_VASSAL_LIBERTY_DESIRE_RANDOM_INCREASE:I

    .line 15
    const v0, 0x3eeb851f  # 0.46f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ANNEXATION_HAPPINESS_CHANGE:F

    .line 16
    const v0, 0x3d851eb8  # 0.065f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ANNEXATION_REV_RISK_EXTRA_BASE:F

    .line 17
    const/16 v0, 0xb

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ANNEXATION_REV_RISK_EXTRA_RANDOM_100:I

    .line 19
    const v0, 0x3f0a3d71  # 0.54f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ANNEX_PROVINCE_HAPPINESS_CHANGE:F

    .line 20
    const v0, 0x3d99999a  # 0.075f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ANNEX_PROVINCE_RISK_EXTRA_BASE:F

    .line 21
    const/16 v0, 0xc

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ultimatum;->ANNEX_PROVINCE_RISK_EXTRA_RANDOM_100:I

    return-void
.end method
