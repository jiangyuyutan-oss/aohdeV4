.class public Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;
.super Ljava/lang/Object;
.source "RandomGame_Manager.java"


# instance fields
.field private iCivilizationsSize:I

.field private iNeutralArmy:I

.field private lPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iCivilizationsSize:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iNeutralArmy:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    .line 23
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method


# virtual methods
.method public final addPlayer()V
    .registers 5

    .line 29
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public final checkCapitals()V
    .registers 5

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 60
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_3a

    .line 62
    const/4 v1, -0x1

    :try_start_12
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v2

    if-ltz v2, :cond_31

    .line 63
    :cond_2a
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->setCapitalProvinceID(I)V
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_31} :catch_32

    .line 67
    :cond_31
    goto :goto_3a

    .line 65
    :catch_32
    move-exception v2

    .line 66
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->setCapitalProvinceID(I)V

    .line 59
    .end local v2  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v0  # "i":I
    :cond_3d
    return-void
.end method

.method public final getCivilizationsSize()I
    .registers 2

    .line 75
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iCivilizationsSize:I

    return v0
.end method

.method public final getNeutralArmy()I
    .registers 2

    .line 83
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iNeutralArmy:I

    return v0
.end method

.method public final getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;
    .registers 3
    .param p1, "i"  # I

    .line 41
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    return-object v0
.end method

.method public final getPlayersSize()I
    .registers 2

    .line 45
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final isTagTaken(Ljava/lang/String;)Z
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 50
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 51
    const/4 v1, 0x1

    return v1

    .line 49
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    .end local v0  # "i":I
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public final removePlayer(I)V
    .registers 3
    .param p1, "i"  # I

    .line 34
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_6

    .line 37
    goto :goto_7

    .line 35
    :catch_6
    move-exception v0

    .line 38
    :goto_7
    return-void
.end method

.method public final setCivilizationsSize(I)V
    .registers 2
    .param p1, "iCivilizationsSize"  # I

    .line 79
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iCivilizationsSize:I

    .line 80
    return-void
.end method

.method public final setNeutralArmy(I)V
    .registers 2
    .param p1, "iNeutralArmy"  # I

    .line 87
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iNeutralArmy:I

    .line 88
    return-void
.end method
