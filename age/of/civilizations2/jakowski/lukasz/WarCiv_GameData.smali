.class public Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;
.super Ljava/lang/Object;
.source "WarCiv_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iCasualties:I

.field private iCivID:I

.field private iCivilianDeaths:I

.field private iConqueredProvinces:I

.field private iEconomicLosses:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "nCivID"  # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivID:I

    .line 18
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCasualties:I

    .line 19
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivilianDeaths:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iEconomicLosses:I

    .line 21
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iConqueredProvinces:I

    .line 26
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivID:I

    .line 27
    return-void
.end method


# virtual methods
.method public final addCasualties(I)V
    .registers 3
    .param p1, "nCasualties"  # I

    .line 44
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCasualties:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCasualties:I

    .line 45
    return-void
.end method

.method public final addCivilianDeaths(I)V
    .registers 3
    .param p1, "nCivilianDeaths"  # I

    .line 52
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivilianDeaths:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivilianDeaths:I

    .line 53
    return-void
.end method

.method public final addConqueredProvinces()V
    .registers 2

    .line 72
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iConqueredProvinces:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iConqueredProvinces:I

    .line 73
    return-void
.end method

.method public final addEconomicLosses(I)V
    .registers 3
    .param p1, "nEconomicLosses"  # I

    .line 60
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iEconomicLosses:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iEconomicLosses:I

    .line 61
    return-void
.end method

.method public final getCasualties()I
    .registers 2

    .line 40
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCasualties:I

    return v0
.end method

.method public final getCivID()I
    .registers 2

    .line 32
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivID:I

    return v0
.end method

.method public final getCivilianDeaths()I
    .registers 2

    .line 48
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivilianDeaths:I

    return v0
.end method

.method public final getConqueredProvinces()I
    .registers 2

    .line 64
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iConqueredProvinces:I

    return v0
.end method

.method public final getEconomicLosses()I
    .registers 2

    .line 56
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iEconomicLosses:I

    return v0
.end method

.method public final setCivID(I)V
    .registers 2
    .param p1, "iCivID"  # I

    .line 36
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivID:I

    .line 37
    return-void
.end method

.method public final setConqueredProvinces(I)V
    .registers 2
    .param p1, "iConqueredProvinces"  # I

    .line 68
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iConqueredProvinces:I

    .line 69
    return-void
.end method
