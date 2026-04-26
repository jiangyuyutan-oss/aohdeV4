.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;
.super Ljava/lang/Object;
.source "CivilizationsNeighbors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;
    }
.end annotation


# instance fields
.field public civs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;",
            ">;"
        }
    .end annotation
.end field

.field public civsSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civsSize:I

    return-void
.end method

.method private addLandNeighbors(Lage/of/civilizations2/jakowski/lukasz/Province;I)V
    .registers 7
    .param p1, "province"  # Lage/of/civilizations2/jakowski/lukasz/Province;
    .param p2, "civID"  # I

    .line 44
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v0

    .line 46
    .local v0, "numNeighbors":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    if-ge v1, v0, :cond_1f

    .line 47
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    .line 49
    .local v2, "neighborCivID":I
    if-lez v2, :cond_1c

    if-eq v2, p2, :cond_1c

    .line 50
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->addCiv(I)V

    .line 46
    .end local v2  # "neighborCivID":I
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 53
    .end local v1  # "j":I
    :cond_1f
    return-void
.end method


# virtual methods
.method public addCiv(I)V
    .registers 4
    .param p1, "civID"  # I

    .line 65
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 66
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    if-ne v1, p1, :cond_17

    .line 67
    return-void

    .line 65
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 71
    .end local v0  # "i":I
    :cond_1a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    invoke-direct {v1, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;-><init>(Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public final buildNeighbors(I)V
    .registers 5
    .param p1, "civID"  # I

    .line 25
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civsSize:I

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    :try_start_9
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 30
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v1

    .line 32
    .local v1, "provinceID":I
    if-ltz v1, :cond_2a

    .line 33
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->addLandNeighbors(Lage/of/civilizations2/jakowski/lukasz/Province;I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_2e

    .line 29
    .end local v1  # "provinceID":I
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 38
    .end local v0  # "i":I
    :cond_2d
    goto :goto_32

    .line 36
    :catch_2e
    move-exception v0

    .line 37
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 40
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_32
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civsSize:I

    .line 41
    return-void
.end method

.method public isNeighbor(I)Z
    .registers 4
    .param p1, "civID"  # I

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civsSize:I

    if-ge v0, v1, :cond_16

    .line 56
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivilizationsNeighbors$CivNeighbor;->civID:I

    if-ne v1, p1, :cond_13

    .line 57
    const/4 v1, 0x1

    return v1

    .line 55
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    .end local v0  # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method
