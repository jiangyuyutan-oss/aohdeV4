.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;
.super Ljava/lang/Object;
.source "GV_Administration.java"


# instance fields
.field public ADMIN_COST_DISTANCE_DIVISOR_BASE:F

.field public ADMIN_COST_DISTANCE_DIVISOR_PER_STABILITY_MODIFIER:F

.field public ADMIN_COST_GROWTH_EXPONENT:F

.field public ADMIN_COST_HAPPINESS_ADJUSTMENT:F

.field public ADMIN_COST_PER_ECONOMY:F

.field public ADMIN_COST_PER_POP_DEVELOPMENT_BASE:F

.field public ADMIN_COST_POP_PER_DEVELOPMENT_MODIFIER:F

.field public ADMIN_COST_TAXATION_BASE:F

.field public ADMIN_COST_TAXATION_MODIFIER:F

.field public ADMIN_COST_TAXATION_STABILITY_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3b54dc66  # 0.003248f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_PER_ECONOMY:F

    .line 6
    const v0, 0x3b1d4952  # 0.0024f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_PER_POP_DEVELOPMENT_BASE:F

    .line 7
    const v0, 0x3a3e0ded  # 7.25E-4f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_POP_PER_DEVELOPMENT_MODIFIER:F

    .line 9
    const v0, 0x3f6f5c29  # 0.935f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_GROWTH_EXPONENT:F

    .line 11
    const v0, 0x3fc3851f  # 1.5275f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_DISTANCE_DIVISOR_BASE:F

    .line 12
    const/high16 v0, 0x3e000000  # 0.125f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_DISTANCE_DIVISOR_PER_STABILITY_MODIFIER:F

    .line 14
    const v0, 0x3e09e98e  # 0.13468f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_HAPPINESS_ADJUSTMENT:F

    .line 16
    const v0, 0x3f6eb852  # 0.9325f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_TAXATION_BASE:F

    .line 17
    const v0, 0x3d926e98  # 0.0715f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_TAXATION_MODIFIER:F

    .line 19
    const v0, 0x3d051eb8  # 0.0325f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_TAXATION_STABILITY_MODIFIER:F

    return-void
.end method
