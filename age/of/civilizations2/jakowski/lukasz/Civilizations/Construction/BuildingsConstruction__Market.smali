.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction__Market;
.super Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;
.source "BuildingsConstruction__Market.java"


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "iProvinceID"  # I
    .param p2, "iNumOfTurnsLeft"  # I

    .line 9
    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;-><init>(II)V

    .line 11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;->MARKET:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction__Market;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    .line 12
    return-void
.end method


# virtual methods
.method public onConstructedRun(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 16
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction__Market;->iProviID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-eq v0, p1, :cond_26

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction__Market;->iProviID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    if-ne v0, p1, :cond_2b

    .line 17
    :cond_26
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction__Market;->iProviID:I

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->buildMarket(II)Z

    .line 19
    :cond_2b
    return-void
.end method
