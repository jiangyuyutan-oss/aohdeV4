.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingMarket;
.super Ljava/lang/Object;
.source "GV_BuildingMarket.java"


# instance fields
.field public MARKET_BUILD_COST:[F

.field public MARKET_BUILD_MOVEMENT_COST:[I

.field public MARKET_CONSTRUCTION:[I

.field public MARKET_COST_DEVELOPMENT_MODIFIER:F

.field public MARKET_EXTRA_COST_PER_MARKET:F

.field public MARKET_INCOME_TAXATION:[F

.field public MARKET_NAMES:[Ljava/lang/String;

.field public MARKET_TECHNOLOGY_LEVEL:[F


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

    const-string v3, "LocalMarket"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "TownMarket"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "TradeCenter"

    aput-object v3, v1, v2

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingMarket;->MARKET_NAMES:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [F

    fill-array-data v1, :array_4a

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingMarket;->MARKET_BUILD_COST:[F

    .line 8
    new-array v1, v0, [I

    fill-array-data v1, :array_56

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingMarket;->MARKET_BUILD_MOVEMENT_COST:[I

    .line 10
    new-array v1, v0, [F

    fill-array-data v1, :array_62

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingMarket;->MARKET_INCOME_TAXATION:[F

    .line 12
    new-array v1, v0, [F

    fill-array-data v1, :array_6e

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingMarket;->MARKET_TECHNOLOGY_LEVEL:[F

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_7a

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingMarket;->MARKET_CONSTRUCTION:[I

    .line 16
    const v0, 0x3b22339c  # 0.002475f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingMarket;->MARKET_EXTRA_COST_PER_MARKET:F

    .line 17
    const v0, 0x3cae147b  # 0.02125f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_BuildingMarket;->MARKET_COST_DEVELOPMENT_MODIFIER:F

    return-void

    :array_4a
    .array-data 4
        0x0
        0x3d570a3d  # 0.0525f
        0x3dbd70a4  # 0.0925f
        0x3e11eb85  # 0.1425f
    .end array-data

    :array_56
    .array-data 4
        0x0
        0x10
        0x14
        0x1a
    .end array-data

    :array_62
    .array-data 4
        0x0
        0x3d75c28f  # 0.06f
        0x3df5c28f  # 0.12f
        0x3e3851ec  # 0.18f
    .end array-data

    :array_6e
    .array-data 4
        0x0
        0x3e99999a  # 0.3f
        0x3f000000  # 0.5f
        0x3f400000  # 0.75f
    .end array-data

    :array_7a
    .array-data 4
        0x0
        0x2
        0x3
        0x3
    .end array-data
.end method
