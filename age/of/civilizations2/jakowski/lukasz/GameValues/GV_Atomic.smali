.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;
.super Ljava/lang/Object;
.source "GV_Atomic.java"


# instance fields
.field public ATOMIC_BOMBS_LIMIT:I

.field public ATOMIC_BOMBS_LIMIT_EXTRA_PER_TECH_LVL:F

.field public ATOMIC_BOMB_ANIMATION_TIME:I

.field public ATOMIC_BOMB_MIN_YEAR:I

.field public ATOMIC_BOMB_SOUND_EFFECT_LOCK_TIME:I

.field public CONSTRUCTION_TURNS:F

.field public CONSTRUCTION_TURNS_EXTRA_PER_ATOMIC_BOMB:F

.field public COST_BASE:F

.field public COST_MIN:F

.field public COST_PER_ATOMIC_BOMB_EXTRA:F

.field public COST_REDUCTION_PER_TECH_LVL:F

.field public NUKES_REQUIRED_TECH_LVL:F

.field public NUKE_CASUALTIES_ARMY_PERC:F

.field public NUKE_ECONOMY_DAMAGE_PERC:F

.field public NUKE_MIN_SURVIVING_ARMY:F

.field public NUKE_POPULATION_DAMAGE_PERC:F

.field public PROVINCE_ACTION_NUKE_VISIBLE_ALL_THE_TIME:Z

.field public PROVINCE_DESTROY_ARMOURY:Z

.field public PROVINCE_DESTROY_FARM:Z

.field public PROVINCE_DESTROY_FORT:Z

.field public PROVINCE_DESTROY_LIBRARY:Z

.field public PROVINCE_DESTROY_MARKET:Z

.field public PROVINCE_DESTROY_PORT:Z

.field public PROVINCE_DESTROY_SUPPLY_CAMP:Z

.field public PROVINCE_DESTROY_WATCHTOWER:Z

.field public PROVINCE_DESTROY_WORKSHOP:Z

.field public SHOW_NUKES_OUTLINER_DESPITE_YEAR_REQUIREMENTS:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x2710

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->ATOMIC_BOMB_SOUND_EFFECT_LOCK_TIME:I

    .line 7
    const/16 v0, 0x5a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->ATOMIC_BOMB_ANIMATION_TIME:I

    .line 9
    const v0, 0x3f4ccccd  # 0.8f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->NUKES_REQUIRED_TECH_LVL:F

    .line 10
    const/16 v0, 0x78a

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->ATOMIC_BOMB_MIN_YEAR:I

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->SHOW_NUKES_OUTLINER_DESPITE_YEAR_REQUIREMENTS:Z

    .line 14
    const v1, 0x47435000  # 50000.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->COST_MIN:F

    .line 15
    const v2, 0x47c35000  # 100000.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->COST_BASE:F

    .line 16
    const/high16 v2, 0x41c80000  # 25.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->COST_REDUCTION_PER_TECH_LVL:F

    .line 17
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->COST_PER_ATOMIC_BOMB_EXTRA:F

    .line 19
    const/high16 v1, 0x40400000  # 3.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->CONSTRUCTION_TURNS:F

    .line 20
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->CONSTRUCTION_TURNS_EXTRA_PER_ATOMIC_BOMB:F

    .line 22
    const/4 v1, 0x2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->ATOMIC_BOMBS_LIMIT:I

    .line 23
    const v1, 0x3e4ccccd  # 0.2f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->ATOMIC_BOMBS_LIMIT_EXTRA_PER_TECH_LVL:F

    .line 25
    const/high16 v1, 0x3f400000  # 0.75f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->NUKE_CASUALTIES_ARMY_PERC:F

    .line 26
    const/high16 v1, 0x42480000  # 50.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->NUKE_MIN_SURVIVING_ARMY:F

    .line 28
    const v1, 0x3f266666  # 0.65f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->NUKE_ECONOMY_DAMAGE_PERC:F

    .line 29
    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->NUKE_POPULATION_DAMAGE_PERC:F

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->PROVINCE_ACTION_NUKE_VISIBLE_ALL_THE_TIME:Z

    .line 33
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->PROVINCE_DESTROY_PORT:Z

    .line 34
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->PROVINCE_DESTROY_WORKSHOP:Z

    .line 35
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->PROVINCE_DESTROY_FORT:Z

    .line 36
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->PROVINCE_DESTROY_WATCHTOWER:Z

    .line 37
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->PROVINCE_DESTROY_ARMOURY:Z

    .line 38
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->PROVINCE_DESTROY_SUPPLY_CAMP:Z

    .line 39
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->PROVINCE_DESTROY_FARM:Z

    .line 40
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->PROVINCE_DESTROY_LIBRARY:Z

    .line 41
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Atomic;->PROVINCE_DESTROY_MARKET:Z

    return-void
.end method
