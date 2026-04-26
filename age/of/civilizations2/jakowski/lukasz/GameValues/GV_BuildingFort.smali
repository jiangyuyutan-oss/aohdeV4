.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;
.super Ljava/lang/Object;
.source "GV_BuildingFort.java"


# instance fields
.field public FORT_BUILD_COST:[F

.field public FORT_BUILD_MOVEMENT_COST:[I

.field public FORT_CONSTRUCTION_TURNS:[I

.field public FORT_COST_DEVELOPMENT_MODIFIER:F

.field public FORT_DEFENSE_BONUS:[I

.field public FORT_EXTRA_COST_PER_FORT:F

.field public FORT_NAMES:[Ljava/lang/String;

.field public FORT_TECH_LEVEL:[F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Castle"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Fortress"

    aput-object v3, v1, v2

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_NAMES:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [F

    fill-array-data v1, :array_46

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_BUILD_COST:[F

    .line 8
    new-array v1, v0, [I

    fill-array-data v1, :array_50

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_BUILD_MOVEMENT_COST:[I

    .line 10
    new-array v1, v0, [I

    fill-array-data v1, :array_5a

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_DEFENSE_BONUS:[I

    .line 12
    new-array v1, v0, [F

    fill-array-data v1, :array_64

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_TECH_LEVEL:[F

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_6e

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_CONSTRUCTION_TURNS:[I

    .line 16
    const v0, 0x3b9ab29e  # 0.004721f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_EXTRA_COST_PER_FORT:F

    .line 17
    const v0, 0x3ce147ae  # 0.0275f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingFort;->FORT_COST_DEVELOPMENT_MODIFIER:F

    return-void

    nop

    :array_46
    .array-data 4
        0x0
        0x3d4ccccd  # 0.05f
        0x3db126e9  # 0.0865f
    .end array-data

    :array_50
    .array-data 4
        0x0
        0xc
        0xe
    .end array-data

    :array_5a
    .array-data 4
        0x0
        0xa
        0x14
    .end array-data

    :array_64
    .array-data 4
        0x0
        0x3e800000  # 0.25f
        0x3f000000  # 0.5f
    .end array-data

    :array_6e
    .array-data 4
        0x0
        0x2
        0x3
    .end array-data
.end method
