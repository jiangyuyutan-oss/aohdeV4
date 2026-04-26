.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingPort;
.super Ljava/lang/Object;
.source "GV_BuildingPort.java"


# instance fields
.field public BUILD_PORT_IN_OCCUPIED_PROVINCE_MODIFIER:F

.field public PORT_BUILD_COST:[F

.field public PORT_BUILD_MOVEMENT_COST:[I

.field public PORT_CONSTRUCTION:[I

.field public PORT_COST_DEVELOPMENT_MODIFIER:F

.field public PORT_EXTRA_COST_PER_PORT:F

.field public PORT_INCOME_PRODUCTION:[F

.field public PORT_NAMES:[Ljava/lang/String;

.field public PORT_TECHNOLOGY_LEVEL:[F


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

    const-string v3, "Port"

    aput-object v3, v1, v2

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingPort;->PORT_NAMES:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [F

    fill-array-data v1, :array_44

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingPort;->PORT_BUILD_COST:[F

    .line 8
    new-array v1, v0, [I

    fill-array-data v1, :array_4c

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingPort;->PORT_BUILD_MOVEMENT_COST:[I

    .line 10
    new-array v1, v0, [F

    fill-array-data v1, :array_54

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingPort;->PORT_TECHNOLOGY_LEVEL:[F

    .line 12
    new-array v1, v0, [F

    fill-array-data v1, :array_5c

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingPort;->PORT_INCOME_PRODUCTION:[F

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_64

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingPort;->PORT_CONSTRUCTION:[I

    .line 16
    const v0, 0x3a449ba6  # 7.5E-4f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingPort;->PORT_EXTRA_COST_PER_PORT:F

    .line 17
    const v0, 0x3c75c28f  # 0.015f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingPort;->PORT_COST_DEVELOPMENT_MODIFIER:F

    .line 19
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingPort;->BUILD_PORT_IN_OCCUPIED_PROVINCE_MODIFIER:F

    return-void

    :array_44
    .array-data 4
        0x0
        0x3d8c49ba  # 0.0685f
    .end array-data

    :array_4c
    .array-data 4
        0x0
        0x10
    .end array-data

    :array_54
    .array-data 4
        0x0
        0x3e800000  # 0.25f
    .end array-data

    :array_5c
    .array-data 4
        0x0
        0x3d4ccccd  # 0.05f
    .end array-data

    :array_64
    .array-data 4
        0x0
        0x1
    .end array-data
.end method
