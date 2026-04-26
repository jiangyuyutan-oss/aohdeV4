.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingArmoury;
.super Ljava/lang/Object;
.source "GV_BuildingArmoury.java"


# instance fields
.field public ARMOURY_BUILD_COST:[F

.field public ARMOURY_BUILD_MOVEMENT_COST:[I

.field public ARMOURY_CONSTRUCTION:[I

.field public ARMOURY_COST_DEVELOPMENT_MODIFIER:F

.field public ARMOURY_EXTRA_COST_PER_ARMOURY:F

.field public ARMOURY_NAMES:[Ljava/lang/String;

.field public ARMOURY_TECH_LEVEL:[F

.field public COST_OF_RECRUIT_ARMY_GOLD_PER_UNIT_REDUCTION:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingArmoury;->COST_OF_RECRUIT_ARMY_GOLD_PER_UNIT_REDUCTION:I

    .line 7
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const-string v3, "Armoury"

    aput-object v3, v2, v0

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingArmoury;->ARMOURY_NAMES:[Ljava/lang/String;

    .line 9
    new-array v0, v1, [F

    fill-array-data v0, :array_3c

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingArmoury;->ARMOURY_BUILD_COST:[F

    .line 10
    new-array v0, v1, [I

    fill-array-data v0, :array_44

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingArmoury;->ARMOURY_BUILD_MOVEMENT_COST:[I

    .line 12
    new-array v0, v1, [F

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingArmoury;->ARMOURY_TECH_LEVEL:[F

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_54

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingArmoury;->ARMOURY_CONSTRUCTION:[I

    .line 16
    const v0, 0x3cc08312  # 0.0235f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingArmoury;->ARMOURY_EXTRA_COST_PER_ARMOURY:F

    .line 17
    const v0, 0x3e99999a  # 0.3f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingArmoury;->ARMOURY_COST_DEVELOPMENT_MODIFIER:F

    return-void

    nop

    :array_3c
    .array-data 4
        0x0
        0x3dae147b  # 0.085f
    .end array-data

    :array_44
    .array-data 4
        0x0
        0x1c
    .end array-data

    :array_4c
    .array-data 4
        0x0
        0x3ecccccd  # 0.4f
    .end array-data

    :array_54
    .array-data 4
        0x0
        0x4
    .end array-data
.end method
