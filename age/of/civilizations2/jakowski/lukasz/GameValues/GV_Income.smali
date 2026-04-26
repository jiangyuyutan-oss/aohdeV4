.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;
.super Ljava/lang/Object;
.source "GV_Income.java"


# instance fields
.field public EMPLOYMENT_DEV_MODIFIER:F

.field public EMPLOYMENT_PER_ECONOMY_INCOME_PRODUCTION:F

.field public EMPLOYMENT_PER_ECONOMY_POPULATION_TAXATION:F

.field public EMPLOYMENT_TECH_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3f833333  # 1.025f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;->EMPLOYMENT_PER_ECONOMY_INCOME_PRODUCTION:F

    .line 6
    const v0, 0x3fe33333  # 1.775f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;->EMPLOYMENT_PER_ECONOMY_POPULATION_TAXATION:F

    .line 8
    const v0, 0x3e30a3d7  # 0.1725f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;->EMPLOYMENT_DEV_MODIFIER:F

    .line 9
    const v0, 0x3dbd70a4  # 0.0925f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;->EMPLOYMENT_TECH_MODIFIER:F

    return-void
.end method
