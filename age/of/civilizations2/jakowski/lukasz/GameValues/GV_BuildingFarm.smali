.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFarm;
.super Ljava/lang/Object;
.source "GV_BuildingFarm.java"


# instance fields
.field public FARM_BUILD_COST:[F

.field public FARM_BUILD_MOVEMENT_COST:[I

.field public FARM_CONSTRUCTION:[I

.field public FARM_COST_DEVELOPMENT_MODIFIER:F

.field public FARM_EXTRA_COST_PER_FARM:F

.field public FARM_GROWTH_RATE_BONUS:[F

.field public FARM_NAMES:[Ljava/lang/String;

.field public FARM_TECHNOLOGY_LEVEL:[F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Farm"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "VillageFarm"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "LargeFarm"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "AdvancedFarm"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "MechanizedFarm"

    aput-object v3, v1, v2

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFarm;->FARM_NAMES:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [F

    fill-array-data v1, :array_54

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFarm;->FARM_BUILD_COST:[F

    .line 8
    new-array v1, v0, [I

    fill-array-data v1, :array_64

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFarm;->FARM_BUILD_MOVEMENT_COST:[I

    .line 10
    new-array v1, v0, [F

    fill-array-data v1, :array_74

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFarm;->FARM_GROWTH_RATE_BONUS:[F

    .line 12
    new-array v1, v0, [F

    fill-array-data v1, :array_84

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFarm;->FARM_TECHNOLOGY_LEVEL:[F

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_94

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFarm;->FARM_CONSTRUCTION:[I

    .line 16
    const v0, 0x3b0ce704  # 0.00215f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFarm;->FARM_EXTRA_COST_PER_FARM:F

    .line 17
    const v0, 0x3c75c28f  # 0.015f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFarm;->FARM_COST_DEVELOPMENT_MODIFIER:F

    return-void

    :array_54
    .array-data 4
        0x0
        0x3d000000  # 0.03125f
        0x3d1cac08  # 0.03825f
        0x3d645a1d  # 0.05575f
        0x3da8f5c3  # 0.0825f
        0x3ddc28f6  # 0.1075f
    .end array-data

    :array_64
    .array-data 4
        0x0
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_74
    .array-data 4
        0x0
        0x3da3d70a  # 0.08f
        0x3e23d70a  # 0.16f
        0x3e75c28f  # 0.24f
        0x3ea3d70a  # 0.32f
        0x3ecccccd  # 0.4f
    .end array-data

    :array_84
    .array-data 4
        0x0
        0x3e19999a  # 0.15f
        0x3e99999a  # 0.3f
        0x3ecccccd  # 0.4f
        0x3f0ccccd  # 0.55f
        0x3f333333  # 0.7f
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method
