.class public Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;
.super Ljava/lang/Object;
.source "Graph_Vertical_Data.java"


# static fields
.field private static final ANIMATION_TIME:I = 0x2d5


# instance fields
.field private iCivID:I

.field private inView:Z

.field private lTime:J

.field private lValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "iCivID"  # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->inView:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lTime:J

    .line 35
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    .line 36
    return-void
.end method


# virtual methods
.method public final buildArmiesData()V
    .registers 6

    .line 244
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v0

    .line 248
    .local v0, "nNumOfUnits":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 249
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProviP(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 252
    .end local v1  # "i":I
    :cond_3c
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationAllAroundTheWorld;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationAllAroundTheWorld;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public final buildArmyByProvincesData()V
    .registers 5

    .line 309
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "nArmySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 314
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 317
    .end local v1  # "i":I
    :cond_25
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    .line 320
    return-void
.end method

.method public final buildArmyPerCapitaData()V
    .registers 8

    .line 256
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "nPopulation":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v1

    .line 261
    .local v1, "nNumOfUnits":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 262
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 265
    .end local v2  # "i":I
    :cond_41
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_42
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 266
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProviP(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 269
    .end local v2  # "i":I
    :cond_6c
    add-int/2addr v0, v1

    .line 271
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_ArmyPerCapita;

    int-to-float v4, v1

    const/high16 v5, 0x42c80000  # 100.0f

    mul-float v4, v4, v5

    int-to-float v6, v0

    div-float/2addr v4, v6

    mul-float v4, v4, v5

    float-to-int v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_ArmyPerCapita;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public final buildConqueredProvincesData()V
    .registers 5

    .line 297
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 299
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->numOfConqueredProvinces:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public final buildConstructedBuildingsData()V
    .registers 5

    .line 303
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->numOfBuildingsConstructed:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public final buildContintentData()V
    .registers 7

    .line 162
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getContinentsSize()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 167
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 170
    .end local v1  # "i":I
    :cond_22
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_23
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_73

    .line 171
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 174
    .end local v1  # "i":I
    :cond_73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_79
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getContinentsSize()I

    move-result v3

    if-ge v2, v3, :cond_a6

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_a3

    .line 178
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Continent;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Continent;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 182
    .end local v2  # "i":I
    :cond_a6
    :goto_a6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_dd

    .line 183
    const/4 v2, 0x0

    .line 185
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_ae
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ce

    .line 186
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_cb

    .line 187
    move v2, v3

    .line 185
    :cond_cb
    add-int/lit8 v3, v3, 0x1

    goto :goto_ae

    .line 191
    .end local v3  # "i":I
    :cond_ce
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 193
    .end local v2  # "tempMaxID":I
    goto :goto_a6

    .line 194
    :cond_dd
    return-void
.end method

.method public final buildEconomyByProvincesData()V
    .registers 5

    .line 289
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 291
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    .line 294
    return-void
.end method

.method public final buildEconomyData()V
    .registers 6

    .line 331
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, "nEconomy":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 336
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v2

    add-int/2addr v0, v2

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 339
    .end local v1  # "i":I
    :cond_2f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Population;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Population;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public final buildHeights(II)V
    .registers 7
    .param p1, "nGraphHeight"  # I
    .param p2, "nMaxValue"  # I

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 155
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getValue()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->setHeight(I)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    .end local v0  # "i":I
    :cond_2a
    return-void
.end method

.method public final buildPopulationByProvincesData()V
    .registers 5

    .line 281
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 283
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    .line 286
    return-void
.end method

.method public final buildPopulationData()V
    .registers 10

    .line 197
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "numOfPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1e

    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 205
    .end local v1  # "i":I
    :cond_1e
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_1f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_b1

    .line 206
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v4

    if-ge v2, v4, :cond_ad

    .line 207
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 205
    .end local v2  # "j":I
    :cond_ad
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    .line 211
    .end local v1  # "i":I
    :cond_b1
    const/4 v1, 0x0

    .line 212
    .local v1, "nSecondBiggestPopulationID":I
    const/4 v2, 0x0

    .line 214
    .local v2, "nRestOfPopulation":I
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    :goto_b5
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_db

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_d8

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    if-eq v4, v5, :cond_d8

    .line 216
    move v1, v4

    .line 214
    :cond_d8
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 220
    .end local v4  # "i":I
    :cond_db
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_dc
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_f8

    .line 221
    if-eq v4, v1, :cond_f5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    if-eq v4, v5, :cond_f5

    .line 222
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v2, v5

    .line 220
    :cond_f5
    add-int/lit8 v4, v4, 0x1

    goto :goto_dc

    .line 226
    .end local v4  # "i":I
    :cond_f8
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Population;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Population;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Population;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Population;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Population;

    invoke-direct {v5, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Population;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public final buildPopulationOfCivByNationalitiesData(I)V
    .registers 6
    .param p1, "nCivID"  # I

    .line 343
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "nPopulation":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 348
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 351
    .end local v1  # "i":I
    :cond_31
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Population;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_Population;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public final buildPopulationOfCivilizationAllAroundTheWorldData(I)V
    .registers 7
    .param p1, "nOfCivID"  # I

    .line 232
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "nPopulation":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 237
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 240
    .end local v1  # "i":I
    :cond_33
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationAllAroundTheWorld;

    invoke-direct {v2, v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationAllAroundTheWorld;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public final buildTechnologyLevelsByProvincesData()V
    .registers 5

    .line 323
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    .line 328
    return-void
.end method

.method public final buildTechnologyLevelsData()V
    .registers 5

    .line 275
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_TechnologyLevels;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value_TechnologyLevels;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public final drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p6, "nColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p6

    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_16

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lTime:J

    .line 45
    :cond_16
    const/4 v0, 0x0

    .line 47
    .local v0, "tempValuesHeight":I
    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lTime:J

    const-wide/16 v4, 0x2d5

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_100

    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "tempHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 51
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 54
    .end local v3  # "i":I
    :cond_3e
    int-to-float v3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x44354000  # 725.0f

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-int v2, v3

    .line 55
    move v13, v2

    .line 57
    .end local v0  # "tempValuesHeight":I
    .local v13, "tempValuesHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v3, 0x0

    move v14, v0

    move v15, v2

    move/from16 v16, v3

    .end local v0  # "i":I
    .end local v2  # "tempHeight":I
    .local v14, "i":I
    .local v15, "tempHeight":I
    .local v16, "tempAnimationHeight":I
    :goto_55
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_fb

    .line 59
    :try_start_5d
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    add-int v5, p3, p5

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    if-lt v15, v0, :cond_84

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    move v8, v0

    goto :goto_85

    :cond_84
    move v8, v15

    :goto_85
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_a3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_a3} :catch_a4

    .line 62
    goto :goto_d9

    .line 60
    :catch_a4
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    add-int v5, p3, p5

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v3

    if-lt v15, v3, :cond_cb

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v3

    move v8, v3

    goto :goto_cc

    :cond_cb
    move v8, v15

    :goto_cc
    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V

    .line 63
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_d9
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    add-int v16, v16, v0

    .line 64
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    sub-int/2addr v15, v0

    .line 66
    if-gtz v15, :cond_f7

    .line 67
    goto :goto_fb

    .line 57
    :cond_f7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_55

    .line 71
    .end local v14  # "i":I
    .end local v16  # "tempAnimationHeight":I
    :cond_fb
    :goto_fb
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 72
    .end local v15  # "tempHeight":I
    goto :goto_15c

    .line 74
    .end local v13  # "tempValuesHeight":I
    .local v0, "tempValuesHeight":I
    :cond_100
    const/4 v2, 0x0

    move v9, v0

    move v13, v2

    .end local v0  # "tempValuesHeight":I
    .local v9, "tempValuesHeight":I
    .local v13, "i":I
    :goto_103
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_15b

    .line 76
    :try_start_10b
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    add-int v5, p3, p5

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_133
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10b .. :try_end_133} :catch_134

    .line 79
    goto :goto_14b

    .line 77
    :catch_134
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    add-int v5, p3, p5

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    .line 80
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_14b
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    add-int/2addr v9, v0

    .line 74
    add-int/lit8 v13, v13, 0x1

    goto :goto_103

    :cond_15b
    move v13, v9

    .line 84
    .end local v9  # "tempValuesHeight":I
    .local v13, "tempValuesHeight":I
    :goto_15c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v2, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v4, v2

    float-to-int v2, v4

    sub-int v4, v0, v2

    add-int v0, p3, p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v5, v0, v2

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3ee66666  # 0.45f

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v6, v9, v9, v9, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v7, 0x42b40000  # 90.0f

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 86
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 88
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 90
    :try_start_1bf
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    add-int v0, p3, p5

    sub-int/2addr v0, v13

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v0, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v5, v0, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1f1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1bf .. :try_end_1f1} :catch_1f2

    .line 93
    goto :goto_219

    .line 91
    :catch_1f2
    move-exception v0

    .line 92
    .restart local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    add-int v3, p3, p5

    sub-int/2addr v3, v13

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int v5, v3, v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 94
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_219
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    add-int v2, p3, p5

    sub-int/2addr v2, v13

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v10, v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 95
    return-void
.end method

.method public final drawData_ONLY_SPLTTED(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p6, "nColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p6

    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_16

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lTime:J

    .line 103
    :cond_16
    const/4 v0, 0x0

    .line 105
    .local v0, "tempValuesHeight":I
    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lTime:J

    const-wide/16 v4, 0x2d5

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_100

    .line 106
    const/4 v2, 0x0

    .line 108
    .local v2, "tempHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 109
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 112
    .end local v3  # "i":I
    :cond_3e
    int-to-float v3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x44354000  # 725.0f

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-int v2, v3

    .line 113
    move v13, v2

    .line 115
    .end local v0  # "tempValuesHeight":I
    .local v13, "tempValuesHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v3, 0x0

    move v14, v0

    move v15, v2

    move/from16 v16, v3

    .end local v0  # "i":I
    .end local v2  # "tempHeight":I
    .local v14, "i":I
    .local v15, "tempHeight":I
    .local v16, "tempAnimationHeight":I
    :goto_55
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_fb

    .line 117
    :try_start_5d
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    add-int v5, p3, p5

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    if-lt v15, v0, :cond_84

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    move v8, v0

    goto :goto_85

    :cond_84
    move v8, v15

    :goto_85
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_a3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_a3} :catch_a4

    .line 120
    goto :goto_d9

    .line 118
    :catch_a4
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    add-int v5, p3, p5

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v3

    if-lt v15, v3, :cond_cb

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v3

    move v8, v3

    goto :goto_cc

    :cond_cb
    move v8, v15

    :goto_cc
    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V

    .line 121
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_d9
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    add-int v16, v16, v0

    .line 122
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    sub-int/2addr v15, v0

    .line 124
    if-gtz v15, :cond_f7

    .line 125
    goto :goto_fb

    .line 115
    :cond_f7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_55

    .line 129
    .end local v14  # "i":I
    .end local v16  # "tempAnimationHeight":I
    :cond_fb
    :goto_fb
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 130
    .end local v15  # "tempHeight":I
    goto :goto_15c

    .line 132
    .end local v13  # "tempValuesHeight":I
    .local v0, "tempValuesHeight":I
    :cond_100
    const/4 v2, 0x0

    move v9, v0

    move v13, v2

    .end local v0  # "tempValuesHeight":I
    .local v9, "tempValuesHeight":I
    .local v13, "i":I
    :goto_103
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_15b

    .line 134
    :try_start_10b
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    add-int v5, p3, p5

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_133
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10b .. :try_end_133} :catch_134

    .line 137
    goto :goto_14b

    .line 135
    :catch_134
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    add-int v5, p3, p5

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    .line 138
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_14b
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    add-int/2addr v9, v0

    .line 132
    add-int/lit8 v13, v13, 0x1

    goto :goto_103

    :cond_15b
    move v13, v9

    .line 142
    .end local v9  # "tempValuesHeight":I
    .local v13, "tempValuesHeight":I
    :goto_15c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v2, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->getValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v4, v2

    float-to-int v2, v4

    sub-int v4, v0, v2

    add-int v0, p3, p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v5, v0, v2

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3ee66666  # 0.45f

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v6, v9, v9, v9, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v7, 0x42b40000  # 90.0f

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 144
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 146
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 147
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    add-int v0, p3, p5

    sub-int/2addr v0, v13

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v0, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v5, v0, v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 148
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRectSmall:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    add-int v2, p3, p5

    sub-int/2addr v2, v13

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v10, v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 149
    return-void
.end method

.method public final getCivID()I
    .registers 2

    .line 357
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->iCivID:I

    return v0
.end method

.method public final getInView()Z
    .registers 2

    .line 371
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->inView:Z

    return v0
.end method

.method public final getValue()I
    .registers 4

    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, "tOut":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 364
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 367
    .end local v1  # "i":I
    :cond_1a
    return v0
.end method

.method public final getValue(I)I
    .registers 3
    .param p1, "i"  # I

    .line 387
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getValue()I

    move-result v0

    return v0
.end method

.method public final getValueDataTypeID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 391
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v0

    return v0
.end method

.method public final getValuesSize()I
    .registers 2

    .line 383
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final resetAnimation()V
    .registers 3

    .line 379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->lTime:J

    .line 380
    return-void
.end method

.method public final setInView(Z)V
    .registers 2
    .param p1, "inView"  # Z

    .line 375
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph_Vertical_Data;->inView:Z

    .line 376
    return-void
.end method
