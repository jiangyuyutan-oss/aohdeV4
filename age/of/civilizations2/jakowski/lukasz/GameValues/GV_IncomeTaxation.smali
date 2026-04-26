.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;
.super Ljava/lang/Object;
.source "GV_IncomeTaxation.java"


# instance fields
.field public CAPITAL_TAX_BONUS_MODIFIER:F

.field public EMPLOYED_POPULATION_TAX_EXPONENT:F

.field public PROV_HAPPINESS_TAX_BASE_PENALTY:F

.field public PROV_HAPPINESS_TAX_MODIFIER_PER_HAPPINESS:F

.field public PROV_STABILITY_TAX_BASE:F

.field public PROV_STABILITY_TAX_MODIFIER:F

.field public TECHNOLOGY_LEVEL_TAX_INCOME_MULTIPLIER:F

.field public UNEMPLOYED_TAX_EXPONENT:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x41af645a  # 21.924f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->TECHNOLOGY_LEVEL_TAX_INCOME_MULTIPLIER:F

    .line 7
    const v0, 0x3f56ae7d  # 0.8386f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->EMPLOYED_POPULATION_TAX_EXPONENT:F

    .line 8
    const v0, 0x3f4b295f  # 0.7936f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->UNEMPLOYED_TAX_EXPONENT:F

    .line 10
    const v0, 0x3f2ccccd  # 0.675f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->PROV_STABILITY_TAX_BASE:F

    .line 11
    const v0, 0x3ea66666  # 0.325f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->PROV_STABILITY_TAX_MODIFIER:F

    .line 13
    const v0, 0x3df5c28f  # 0.12f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->CAPITAL_TAX_BONUS_MODIFIER:F

    .line 15
    const v0, -0x41d62e0a  # -0.16584f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->PROV_HAPPINESS_TAX_BASE_PENALTY:F

    .line 16
    const v0, 0x3ebc2628

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->PROV_HAPPINESS_TAX_MODIFIER_PER_HAPPINESS:F

    return-void
.end method
