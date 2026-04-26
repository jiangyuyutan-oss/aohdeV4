.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;
.super Ljava/lang/Object;
.source "GV_BuildingWatchTower.java"


# instance fields
.field public TOWER_BUILD_COST:[F

.field public TOWER_BUILD_MOVEMENT_COST:[I

.field public TOWER_CONSTRUCTION:[I

.field public TOWER_COST_DEVELOPMENT_MODIFIER:F

.field public TOWER_DEFENSE_BONUS:[I

.field public TOWER_EXTRA_COST_PER_TOWER:F

.field public TOWER_NAMES:[Ljava/lang/String;

.field public TOWER_TECHNOLOGY_LEVEL:[F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "WatchTower"

    aput-object v3, v1, v2

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_NAMES:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [F

    fill-array-data v1, :array_40

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_BUILD_COST:[F

    .line 8
    new-array v1, v0, [I

    fill-array-data v1, :array_48

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_BUILD_MOVEMENT_COST:[I

    .line 10
    new-array v1, v0, [I

    fill-array-data v1, :array_50

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_DEFENSE_BONUS:[I

    .line 12
    new-array v1, v0, [F

    fill-array-data v1, :array_58

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_TECHNOLOGY_LEVEL:[F

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_60

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_CONSTRUCTION:[I

    .line 16
    const v0, 0x3bae2110  # 0.005314f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_EXTRA_COST_PER_TOWER:F

    .line 17
    const v0, 0x3c23d70a  # 0.01f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWatchTower;->TOWER_COST_DEVELOPMENT_MODIFIER:F

    return-void

    :array_40
    .array-data 4
        0x0
        0x3d2e147b  # 0.0425f
    .end array-data

    :array_48
    .array-data 4
        0x0
        0x10
    .end array-data

    :array_50
    .array-data 4
        0x0
        0x4
    .end array-data

    :array_58
    .array-data 4
        0x0
        0x3e4ccccd  # 0.2f
    .end array-data

    :array_60
    .array-data 4
        0x0
        0x1
    .end array-data
.end method
