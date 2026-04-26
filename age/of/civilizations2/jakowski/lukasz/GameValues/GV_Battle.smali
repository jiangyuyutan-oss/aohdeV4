.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;
.super Ljava/lang/Object;
.source "GV_Battle.java"


# instance fields
.field public BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC:F

.field public BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS:F

.field public BATTLE_PROVINCE_POPULATION_LOSSES_BASE:F

.field public BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC:F

.field public BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER:F

.field public TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT:I

.field public TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT:I

.field public TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT:I

.field public TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT:I

    .line 6
    const/16 v0, 0x12c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT:I

    .line 8
    const/16 v1, 0x6e

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT:I

    .line 9
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT:I

    .line 11
    const v0, 0x3b343958  # 0.00275f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS:F

    .line 12
    const v0, 0x3d0f5c29  # 0.035f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC:F

    .line 14
    const v0, 0x3cf9db23  # 0.0305f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_BASE:F

    .line 15
    const v0, 0x3bd4fdf4  # 0.0065f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER:F

    .line 16
    const v0, 0x3b23d70a  # 0.0025f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Battle;->BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC:F

    return-void
.end method
