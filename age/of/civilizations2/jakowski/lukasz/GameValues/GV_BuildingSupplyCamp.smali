.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingSupplyCamp;
.super Ljava/lang/Object;
.source "GV_BuildingSupplyCamp.java"


# instance fields
.field public SUPPLY_BONUS:[F

.field public SUPPLY_BUILD_COST:[F

.field public SUPPLY_BUILD_MOVEMENT_COST:[I

.field public SUPPLY_CONSTRUCTION:[I

.field public SUPPLY_COST_DEVELOPMENT_MODIFIER:F

.field public SUPPLY_EXTRA_COST_PER_SUPPLY:F

.field public SUPPLY_NAMES:[Ljava/lang/String;

.field public SUPPLY_TECH_LEVEL:[F


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

    const-string v3, "SupplyCamp"

    aput-object v3, v1, v2

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingSupplyCamp;->SUPPLY_NAMES:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [F

    fill-array-data v1, :array_40

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingSupplyCamp;->SUPPLY_BUILD_COST:[F

    .line 8
    new-array v1, v0, [I

    fill-array-data v1, :array_48

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingSupplyCamp;->SUPPLY_BUILD_MOVEMENT_COST:[I

    .line 10
    new-array v1, v0, [F

    fill-array-data v1, :array_50

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingSupplyCamp;->SUPPLY_TECH_LEVEL:[F

    .line 12
    new-array v1, v0, [I

    fill-array-data v1, :array_58

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingSupplyCamp;->SUPPLY_CONSTRUCTION:[I

    .line 14
    new-array v0, v0, [F

    fill-array-data v0, :array_60

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingSupplyCamp;->SUPPLY_BONUS:[F

    .line 16
    const v0, 0x3c3c6a7f  # 0.0115f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingSupplyCamp;->SUPPLY_EXTRA_COST_PER_SUPPLY:F

    .line 17
    const v0, 0x3e99999a  # 0.3f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingSupplyCamp;->SUPPLY_COST_DEVELOPMENT_MODIFIER:F

    return-void

    :array_40
    .array-data 4
        0x0
        0x3c89374c  # 0.01675f
    .end array-data

    :array_48
    .array-data 4
        0x0
        0xe
    .end array-data

    :array_50
    .array-data 4
        0x0
        0x3e99999a  # 0.3f
    .end array-data

    :array_58
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_60
    .array-data 4
        0x0
        0x3e4ccccd  # 0.2f
    .end array-data
.end method
