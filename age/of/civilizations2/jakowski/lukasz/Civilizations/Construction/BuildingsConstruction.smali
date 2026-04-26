.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;
.super Ljava/lang/Object;
.source "BuildingsConstruction.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

.field public iNumOfTurnsLeft:I

.field public iProviID:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "iProviID"  # I
    .param p2, "iNumOfTurnsLeft"  # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;->PORT:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->constructionType:Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/ConstructionType;

    .line 26
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iProviID:I

    .line 27
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iNumOfTurnsLeft:I

    .line 28
    return-void
.end method


# virtual methods
.method public onConstructedRun(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 33
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iProviID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-eq v0, p1, :cond_26

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iProviID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    if-ne v0, p1, :cond_2b

    .line 34
    :cond_26
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Construction/BuildingsConstruction;->iProviID:I

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->buildPort(II)Z

    .line 36
    :cond_2b
    return-void
.end method
