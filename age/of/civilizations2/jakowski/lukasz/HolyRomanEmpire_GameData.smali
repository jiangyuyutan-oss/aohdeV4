.class public Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;
.super Ljava/lang/Object;
.source "HolyRomanEmpire_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iElectorsSize:I

.field private iEmperorAuthority:I

.field public iEmperorID:I

.field private iNextElectionsIn:I

.field private iPrincesSize:I

.field private iProvincesSize:I

.field private lElectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lPrinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lVotesFor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iProvincesSize:I

    .line 25
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    .line 26
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorAuthority:I

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    .line 29
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iElectorsSize:I

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    .line 32
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iPrincesSize:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    .line 36
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iNextElectionsIn:I

    return-void
.end method


# virtual methods
.method public final addElector(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 333
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2c

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 335
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_29

    .line 336
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iElectorsSize:I

    .line 339
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->buildVotesFor()V

    .line 340
    return-void

    .line 334
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 344
    .end local v0  # "i":I
    :cond_2c
    return-void
.end method

.method public final addPrince(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 107
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_e

    .line 108
    return-void

    .line 106
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v0  # "i":I
    :cond_11
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iPrincesSize:I

    .line 115
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsPartOfHolyRomanEmpire(Z)V

    .line 116
    return-void
.end method

.method public final addProvince(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 58
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v1

    if-ne v1, p1, :cond_f

    .line 59
    const/4 v1, 0x0

    return v1

    .line 57
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    .end local v0  # "i":I
    :cond_12
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iProvincesSize:I

    .line 66
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsPartOfHolyRomanEmpire(Z)V

    .line 68
    return v1
.end method

.method public final addStrongestPrinceAsElector()V
    .registers 9

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v0, "tPossibleElectors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 386
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-lez v2, :cond_3b

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getIsElector(I)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getIsEmperor(I)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 387
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 391
    .end local v1  # "i":I
    :cond_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_89

    .line 392
    const/4 v1, 0x0

    .line 394
    .local v1, "tBest":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7c

    .line 395
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPop()J

    move-result-wide v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPop()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_79

    .line 396
    move v1, v2

    .line 394
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 400
    .end local v2  # "i":I
    :cond_7c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->addElector(I)V

    .line 402
    .end local v1  # "tBest":I
    :cond_89
    return-void
.end method

.method public final buildVotesFor()V
    .registers 6

    .line 407
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    if-nez v0, :cond_b

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    .line 411
    :cond_b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2f

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 413
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .end local v0  # "i":I
    :cond_2e
    goto :goto_9e

    .line 417
    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v0, "oldVotes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 420
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 423
    .end local v1  # "i":I
    :cond_4b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 425
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_51
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v2

    if-ge v1, v2, :cond_9e

    .line 426
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 428
    :try_start_6b
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6b .. :try_end_76} :catch_77

    goto :goto_89

    .line 429
    :catch_77
    move-exception v2

    .line 430
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    .end local v2  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_89
    goto :goto_9b

    .line 434
    :cond_8a
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :goto_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 438
    .end local v0  # "oldVotes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1  # "i":I
    :cond_9e
    :goto_9e
    return-void
.end method

.method public canUnitHRE()Z
    .registers 3

    .line 210
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getCivsSizeThatExists()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvHre:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->UNITE_CIVS_BELOW:I

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final dissolveHRE()V
    .registers 5

    .line 180
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    const/4 v1, 0x0

    if-ltz v0, :cond_23

    .line 181
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsPartOfHolyRomanEmpire(Z)V

    .line 180
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 184
    .end local v0  # "i":I
    :cond_23
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0  # "i":I
    :goto_2b
    if-ltz v0, :cond_45

    .line 185
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsPartOfHolyRomanEmpire(Z)V

    .line 184
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    .line 188
    .end local v0  # "i":I
    :cond_45
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0  # "i":I
    :goto_4d
    if-ltz v0, :cond_67

    .line 189
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsPartOfHolyRomanEmpire(Z)V

    .line 188
    add-int/lit8 v0, v0, -0x1

    goto :goto_4d

    .line 192
    .end local v0  # "i":I
    :cond_67
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iPrincesSize:I

    .line 195
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iElectorsSize:I

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    .line 200
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iProvincesSize:I

    .line 203
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_85

    .line 206
    goto :goto_89

    .line 204
    :catch_85
    move-exception v0

    .line 205
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 207
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_89
    return-void
.end method

.method public getCivsSizeThatExists()I
    .registers 5

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "out":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_28

    .line 217
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-lez v2, :cond_25

    .line 218
    add-int/lit8 v0, v0, 0x1

    .line 216
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 222
    .end local v1  # "i":I
    :cond_28
    return v0
.end method

.method public final getElector(I)I
    .registers 3
    .param p1, "i"  # I

    .line 329
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getElectorsSize()I
    .registers 2

    .line 359
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iElectorsSize:I

    return v0
.end method

.method public final getEmperor()I
    .registers 3

    .line 288
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getEmperorAuthority()I
    .registers 2

    .line 311
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorAuthority:I

    return v0
.end method

.method public final getIsElector(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 364
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_13

    .line 365
    const/4 v1, 0x1

    return v1

    .line 363
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    .end local v0  # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public getIsEmperor(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 319
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    const/4 v1, 0x0

    if-ltz v0, :cond_d

    .line 320
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v0

    if-ne v0, p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    .line 323
    :cond_d
    return v1
.end method

.method public final getIsImperialProvince(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 91
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v1

    if-ne v1, p1, :cond_f

    .line 92
    const/4 v1, 0x1

    return v1

    .line 90
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    .end local v0  # "i":I
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final getIsPrince(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 170
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_f

    .line 171
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v0  # "i":I
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final getNextElectionsIn()I
    .registers 2

    .line 443
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iNextElectionsIn:I

    return v0
.end method

.method public final getPrince(I)I
    .registers 3
    .param p1, "i"  # I

    .line 102
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getPrincesSize()I
    .registers 2

    .line 153
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iPrincesSize:I

    return v0
.end method

.method public final getPrincesSize_True()I
    .registers 5

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 160
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-lez v2, :cond_1a

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    .end local v1  # "i":I
    :cond_1d
    return v0
.end method

.method public final getProvinces(I)I
    .registers 3
    .param p1, "i"  # I

    .line 53
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getProvincesSize()I
    .registers 2

    .line 86
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iProvincesSize:I

    return v0
.end method

.method public final randomNextElections()V
    .registers 3

    .line 451
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iNextElectionsIn:I

    .line 452
    return-void
.end method

.method public final removeElector(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 348
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_2a

    .line 349
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 350
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iElectorsSize:I

    .line 352
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->buildVotesFor()V

    .line 353
    return-void

    .line 347
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    .end local v0  # "i":I
    :cond_2d
    return-void
.end method

.method public final removePrince(I)V
    .registers 7
    .param p1, "nCivID"  # I

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 124
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_70

    .line 125
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsPartOfHolyRomanEmpire(Z)V

    .line 127
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removeElector(I)V

    .line 128
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iPrincesSize:I

    .line 131
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_28
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v3

    if-ge v1, v3, :cond_54

    .line 132
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_51

    .line 133
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 137
    .end local v1  # "j":I
    :cond_54
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    if-ne v1, v0, :cond_69

    .line 138
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v1

    if-lez v1, :cond_65

    .line 139
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    goto :goto_6f

    .line 141
    :cond_65
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    goto :goto_6f

    .line 144
    :cond_69
    if-le v1, v0, :cond_6f

    .line 145
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    .line 147
    :cond_6f
    :goto_6f
    return-void

    .line 123
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    .end local v0  # "i":I
    :cond_73
    return-void
.end method

.method public final removePrinceID(I)V
    .registers 3
    .param p1, "nID"  # I

    .line 119
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removePrince(I)V

    .line 120
    return-void
.end method

.method public final removeProvince(I)Z
    .registers 5
    .param p1, "nProvinceID"  # I

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvincesSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_29

    .line 73
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v1

    if-ne v1, p1, :cond_26

    .line 74
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsPartOfHolyRomanEmpire(Z)V

    .line 76
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iProvincesSize:I

    .line 78
    const/4 v1, 0x1

    return v1

    .line 72
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    .end local v0  # "i":I
    :cond_29
    return v2
.end method

.method public final setElectorID(I)V
    .registers 3
    .param p1, "nID"  # I

    .line 373
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v0

    if-ge p1, v0, :cond_1f

    .line 374
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getIsElector(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 375
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removeElector(I)V

    goto :goto_1f

    .line 377
    :cond_18
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->addElector(I)V

    .line 380
    :cond_1f
    :goto_1f
    return-void
.end method

.method public final setEmperor(I)V
    .registers 4
    .param p1, "nCivID"  # I

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 293
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_13

    .line 294
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    .line 295
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removeElector(I)V

    .line 296
    return-void

    .line 292
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    .end local v0  # "i":I
    :cond_16
    return-void
.end method

.method public final setEmperorAuthority(I)V
    .registers 2
    .param p1, "iEmperorAuthority"  # I

    .line 315
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorAuthority:I

    .line 316
    return-void
.end method

.method public final setEmperorID(I)V
    .registers 3
    .param p1, "nID"  # I

    .line 302
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    if-eq v0, p1, :cond_e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_e

    .line 306
    :cond_b
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    goto :goto_11

    .line 303
    :cond_e
    :goto_e
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    .line 308
    :goto_11
    return-void
.end method

.method public final setNextElectionsIn(I)V
    .registers 2
    .param p1, "iNextElectionsIn"  # I

    .line 447
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iNextElectionsIn:I

    .line 448
    return-void
.end method

.method public final uniteHRE(I)V
    .registers 13
    .param p1, "civID"  # I

    .line 227
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_21e

    .line 228
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_21a

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, "provs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_35
    if-ltz v2, :cond_57

    .line 231
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    .line 235
    .end local v2  # "j":I
    :cond_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2  # "j":I
    :goto_5d
    if-ltz v2, :cond_21a

    .line 236
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v3

    .line 237
    .local v3, "tempArmy0":I
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    .line 238
    .local v5, "tempCiv0":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v6

    .line 239
    .local v6, "tempArmyNewOwner":I
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(I)V

    .line 241
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPartOfHolyRomanEmpire()Z

    move-result v7

    if-eqz v7, :cond_e2

    .line 242
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProv(I)V

    .line 244
    :cond_e2
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId(IZ)V

    .line 246
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V

    .line 247
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, p1, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V

    .line 249
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v4, "tempCivsLostAccess":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_121
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v8

    if-ge v7, v8, :cond_155

    .line 252
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v7, v7, 0x1

    goto :goto_121

    .line 255
    .end local v7  # "k":I
    :cond_155
    const/4 v7, 0x0

    .restart local v7  # "k":I
    :goto_156
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1ed

    .line 256
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v8

    if-eq v8, p1, :cond_1e9

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 257
    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v8

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_1e9

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 258
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v8

    if-lez v8, :cond_1be

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v9

    if-eq v8, v9, :cond_1e9

    :cond_1be
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 259
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getMilitaryAccess(II)I

    move-result v8

    if-gtz v8, :cond_1e9

    .line 261
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->accessLost_MoveArmyToClosetsProvince(II)V

    .line 255
    :cond_1e9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_156

    .line 265
    .end local v7  # "k":I
    :cond_1ed
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v7

    if-nez v7, :cond_216

    .line 266
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeCapitalCityIcon()V

    .line 235
    .end local v3  # "tempArmy0":I
    .end local v4  # "tempCivsLostAccess":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5  # "tempCiv0":I
    .end local v6  # "tempArmyNewOwner":I
    :cond_216
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_5d

    .line 227
    .end local v1  # "provs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2  # "j":I
    :cond_21a
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 272
    .end local v0  # "i":I
    :cond_21e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebuildRegionsCivs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;Ljava/lang/String;I)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    .line 279
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->dissolveHRE()V
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23c} :catch_23d

    .line 282
    goto :goto_23e

    .line 280
    :catch_23d
    move-exception v0

    .line 283
    :goto_23e
    return-void
.end method

.method public final updateHRE_AfterRemoveCivilization(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 42
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_13

    .line 43
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removePrince(I)V

    .line 44
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 46
    :cond_13
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-le v1, p1, :cond_2e

    .line 47
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    .end local v0  # "i":I
    :cond_31
    return-void
.end method
