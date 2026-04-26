.class public Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;
.super Ljava/lang/Object;
.source "Province_Save_GD.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Army;",
            ">;"
        }
    .end annotation
.end field

.field public civsSize:I

.field public defPositionTurns:I

.field public economy:I

.field public fDevLevel:F

.field public fHappiness:F

.field public fRevolutionaryRisk:F

.field public iArmoury:I

.field public iFarm:I

.field public iFort:I

.field public iLastPlagueTurnID:I

.field public iLibrary:I

.field public iMarket:I

.field public iNewColonyBonus:I

.field public iNumOfRecruitedArmyTotal:I

.field public iPlaguesDeaths:I

.field public iPort:I

.field public iSupply:I

.field public iSupportRebelsSize:I

.field public iWatchTower:I

.field public iWorkshop:I

.field public isCapital:Z

.field public isNotSuppliedForYTurns:I

.field public isPartOfHolyRomaEmpire:Z

.field public lSupportRebels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;",
            ">;"
        }
    .end annotation
.end field

.field public neighProvinceOfCivicWasLost:B

.field public oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

.field public pops:Lage/of/civilizations2/jakowski/lukasz/Province_Population;

.field public provincePlague:Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;

.field public startingEconomy:I

.field public startingPopulation:I

.field public totalCasualtiesInProvince:I

.field public trueOwnerOfProvince:I

.field public wasAttacked:B

.field public wasConquered:B

.field public wastelandLevel:I

.field public wonderBuilt:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->trueOwnerOfProvince:I

    .line 27
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isCapital:Z

    .line 29
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iPlaguesDeaths:I

    .line 31
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iNumOfRecruitedArmyTotal:I

    .line 33
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iLastPlagueTurnID:I

    .line 35
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isPartOfHolyRomaEmpire:Z

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;

    .line 39
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iNewColonyBonus:I

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    .line 42
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupportRebelsSize:I

    .line 44
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingPopulation:I

    .line 45
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingEconomy:I

    .line 48
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->armiesC:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->totalCasualtiesInProvince:I

    .line 83
    const v2, 0x3f59999a  # 0.85f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fHappiness:F

    .line 84
    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->fRevolutionaryRisk:F

    .line 86
    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    .line 89
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->isNotSuppliedForYTurns:I

    .line 91
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->defPositionTurns:I

    .line 103
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iMarket:I

    .line 107
    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wasConquered:B

    .line 108
    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wasAttacked:B

    .line 109
    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->neighProvinceOfCivicWasLost:B

    .line 114
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wastelandLevel:I

    .line 118
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wonderBuilt:Z

    return-void
.end method


# virtual methods
.method public final resetData()V
    .registers 3

    .line 56
    const/16 v0, -0x13

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iLastPlagueTurnID:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iPlaguesDeaths:I

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueProvince_GameData;

    .line 60
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iNumOfRecruitedArmyTotal:I

    .line 62
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iNewColonyBonus:I

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->lSupportRebels:Ljava/util/List;

    .line 65
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->iSupportRebelsSize:I

    .line 67
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingPopulation:I

    .line 68
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->startingEconomy:I

    .line 69
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->totalCasualtiesInProvince:I

    .line 71
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wonderBuilt:Z

    .line 72
    return-void
.end method
