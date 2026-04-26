.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;
.super Ljava/lang/Object;
.source "GV_IncomeProduction.java"


# instance fields
.field public BASE_PRODUCTION_EFFICIENCY:F

.field public CAPITAL_PRODUCTION_BONUS_MODIFIER:F

.field public DEVELOPMENT_EMPLOYMENT_BONUS_PER_DEV:F

.field public OCCUPIED_PROVINCE_INCOME_PRODUCTION_MODIFIER:F

.field public PRODUCTION_EFFICIENCY_PER_DEVELOPMENT:F

.field public PRODUCTION_EFFICIENCY_PER_TECH_LVL:F

.field public PROV_STABILITY_BASE:F

.field public PROV_STABILITY_MODIFIER:F

.field public TAXATION_LEVEL_INFLUENCE_PRODUCTION:F

.field public TECH_EMPLOYMENT_BONUS_PER_TECH_LEVEL:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3e333333  # 0.175f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->TAXATION_LEVEL_INFLUENCE_PRODUCTION:F

    .line 7
    const v0, 0x3f2c28f6  # 0.6725f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->DEVELOPMENT_EMPLOYMENT_BONUS_PER_DEV:F

    .line 8
    const v0, 0x3eb9999a  # 0.3625f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->TECH_EMPLOYMENT_BONUS_PER_TECH_LEVEL:F

    .line 10
    const v0, 0x3d8c49ba  # 0.0685f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->BASE_PRODUCTION_EFFICIENCY:F

    .line 11
    const v0, 0x3f133333  # 0.575f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PRODUCTION_EFFICIENCY_PER_TECH_LVL:F

    .line 12
    const v1, 0x3f5ccccd  # 0.8625f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PRODUCTION_EFFICIENCY_PER_DEVELOPMENT:F

    .line 14
    const v1, 0x3ed9999a  # 0.425f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PROV_STABILITY_BASE:F

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PROV_STABILITY_MODIFIER:F

    .line 17
    const v0, 0x3e3851ec  # 0.18f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->CAPITAL_PRODUCTION_BONUS_MODIFIER:F

    .line 19
    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->OCCUPIED_PROVINCE_INCOME_PRODUCTION_MODIFIER:F

    return-void
.end method
