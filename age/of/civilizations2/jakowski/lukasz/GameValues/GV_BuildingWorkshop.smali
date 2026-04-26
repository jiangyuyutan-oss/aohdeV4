.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWorkshop;
.super Ljava/lang/Object;
.source "GV_BuildingWorkshop.java"


# instance fields
.field public WORKSHOP_BUILD_COST:[F

.field public WORKSHOP_BUILD_MOVEMENT_COST:[I

.field public WORKSHOP_CONSTRUCTION:[I

.field public WORKSHOP_COST_DEVELOPMENT_MODIFIER:F

.field public WORKSHOP_EXTRA_COST_PER_WORKSHOP:F

.field public WORKSHOP_INCOME_PRODUCTION:[F

.field public WORKSHOP_NAMES:[Ljava/lang/String;

.field public WORKSHOP_TECHNOLOGY_LEVEL:[F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "SmallWorkshop"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Workshop"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ManufacturingHall"

    aput-object v3, v1, v2

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWorkshop;->WORKSHOP_NAMES:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [F

    fill-array-data v1, :array_4a

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWorkshop;->WORKSHOP_BUILD_COST:[F

    .line 8
    new-array v1, v0, [I

    fill-array-data v1, :array_56

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWorkshop;->WORKSHOP_BUILD_MOVEMENT_COST:[I

    .line 10
    new-array v1, v0, [F

    fill-array-data v1, :array_62

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWorkshop;->WORKSHOP_INCOME_PRODUCTION:[F

    .line 12
    new-array v1, v0, [F

    fill-array-data v1, :array_6e

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWorkshop;->WORKSHOP_TECHNOLOGY_LEVEL:[F

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_7a

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWorkshop;->WORKSHOP_CONSTRUCTION:[I

    .line 16
    const v0, 0x3b2f4f0e  # 0.002675f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWorkshop;->WORKSHOP_EXTRA_COST_PER_WORKSHOP:F

    .line 17
    const v0, 0x3ccccccd  # 0.025f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingWorkshop;->WORKSHOP_COST_DEVELOPMENT_MODIFIER:F

    return-void

    :array_4a
    .array-data 4
        0x0
        0x3d52f1aa  # 0.0515f
        0x3dcccccd  # 0.1f
        0x3e19999a  # 0.15f
    .end array-data

    :array_56
    .array-data 4
        0x0
        0x12
        0x18
        0x1e
    .end array-data

    :array_62
    .array-data 4
        0x0
        0x3d75c28f  # 0.06f
        0x3dcccccd  # 0.1f
        0x3e19999a  # 0.15f
    .end array-data

    :array_6e
    .array-data 4
        0x0
        0x3ecccccd  # 0.4f
        0x3f266666  # 0.65f
        0x3f4ccccd  # 0.8f
    .end array-data

    :array_7a
    .array-data 4
        0x0
        0x2
        0x3
        0x3
    .end array-data
.end method
