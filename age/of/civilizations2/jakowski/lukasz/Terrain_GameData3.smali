.class public Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;
.super Ljava/lang/Object;
.source "Terrain_GameData3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private fBaseDevelopmentLevel:F

.field private fBuildCostModifier:F

.field private fDefensiveModifier:F

.field private fEconomyGrowthModifier:F

.field private fMilitaryUpkeepModifier:F

.field private fMovementCost:F

.field private fPopulationGrowthModifier:F

.field private iBaseProvinceValue:I

.field private oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field private sIconName:Ljava/lang/String;

.field private sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sIconName:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMovementCost:F

    .line 36
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fDefensiveModifier:F

    .line 37
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMilitaryUpkeepModifier:F

    .line 38
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fPopulationGrowthModifier:F

    .line 39
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fEconomyGrowthModifier:F

    .line 40
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBuildCostModifier:F

    .line 42
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBaseDevelopmentLevel:F

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->iBaseProvinceValue:I

    .line 44
    return-void
.end method


# virtual methods
.method public final getBaseDevelopmentLevel()F
    .registers 2

    .line 121
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBaseDevelopmentLevel:F

    return v0
.end method

.method public final getBaseProvinceValue()I
    .registers 2

    .line 129
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->iBaseProvinceValue:I

    return v0
.end method

.method public final getBuildCostModifier()F
    .registers 2

    .line 97
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBuildCostModifier:F

    return v0
.end method

.method public final getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .registers 2

    .line 65
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method public final getDefensiveModifier()F
    .registers 2

    .line 73
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fDefensiveModifier:F

    return v0
.end method

.method public final getEconomyGrowthModifier()F
    .registers 2

    .line 89
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fEconomyGrowthModifier:F

    return v0
.end method

.method public final getIconName()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sIconName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMilitaryUpkeepModifier()F
    .registers 2

    .line 105
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMilitaryUpkeepModifier:F

    return v0
.end method

.method public final getMovementCost()F
    .registers 2

    .line 113
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMovementCost:F

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPopulationGrowthModifier()F
    .registers 2

    .line 81
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fPopulationGrowthModifier:F

    return v0
.end method

.method public final setBaseDevelopmentLevel(F)V
    .registers 2
    .param p1, "fBaseDevelopmentLevel"  # F

    .line 125
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBaseDevelopmentLevel:F

    .line 126
    return-void
.end method

.method public final setBaseProvinceValue(I)V
    .registers 2
    .param p1, "iBaseProvinceValue"  # I

    .line 133
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->iBaseProvinceValue:I

    .line 134
    return-void
.end method

.method public final setBuildCostModifier(F)V
    .registers 2
    .param p1, "fBuildCostModifier"  # F

    .line 101
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBuildCostModifier:F

    .line 102
    return-void
.end method

.method public final setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .registers 2
    .param p1, "oColor"  # Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 69
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 70
    return-void
.end method

.method public final setDefensiveModifier(F)V
    .registers 2
    .param p1, "fDefensiveModifier"  # F

    .line 77
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fDefensiveModifier:F

    .line 78
    return-void
.end method

.method public final setEconomyGrowthModifier(F)V
    .registers 2
    .param p1, "fEconomyGrowthModifier"  # F

    .line 93
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fEconomyGrowthModifier:F

    .line 94
    return-void
.end method

.method public final setIconName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sIconName"  # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sIconName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final setMilitaryUpkeepModifier(F)V
    .registers 2
    .param p1, "fMilitaryUpkeepModifier"  # F

    .line 109
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMilitaryUpkeepModifier:F

    .line 110
    return-void
.end method

.method public final setMovementCost(F)V
    .registers 2
    .param p1, "fMovementCost"  # F

    .line 117
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMovementCost:F

    .line 118
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sName"  # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public final setPopulationGrowthModifier(F)V
    .registers 2
    .param p1, "fPopulationGrowthModifier"  # F

    .line 85
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fPopulationGrowthModifier:F

    .line 86
    return-void
.end method
