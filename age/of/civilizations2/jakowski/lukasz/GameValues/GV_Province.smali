.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;
.super Ljava/lang/Object;
.source "GV_Province.java"


# instance fields
.field public MIN_ECONOMY_IN_PROVINCE:I

.field public MIN_ECONOMY_IN_PROVINCE_WASTELAND_MODIFIER:F

.field public MIN_POPULATION_IN_PROVINCE:I

.field public MIN_POPULATION_IN_PROVINCE_WASTELAND_MODIFIER:F

.field public NEUTRAL_ARMY_UPDATE_BASE:I

.field public NEUTRAL_ARMY_UPDATE_CHANCE_100:I

.field public NEUTRAL_ARMY_UPDATE_RANDOM:I

.field public STARTING_BUILDING_FARM_RANDOM_1000:I

.field public STARTING_BUILDING_FORT_TECH_REQUIRED:F

.field public STARTING_BUILDING_LIBRARY_RANDOM_1000:I

.field public STARTING_BUILDING_MARKET_RANDOM_1000:I

.field public STARTING_BUILDING_PORT_TECH_REQUIRED:F

.field public STARTING_BUILDING_WATCHTOWER_TECH_REQUIRED:F

.field public STARTING_BUILDING_WORKSHOP_RANDOM_1000:I

.field public TURNS_BETWEEN_RETURNING_PEACEFUL_OCCUPIED_PROVINCES:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->MIN_POPULATION_IN_PROVINCE:I

    .line 6
    const/high16 v0, 0x40b80000  # 5.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->MIN_POPULATION_IN_PROVINCE_WASTELAND_MODIFIER:F

    .line 8
    const/16 v0, 0x32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->MIN_ECONOMY_IN_PROVINCE:I

    .line 9
    const/high16 v0, 0x40980000  # 4.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->MIN_ECONOMY_IN_PROVINCE_WASTELAND_MODIFIER:F

    .line 11
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->TURNS_BETWEEN_RETURNING_PEACEFUL_OCCUPIED_PROVINCES:I

    .line 13
    const v0, 0x3f851eb8  # 1.04f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->STARTING_BUILDING_WATCHTOWER_TECH_REQUIRED:F

    .line 14
    const v0, 0x3f75c28f  # 0.96f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->STARTING_BUILDING_FORT_TECH_REQUIRED:F

    .line 15
    const v0, 0x3f733333  # 0.95f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->STARTING_BUILDING_PORT_TECH_REQUIRED:F

    .line 17
    const/16 v0, 0x4e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->STARTING_BUILDING_FARM_RANDOM_1000:I

    .line 18
    const/16 v0, 0x54

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->STARTING_BUILDING_MARKET_RANDOM_1000:I

    .line 19
    const/16 v0, 0x7c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->STARTING_BUILDING_WORKSHOP_RANDOM_1000:I

    .line 20
    const/16 v0, 0x34

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->STARTING_BUILDING_LIBRARY_RANDOM_1000:I

    .line 22
    const/16 v0, 0x4c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->NEUTRAL_ARMY_UPDATE_CHANCE_100:I

    .line 23
    const/4 v0, -0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->NEUTRAL_ARMY_UPDATE_BASE:I

    .line 24
    const/16 v0, 0xd

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->NEUTRAL_ARMY_UPDATE_RANDOM:I

    return-void
.end method
