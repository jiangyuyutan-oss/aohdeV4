.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingLibrary;
.super Ljava/lang/Object;
.source "GV_BuildingLibrary.java"


# instance fields
.field public LIBRARY_BUILD_COST:[F

.field public LIBRARY_BUILD_MOVEMENT_COST:[I

.field public LIBRARY_CONSTRUCTION:[I

.field public LIBRARY_COST_DEVELOPMENT_MODIFIER:F

.field public LIBRARY_EXTRA_COST_PER_LIBRARY:F

.field public LIBRARY_NAMES:[Ljava/lang/String;

.field public LIBRARY_RESEARCH_PER_POPULATION:[I

.field public LIBRARY_TECH_LEVEL:[F


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

    const-string v3, "Library"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "University"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ResearchLab"

    aput-object v3, v1, v2

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingLibrary;->LIBRARY_NAMES:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [F

    fill-array-data v1, :array_4a

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingLibrary;->LIBRARY_BUILD_COST:[F

    .line 8
    new-array v1, v0, [I

    fill-array-data v1, :array_56

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingLibrary;->LIBRARY_BUILD_MOVEMENT_COST:[I

    .line 10
    new-array v1, v0, [I

    fill-array-data v1, :array_62

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingLibrary;->LIBRARY_RESEARCH_PER_POPULATION:[I

    .line 12
    new-array v1, v0, [F

    fill-array-data v1, :array_6e

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingLibrary;->LIBRARY_TECH_LEVEL:[F

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_7a

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingLibrary;->LIBRARY_CONSTRUCTION:[I

    .line 16
    const v0, 0x3b8b4396  # 0.00425f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingLibrary;->LIBRARY_EXTRA_COST_PER_LIBRARY:F

    .line 17
    const v0, 0x3e0a3d71  # 0.135f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingLibrary;->LIBRARY_COST_DEVELOPMENT_MODIFIER:F

    return-void

    :array_4a
    .array-data 4
        0x0
        0x3cf5c28f  # 0.03f
        0x3d79db23  # 0.061f
        0x3de147ae  # 0.11f
    .end array-data

    :array_56
    .array-data 4
        0x0
        0x8
        0xc
        0x10
    .end array-data

    :array_62
    .array-data 4
        0x0
        0x1f4
        0xfa
        0x7d
    .end array-data

    :array_6e
    .array-data 4
        0x0
        0x3e800000  # 0.25f
        0x3f000000  # 0.5f
        0x3f59999a  # 0.85f
    .end array-data

    :array_7a
    .array-data 4
        0x0
        0x2
        0x3
        0x4
    .end array-data
.end method
