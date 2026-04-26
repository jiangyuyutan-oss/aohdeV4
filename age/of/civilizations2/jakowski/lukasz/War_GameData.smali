.class public Lage/of/civilizations2/jakowski/lukasz/War_GameData;
.super Ljava/lang/Object;
.source "War_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public WAR_TAG:Ljava/lang/String;

.field public iLastFight_InTurns:I

.field public iLastTurn_ConqueredProvince:I

.field private iWarTurnID:I

.field private lAggressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;",
            ">;"
        }
    .end annotation
.end field

.field private lDefenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;",
            ">;"
        }
    .end annotation
.end field

.field public wasAnyAttack:Z


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "nAggressor"  # I
    .param p2, "nDefender"  # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iWarTurnID:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTurns:I

    .line 28
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastTurn_ConqueredProvince:I

    .line 29
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->wasAnyAttack:Z

    .line 38
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->addAggressor(I)V

    .line 39
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->addDefender(I)V

    .line 41
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iWarTurnID:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iWarTurnID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->WAR_TAG:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final addAggressor(I)V
    .registers 6
    .param p1, "nCivID"  # I

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 51
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_16

    .line 52
    return-void

    .line 50
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v0  # "i":I
    :cond_19
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_24
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 60
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 61
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->RELATION_AT_WAR:I

    int-to-float v3, v3

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivBWar(IIF)V

    .line 62
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->RELATION_AT_WAR:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivBWar(IIF)V

    .line 59
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 66
    .end local v0  # "i":I
    :cond_61
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTurns:I

    .line 67
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastTurn_ConqueredProvince:I

    .line 69
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 70
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    if-eq v0, p1, :cond_8f

    .line 71
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 74
    :cond_8f
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_90
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iVassalsSize:I

    if-ge v0, v2, :cond_b9

    .line 75
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iput-boolean v1, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b6} :catch_ba

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 79
    .end local v0  # "i":I
    :cond_b9
    goto :goto_be

    .line 77
    :catch_ba
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 80
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_be
    return-void
.end method

.method public final addCasualties(II)V
    .registers 9
    .param p1, "iCivID"  # I
    .param p2, "iCasualties"  # I

    .line 1004
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTurns:I

    .line 1005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->wasAnyAttack:Z

    .line 1007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1008
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_2d

    .line 1009
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCasualties(I)V

    .line 1011
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    .line 1012
    return-void

    .line 1007
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1016
    .end local v0  # "i":I
    :cond_30
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_31
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 1017
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_57

    .line 1018
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCasualties(I)V

    .line 1020
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    .line 1021
    return-void

    .line 1016
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1024
    .end local v0  # "i":I
    :cond_5a
    return-void
.end method

.method public final addCivilianEconomicLosses(III)V
    .registers 10
    .param p1, "iCivID"  # I
    .param p2, "iCivilianDeaths"  # I
    .param p3, "iEconomicLosses"  # I

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTurns:I

    .line 1029
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1030
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_31

    .line 1031
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCivilianDeaths(I)V

    .line 1032
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addEconomicLosses(I)V

    .line 1034
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    .line 1035
    return-void

    .line 1029
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1039
    .end local v0  # "i":I
    :cond_34
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_35
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 1040
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_62

    .line 1041
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCivilianDeaths(I)V

    .line 1042
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addEconomicLosses(I)V

    .line 1044
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->ttWC:J

    .line 1045
    return-void

    .line 1039
    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 1048
    .end local v0  # "i":I
    :cond_65
    return-void
.end method

.method public final addConqueredProvinces(I)V
    .registers 4
    .param p1, "iCivID"  # I

    .line 986
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastTurn_ConqueredProvince:I

    .line 988
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 989
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_1d

    .line 990
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addConqueredProvinces()V

    .line 991
    return-void

    .line 988
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 995
    .end local v0  # "i":I
    :cond_20
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_21
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 996
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_39

    .line 997
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addConqueredProvinces()V

    .line 998
    return-void

    .line 995
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1001
    .end local v0  # "i":I
    :cond_3c
    return-void
.end method

.method public final addDefender(I)V
    .registers 6
    .param p1, "nCivID"  # I

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 99
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_16

    .line 100
    return-void

    .line 98
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    .end local v0  # "i":I
    :cond_19
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_24
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 108
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 109
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->RELATION_AT_WAR:I

    int-to-float v3, v3

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivBWar(IIF)V

    .line 110
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->RELATION_AT_WAR:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivBWar(IIF)V

    .line 107
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 114
    .end local v0  # "i":I
    :cond_61
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTurns:I

    .line 115
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastTurn_ConqueredProvince:I

    .line 117
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 118
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    if-eq v0, p1, :cond_8f

    .line 119
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 122
    :cond_8f
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_90
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iVassalsSize:I

    if-ge v0, v2, :cond_b9

    .line 123
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iput-boolean v1, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b6} :catch_ba

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 127
    .end local v0  # "i":I
    :cond_b9
    goto :goto_be

    .line 125
    :catch_ba
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 128
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_be
    return-void
.end method

.method public final getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 884
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    return-object v0
.end method

.method public final getAggressorID_ByCivID(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 889
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 890
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_16

    if-ne v1, p1, :cond_12

    .line 891
    return v0

    .line 889
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 896
    .end local v0  # "i":I
    :cond_15
    goto :goto_1a

    .line 894
    :catch_16
    move-exception v0

    .line 895
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 898
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1a
    const/4 v0, -0x1

    return v0
.end method

.method public final getAggressorsSize()I
    .registers 2

    .line 916
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getAggressors_ProvincesLost(ILjava/util/List;Ljava/util/List;)Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;
    .registers 11
    .param p1, "id"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;"
        }
    .end annotation

    .line 737
    .local p2, "addDefender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local p3, "addAggressor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 739
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;-><init>(I)V

    .line 741
    .local v0, "outPC":Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_ae

    .line 743
    :try_start_19
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 744
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_26
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_a5

    .line 745
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_61

    .line 746
    goto :goto_a2

    .line 749
    :cond_61
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_a2

    .line 750
    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_a2} :catch_a6

    .line 744
    :cond_a2
    :goto_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 757
    .end local v2  # "j":I
    :cond_a5
    goto :goto_aa

    .line 755
    :catch_a6
    move-exception v2

    .line 756
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 741
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    .line 760
    .end local v1  # "i":I
    :cond_ae
    return-object v0
.end method

.method public final getCasualties_Aggressors()I
    .registers 4

    .line 1064
    const/4 v0, 0x0

    .line 1066
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1067
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    add-int/2addr v0, v2

    .line 1068
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivilianDeaths()I

    move-result v2

    add-int/2addr v0, v2

    .line 1066
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1071
    .end local v1  # "i":I
    :cond_1d
    return v0
.end method

.method public final getCasualties_Defenders()I
    .registers 4

    .line 1053
    const/4 v0, 0x0

    .line 1055
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1056
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    add-int/2addr v0, v2

    .line 1057
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivilianDeaths()I

    move-result v2

    add-int/2addr v0, v2

    .line 1055
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1060
    .end local v1  # "i":I
    :cond_1d
    return v0
.end method

.method public final getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;
    .registers 3
    .param p1, "i"  # I

    .line 920
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    return-object v0
.end method

.method public final getDefenderID_ByCivID(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 925
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 926
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_16

    if-ne v1, p1, :cond_12

    .line 927
    return v0

    .line 925
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 932
    .end local v0  # "i":I
    :cond_15
    goto :goto_1a

    .line 930
    :catch_16
    move-exception v0

    .line 931
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 934
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1a
    const/4 v0, -0x1

    return v0
.end method

.method public final getDefendersSize()I
    .registers 2

    .line 952
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDefenders_ProvincesLost(ILjava/util/List;Ljava/util/List;)Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;
    .registers 11
    .param p1, "id"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;"
        }
    .end annotation

    .line 710
    .local p2, "addDefender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local p3, "addAggressor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 712
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;-><init>(I)V

    .line 714
    .local v0, "outPC":Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_ae

    .line 716
    :try_start_19
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 717
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_26
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_a5

    .line 718
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_61

    .line 719
    goto :goto_a2

    .line 722
    :cond_61
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_a2

    .line 723
    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_a2} :catch_a6

    .line 717
    :cond_a2
    :goto_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 730
    .end local v2  # "j":I
    :cond_a5
    goto :goto_aa

    .line 728
    :catch_a6
    move-exception v2

    .line 729
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 714
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    .line 733
    .end local v1  # "i":I
    :cond_ae
    return-object v0
.end method

.method public final getIsAggressor(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 199
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_17

    if-ne v1, p1, :cond_13

    .line 200
    const/4 v1, 0x1

    return v1

    .line 198
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    .end local v0  # "i":I
    :cond_16
    goto :goto_1b

    .line 203
    :catch_17
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 207
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public final getIsDefender(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 213
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_17

    if-ne v1, p1, :cond_13

    .line 214
    const/4 v1, 0x1

    return v1

    .line 212
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    .end local v0  # "i":I
    :cond_16
    goto :goto_1b

    .line 217
    :catch_17
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 221
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public final getIsInAggressors(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 903
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 904
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_17

    if-ne v1, p1, :cond_13

    .line 905
    const/4 v1, 0x1

    return v1

    .line 903
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 910
    .end local v0  # "i":I
    :cond_16
    goto :goto_1b

    .line 908
    :catch_17
    move-exception v0

    .line 909
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 912
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public final getIsInDefenders(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 939
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 940
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_17

    if-ne v1, p1, :cond_13

    .line 941
    const/4 v1, 0x1

    return v1

    .line 939
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 946
    .end local v0  # "i":I
    :cond_16
    goto :goto_1b

    .line 944
    :catch_17
    move-exception v0

    .line 945
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 948
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public final getParticipation_AggressorID(I)I
    .registers 6
    .param p1, "nID"  # I

    .line 970
    const/4 v0, 0x0

    .line 972
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 973
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    add-int/2addr v0, v2

    .line 972
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 976
    .end local v1  # "i":I
    :cond_14
    if-nez v0, :cond_19

    .line 977
    const/16 v1, 0x64

    return v1

    .line 980
    :cond_19
    const/high16 v1, 0x42c80000  # 100.0f

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    mul-float v2, v2, v1

    float-to-double v1, v2

    if-nez p1, :cond_30

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    goto :goto_34

    :cond_30
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    :goto_34
    double-to-int v1, v1

    return v1
.end method

.method public final getParticipation_DefenderID(I)I
    .registers 6
    .param p1, "nID"  # I

    .line 956
    const/4 v0, 0x0

    .line 958
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 959
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    add-int/2addr v0, v2

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 962
    .end local v1  # "i":I
    :cond_14
    if-nez v0, :cond_19

    .line 963
    const/16 v1, 0x64

    return v1

    .line 966
    :cond_19
    const/high16 v1, 0x42c80000  # 100.0f

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    mul-float v2, v2, v1

    float-to-double v1, v2

    if-nez p1, :cond_30

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    goto :goto_34

    :cond_30
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    :goto_34
    double-to-int v1, v1

    return v1
.end method

.method public final getProvinces_Aggressor_Own(I)I
    .registers 10
    .param p1, "i"  # I

    .line 764
    const/4 v0, 0x0

    .line 766
    .local v0, "out":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 768
    .local v1, "civAgg":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 770
    :try_start_16
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_31

    if-ne v3, v4, :cond_30

    .line 771
    add-int/lit8 v0, v0, 0x1

    .line 775
    :cond_30
    goto :goto_35

    .line 773
    :catch_31
    move-exception v3

    .line 774
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 768
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 778
    .end local v2  # "j":I
    :cond_38
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_39
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v3

    if-ge v2, v3, :cond_79

    .line 780
    :try_start_3f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    .line 782
    .local v3, "civDefK":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4e
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-ge v4, v5, :cond_71

    .line 783
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v6
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6a} :catch_72

    if-ne v5, v6, :cond_6e

    .line 784
    add-int/lit8 v0, v0, 0x1

    .line 782
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 789
    .end local v3  # "civDefK":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .end local v4  # "j":I
    :cond_71
    goto :goto_76

    .line 787
    :catch_72
    move-exception v3

    .line 788
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 778
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 792
    .end local v2  # "k":I
    :cond_79
    return v0
.end method

.method public final getProvinces_Aggressor_OwnTotal(I)I
    .registers 9
    .param p1, "i"  # I

    .line 796
    const/4 v0, 0x0

    .line 798
    .local v0, "out":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 800
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 802
    :try_start_16
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_31

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 806
    :cond_31
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_32
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 807
    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4e} :catch_57

    if-ne v4, v5, :cond_53

    .line 808
    add-int/lit8 v0, v0, 0x1

    .line 809
    goto :goto_56

    .line 806
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 815
    .end local v3  # "k":I
    :cond_56
    :goto_56
    goto :goto_5b

    .line 813
    :catch_57
    move-exception v3

    .line 814
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 800
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 818
    .end local v2  # "j":I
    :cond_5e
    return v0
.end method

.method public final getProvinces_Defender_Own(I)I
    .registers 10
    .param p1, "i"  # I

    .line 822
    const/4 v0, 0x0

    .line 824
    .local v0, "out":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 826
    .local v1, "civDef":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 828
    :try_start_16
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_31

    if-ne v3, v4, :cond_30

    .line 829
    add-int/lit8 v0, v0, 0x1

    .line 833
    :cond_30
    goto :goto_35

    .line 831
    :catch_31
    move-exception v3

    .line 832
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 826
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 838
    .end local v2  # "j":I
    :cond_38
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_39
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v3

    if-ge v2, v3, :cond_79

    .line 840
    :try_start_3f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    .line 842
    .local v3, "civAggK":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4e
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-ge v4, v5, :cond_71

    .line 843
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v6
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6a} :catch_72

    if-ne v5, v6, :cond_6e

    .line 844
    add-int/lit8 v0, v0, 0x1

    .line 842
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 849
    .end local v3  # "civAggK":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .end local v4  # "j":I
    :cond_71
    goto :goto_76

    .line 847
    :catch_72
    move-exception v3

    .line 848
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 838
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 852
    .end local v2  # "k":I
    :cond_79
    return v0
.end method

.method public final getProvinces_Defender_OwnTotal(I)I
    .registers 9
    .param p1, "i"  # I

    .line 856
    const/4 v0, 0x0

    .line 858
    .local v0, "out":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 860
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 862
    :try_start_16
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_31

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 866
    :cond_31
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_32
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 867
    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4e} :catch_57

    if-ne v4, v5, :cond_53

    .line 868
    add-int/lit8 v0, v0, 0x1

    .line 869
    goto :goto_56

    .line 866
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 875
    .end local v3  # "k":I
    :cond_56
    :goto_56
    goto :goto_5b

    .line 873
    :catch_57
    move-exception v3

    .line 874
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 860
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 878
    .end local v2  # "j":I
    :cond_5e
    return v0
.end method

.method public final getWarScore()I
    .registers 12

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "tempNumOfProvincesInWar_Aggrersors":I
    const/4 v1, 0x0

    .line 231
    .local v1, "tempNumOfProvincesInWar_Defenders":I
    const/4 v2, 0x0

    .line 232
    .local v2, "tempControledEnemyProvinces_ByAggrersors":I
    const/4 v3, 0x0

    .line 234
    .local v3, "tempControledEnemyProvinces_ByDefenders":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v5

    if-ge v4, v5, :cond_b7

    .line 236
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_c
    :try_start_c
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v6

    if-ge v5, v6, :cond_ae

    .line 237
    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v7

    if-ne v6, v7, :cond_60

    .line 238
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_aa

    .line 241
    :cond_60
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_61
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v7

    if-ge v6, v7, :cond_aa

    .line 242
    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v8

    if-ne v7, v8, :cond_a7

    .line 243
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v7
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_a5} :catch_af

    add-int/2addr v2, v7

    .line 244
    goto :goto_aa

    .line 241
    :cond_a7
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 236
    .end local v6  # "k":I
    :cond_aa
    :goto_aa
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c

    .line 251
    .end local v5  # "j":I
    :cond_ae
    goto :goto_b3

    .line 249
    :catch_af
    move-exception v5

    .line 250
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 234
    .end local v5  # "ex":Ljava/lang/Exception;
    :goto_b3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 254
    .end local v4  # "i":I
    :cond_b7
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_b8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v5

    if-ge v4, v5, :cond_16a

    .line 256
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_bf
    :try_start_bf
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v6

    if-ge v5, v6, :cond_161

    .line 257
    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v7

    if-ne v6, v7, :cond_113

    .line 258
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v6

    add-int/2addr v1, v6

    goto :goto_15d

    .line 261
    :cond_113
    const/4 v6, 0x0

    .restart local v6  # "k":I
    :goto_114
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v7

    if-ge v6, v7, :cond_15d

    .line 262
    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v8

    if-ne v7, v8, :cond_15a

    .line 263
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v7
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_158} :catch_162

    add-int/2addr v3, v7

    .line 264
    goto :goto_15d

    .line 261
    :cond_15a
    add-int/lit8 v6, v6, 0x1

    goto :goto_114

    .line 256
    .end local v6  # "k":I
    :cond_15d
    :goto_15d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_bf

    .line 271
    .end local v5  # "j":I
    :cond_161
    goto :goto_166

    .line 269
    :catch_162
    move-exception v5

    .line 270
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 254
    .end local v5  # "ex":Ljava/lang/Exception;
    :goto_166
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b8

    .line 274
    .end local v4  # "i":I
    :cond_16a
    const/4 v4, 0x0

    .line 275
    .local v4, "tempAggressorsPerc":I
    const/4 v5, 0x0

    .line 278
    .local v5, "tempDefendersPerc":I
    int-to-float v6, v2

    add-int v7, v1, v3

    add-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000  # 100.0f

    mul-float v6, v6, v7

    float-to-int v4, v6

    .line 281
    nop

    .line 284
    int-to-float v6, v3

    add-int v8, v0, v2

    add-int/2addr v8, v3

    int-to-float v8, v8

    div-float/2addr v6, v8

    mul-float v6, v6, v7

    float-to-int v5, v6

    .line 287
    nop

    .line 289
    neg-int v6, v4

    add-int/2addr v6, v5

    return v6
.end method

.method public final getWarScore_AggressorsInProvinceValue()I
    .registers 9

    .line 526
    const/4 v0, 0x0

    .line 529
    .local v0, "outScore":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_136

    if-ge v1, v2, :cond_9b

    .line 531
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_9
    :try_start_9
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_92

    .line 532
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_44

    .line 533
    goto :goto_8e

    .line 536
    :cond_44
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_45
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v4

    if-ge v3, v4, :cond_8e

    .line 537
    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5

    if-ne v4, v5, :cond_8b

    .line 538
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v4
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_89} :catch_93

    sub-int/2addr v0, v4

    .line 539
    goto :goto_8e

    .line 536
    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 531
    .end local v3  # "k":I
    :cond_8e
    :goto_8e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 546
    .end local v2  # "j":I
    :cond_92
    goto :goto_97

    .line 544
    :catch_93
    move-exception v2

    .line 545
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_94
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 529
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_97
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 549
    .end local v1  # "i":I
    :cond_9b
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_9c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a0} :catch_136

    if-ge v1, v2, :cond_135

    .line 551
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a3
    :try_start_a3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_12c

    .line 552
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_de

    .line 553
    goto :goto_128

    .line 556
    :cond_de
    const/4 v3, 0x0

    .restart local v3  # "k":I
    :goto_df
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v4

    if-ge v3, v4, :cond_128

    .line 557
    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5

    if-ne v4, v5, :cond_125

    .line 558
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v4
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_123} :catch_12d

    add-int/2addr v0, v4

    .line 559
    goto :goto_128

    .line 556
    :cond_125
    add-int/lit8 v3, v3, 0x1

    goto :goto_df

    .line 551
    .end local v3  # "k":I
    :cond_128
    :goto_128
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a3

    .line 566
    .end local v2  # "j":I
    :cond_12c
    goto :goto_131

    .line 564
    :catch_12d
    move-exception v2

    .line 565
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_12e
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_131} :catch_136

    .line 549
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_131
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9c

    .line 570
    .end local v1  # "i":I
    :cond_135
    goto :goto_13a

    .line 568
    :catch_136
    move-exception v1

    .line 569
    .local v1, "exr":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 572
    .end local v1  # "exr":Ljava/lang/Exception;
    :goto_13a
    return v0
.end method

.method public final getWarScore_AggressorsInProvinceValue(I)I
    .registers 9
    .param p1, "id"  # I

    .line 576
    const/4 v0, 0x0

    .line 579
    .local v0, "outScore":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    :try_start_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_11f

    if-ge v1, v2, :cond_90

    .line 581
    :try_start_16
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v3

    if-ne v2, v3, :cond_3d

    .line 582
    goto :goto_8c

    .line 585
    :cond_3d
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v3

    if-ge v2, v3, :cond_87

    .line 586
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_84

    .line 587
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v3
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_82} :catch_88

    add-int/2addr v0, v3

    .line 588
    goto :goto_87

    .line 585
    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 594
    .end local v2  # "k":I
    :cond_87
    :goto_87
    goto :goto_8c

    .line 592
    :catch_88
    move-exception v2

    .line 593
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_89
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 579
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 597
    .end local v1  # "j":I
    :cond_90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_91
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_95} :catch_11f

    if-ge v1, v2, :cond_11e

    .line 599
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_98
    :try_start_98
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_115

    .line 600
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_d3

    .line 601
    goto :goto_112

    .line 603
    :cond_d3
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_112

    .line 604
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v3
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_111} :catch_116

    sub-int/2addr v0, v3

    .line 599
    :cond_112
    :goto_112
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 609
    .end local v2  # "j":I
    :cond_115
    goto :goto_11a

    .line 607
    :catch_116
    move-exception v2

    .line 608
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_117
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_11f

    .line 597
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_11a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_91

    .line 613
    .end local v1  # "i":I
    :cond_11e
    goto :goto_123

    .line 611
    :catch_11f
    move-exception v1

    .line 612
    .local v1, "exr":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 615
    .end local v1  # "exr":Ljava/lang/Exception;
    :goto_123
    return v0
.end method

.method public final getWarScore_AggressorsInProvinceValue_OnlyPositive(ILjava/util/List;Ljava/util/List;)I
    .registers 16
    .param p1, "id"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 619
    .local p2, "addDefender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local p3, "addAggressor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 620
    .local v0, "outScore":I
    const/4 v1, 0x0

    .line 622
    .local v1, "iMinScore":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v2, "nPoints":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/War_Points;>;"
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_268

    if-ge v3, v4, :cond_26

    .line 627
    :try_start_e
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/War_Points;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_1f

    .line 630
    goto :goto_23

    .line 628
    :catch_1f
    move-exception v4

    .line 629
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_20
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 625
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 633
    .end local v3  # "k":I
    :cond_26
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_27
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_39} :catch_268

    if-ge v3, v4, :cond_cc

    .line 635
    :try_start_3b
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5

    if-ne v4, v5, :cond_62

    .line 636
    goto :goto_c8

    .line 639
    :cond_62
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_63
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v5

    if-ge v4, v5, :cond_c3

    .line 640
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 641
    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v6

    if-ne v5, v6, :cond_c0

    .line 642
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v5

    .line 643
    .local v5, "nValue":I
    if-le v5, v1, :cond_b6

    .line 644
    move v1, v5

    .line 647
    :cond_b6
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->addPoints(I)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_bf} :catch_c4

    .line 648
    goto :goto_c3

    .line 639
    .end local v5  # "nValue":I
    :cond_c0
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 655
    .end local v4  # "k":I
    :cond_c3
    :goto_c3
    goto :goto_c8

    .line 653
    :catch_c4
    move-exception v4

    .line 654
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_c5
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 633
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_c8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_27

    .line 658
    .end local v3  # "j":I
    :cond_cc
    const/4 v3, 0x0

    .line 660
    .local v3, "defenderNumOfTrueProvinces":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ce
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_e0} :catch_268

    if-ge v4, v5, :cond_112

    .line 662
    :try_start_e2
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_106} :catch_10b

    if-ne v5, v6, :cond_10a

    .line 663
    add-int/lit8 v3, v3, 0x1

    .line 667
    :cond_10a
    goto :goto_10f

    .line 665
    :catch_10b
    move-exception v5

    .line 666
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_10c
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 660
    .end local v5  # "ex":Ljava/lang/Exception;
    :goto_10f
    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    .line 671
    .end local v4  # "i":I
    :cond_112
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_116} :catch_268

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .restart local v4  # "i":I
    :goto_118
    if-ltz v4, :cond_267

    .line 673
    int-to-float v6, v3

    :try_start_11b
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40200000  # 2.5f

    mul-float v7, v7, v8

    cmpl-float v6, v6, v7

    if-gez v6, :cond_255

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_255

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_143} :catch_25f

    if-gt v6, v7, :cond_147

    goto/16 :goto_255

    .line 677
    :cond_147
    const/high16 v6, 0x3f800000  # 1.0f

    .line 680
    .local v6, "fModifer":F
    :try_start_149
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v7

    const/4 v8, 0x3

    const/high16 v9, 0x3f800000  # 1.0f

    if-ne v7, v8, :cond_183

    .line 681
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_SMALL_CIV:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_SMALL_CIV:F

    sub-float v8, v9, v8

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v11

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float/2addr v9, v10

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    .end local v6  # "fModifer":F
    .local v7, "fModifer":F
    goto/16 :goto_22a

    .line 684
    .end local v7  # "fModifer":F
    .restart local v6  # "fModifer":F
    :cond_183
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v7

    if-ge v3, v7, :cond_1e8

    .line 685
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_BIGGER_CIV:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_LOST_PROVINCES_WEIGHT:F

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v11

    div-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v8, v8, v10

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_EXTRA_IF_SMALLER_CIV_WON:F

    int-to-float v10, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    sub-float v10, v9, v10

    mul-float v8, v8, v10

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_CONQUERED_PROVINCES_WEIGHT:F

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v11

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float/2addr v9, v10

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    .end local v6  # "fModifer":F
    .restart local v7  # "fModifer":F
    goto :goto_22a

    .line 688
    .end local v7  # "fModifer":F
    .restart local v6  # "fModifer":F
    :cond_1e8
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_BIGGER_CIV:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_LOST_PROVINCES_WEIGHT:F

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v11

    div-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v8, v8, v10

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_CONQUERED_PROVINCES_WEIGHT:F

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v11

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10
    :try_end_226
    .catch Ljava/lang/IllegalArgumentException; {:try_start_149 .. :try_end_226} :catch_22b
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_226} :catch_25f

    sub-float/2addr v9, v10

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    .line 694
    .end local v6  # "fModifer":F
    .restart local v7  # "fModifer":F
    :goto_22a
    goto :goto_235

    .line 691
    .end local v7  # "fModifer":F
    .restart local v6  # "fModifer":F
    :catch_22b
    move-exception v7

    .line 692
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_22c
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_SMALL_CIV:F

    move v6, v8

    .line 693
    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v7, v6

    .line 696
    .end local v6  # "fModifer":F
    .local v7, "fModifer":F
    :goto_235
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    int-to-float v6, v6

    mul-float v6, v6, v7

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iMinScore:I

    int-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v6, v8

    add-int/2addr v0, v6

    goto :goto_25e

    .line 674
    .end local v7  # "fModifer":F
    :cond_255
    :goto_255
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_25d} :catch_25f

    add-int/2addr v0, v6

    .line 700
    :goto_25e
    goto :goto_263

    .line 698
    :catch_25f
    move-exception v6

    .line 699
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_260
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_263} :catch_268

    .line 671
    .end local v6  # "ex":Ljava/lang/Exception;
    :goto_263
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_118

    .line 704
    .end local v3  # "defenderNumOfTrueProvinces":I
    .end local v4  # "i":I
    :cond_267
    goto :goto_26c

    .line 702
    :catch_268
    move-exception v3

    .line 703
    .local v3, "exr":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 706
    .end local v3  # "exr":Ljava/lang/Exception;
    :goto_26c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PEACE_TREATY_VICTORY_POINTS_MODIFIER:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    return v3
.end method

.method public final getWarScore_DefendersInProvinceValue()I
    .registers 9

    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, "outScore":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_9b

    .line 362
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_9
    :try_start_9
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_92

    .line 363
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_44

    .line 364
    goto :goto_8e

    .line 367
    :cond_44
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_45
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v4

    if-ge v3, v4, :cond_8e

    .line 368
    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5

    if-ne v4, v5, :cond_8b

    .line 369
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v4
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_89} :catch_93

    add-int/2addr v0, v4

    .line 370
    goto :goto_8e

    .line 367
    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 362
    .end local v3  # "k":I
    :cond_8e
    :goto_8e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 377
    .end local v2  # "j":I
    :cond_92
    goto :goto_97

    .line 375
    :catch_93
    move-exception v2

    .line 376
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 360
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_97
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 380
    .end local v1  # "i":I
    :cond_9b
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_9c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_135

    .line 382
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a3
    :try_start_a3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_12c

    .line 383
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_de

    .line 384
    goto :goto_128

    .line 387
    :cond_de
    const/4 v3, 0x0

    .restart local v3  # "k":I
    :goto_df
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v4

    if-ge v3, v4, :cond_128

    .line 388
    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5

    if-ne v4, v5, :cond_125

    .line 389
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v4
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_123} :catch_12d

    sub-int/2addr v0, v4

    .line 390
    goto :goto_128

    .line 387
    :cond_125
    add-int/lit8 v3, v3, 0x1

    goto :goto_df

    .line 382
    .end local v3  # "k":I
    :cond_128
    :goto_128
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a3

    .line 397
    .end local v2  # "j":I
    :cond_12c
    goto :goto_131

    .line 395
    :catch_12d
    move-exception v2

    .line 396
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 380
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_131
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9c

    .line 400
    .end local v1  # "i":I
    :cond_135
    return v0
.end method

.method public final getWarScore_DefendersInProvinceValue(I)I
    .registers 9
    .param p1, "id"  # I

    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "outScore":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 408
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_9
    :try_start_9
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v2, v3, :cond_86

    .line 409
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_44

    .line 410
    goto :goto_83

    .line 412
    :cond_44
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_83

    .line 413
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v3
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_82} :catch_87

    sub-int/2addr v0, v3

    .line 408
    :cond_83
    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 418
    .end local v2  # "j":I
    :cond_86
    goto :goto_8b

    .line 416
    :catch_87
    move-exception v2

    .line 417
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 406
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 421
    .end local v1  # "i":I
    :cond_8f
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_90
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_11e

    .line 423
    :try_start_a4
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v3

    if-ne v2, v3, :cond_cb

    .line 424
    goto :goto_11a

    .line 427
    :cond_cb
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_cc
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v3

    if-ge v2, v3, :cond_115

    .line 428
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v3, v4, :cond_112

    .line 429
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v3
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_110} :catch_116

    add-int/2addr v0, v3

    .line 430
    goto :goto_115

    .line 427
    :cond_112
    add-int/lit8 v2, v2, 0x1

    goto :goto_cc

    .line 436
    .end local v2  # "k":I
    :cond_115
    :goto_115
    goto :goto_11a

    .line 434
    :catch_116
    move-exception v2

    .line 435
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 421
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_11a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_90

    .line 439
    .end local v1  # "j":I
    :cond_11e
    return v0
.end method

.method public final getWarScore_DefendersInProvinceValue_OnlyPositive(ILjava/util/List;Ljava/util/List;)I
    .registers 16
    .param p1, "id"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 443
    .local p2, "addDefender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local p3, "addAggressor":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 444
    .local v0, "outScore":I
    const/4 v1, 0x0

    .line 446
    .local v1, "iMinScore":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v2, "nPoints":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/War_Points;>;"
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 450
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/War_Points;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 453
    .end local v3  # "k":I
    :cond_21
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_22
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v4
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_25e

    if-ge v3, v4, :cond_c7

    .line 455
    :try_start_36
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5

    if-ne v4, v5, :cond_5d

    .line 456
    goto :goto_c3

    .line 459
    :cond_5d
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_5e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v5

    if-ge v4, v5, :cond_be

    .line 460
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 461
    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v6

    if-ne v5, v6, :cond_bb

    .line 462
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v5

    .line 463
    .local v5, "nValue":I
    if-le v5, v1, :cond_b1

    .line 464
    move v1, v5

    .line 467
    :cond_b1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->addPoints(I)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_ba} :catch_bf

    .line 468
    goto :goto_be

    .line 459
    .end local v5  # "nValue":I
    :cond_bb
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 475
    .end local v4  # "k":I
    :cond_be
    :goto_be
    goto :goto_c3

    .line 473
    :catch_bf
    move-exception v4

    .line 474
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_c0
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 453
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_c3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_22

    .line 478
    .end local v3  # "j":I
    :cond_c7
    const/4 v3, 0x0

    .line 480
    .local v3, "defenderNumOfTrueProvinces":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c9
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-ge v4, v5, :cond_108

    .line 481
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    if-ne v5, v6, :cond_105

    .line 482
    add-int/lit8 v3, v3, 0x1

    .line 480
    :cond_105
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    .line 487
    .end local v4  # "i":I
    :cond_108
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_10c} :catch_25e

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .restart local v4  # "i":I
    :goto_10e
    if-ltz v4, :cond_25d

    .line 489
    int-to-float v6, v3

    :try_start_111
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40200000  # 2.5f

    mul-float v7, v7, v8

    cmpl-float v6, v6, v7

    if-gez v6, :cond_24b

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_24b

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_139} :catch_255

    if-gt v6, v7, :cond_13d

    goto/16 :goto_24b

    .line 493
    :cond_13d
    const/high16 v6, 0x3f800000  # 1.0f

    .line 496
    .local v6, "fModifer":F
    :try_start_13f
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v7

    const/4 v8, 0x3

    const/high16 v9, 0x3f800000  # 1.0f

    if-ne v7, v8, :cond_179

    .line 497
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_SMALL_CIV:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_SMALL_CIV:F

    sub-float v8, v9, v8

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v11

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float/2addr v9, v10

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    .end local v6  # "fModifer":F
    .local v7, "fModifer":F
    goto/16 :goto_220

    .line 500
    .end local v7  # "fModifer":F
    .restart local v6  # "fModifer":F
    :cond_179
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v7

    if-ge v3, v7, :cond_1de

    .line 501
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_BIGGER_CIV:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_LOST_PROVINCES_WEIGHT:F

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v11

    div-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v8, v8, v10

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_EXTRA_IF_SMALLER_CIV_WON:F

    int-to-float v10, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    sub-float v10, v9, v10

    mul-float v8, v8, v10

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_CONQUERED_PROVINCES_WEIGHT:F

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v11

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float/2addr v9, v10

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    .end local v6  # "fModifer":F
    .restart local v7  # "fModifer":F
    goto :goto_220

    .line 504
    .end local v7  # "fModifer":F
    .restart local v6  # "fModifer":F
    :cond_1de
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_BIGGER_CIV:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_LOST_PROVINCES_WEIGHT:F

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v11

    div-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v8, v8, v10

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_CONQUERED_PROVINCES_WEIGHT:F

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v11

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10
    :try_end_21c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13f .. :try_end_21c} :catch_221
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_21c} :catch_255

    sub-float/2addr v9, v10

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    .line 510
    .end local v6  # "fModifer":F
    .restart local v7  # "fModifer":F
    :goto_220
    goto :goto_22b

    .line 507
    .end local v7  # "fModifer":F
    .restart local v6  # "fModifer":F
    :catch_221
    move-exception v7

    .line 508
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_222
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->WAR_SCORE_MODIFIER_BASE_SMALL_CIV:F

    move v6, v8

    .line 509
    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v7, v6

    .line 512
    .end local v6  # "fModifer":F
    .local v7, "fModifer":F
    :goto_22b
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    int-to-float v6, v6

    mul-float v6, v6, v7

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iMinScore:I

    int-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v6, v8

    add-int/2addr v0, v6

    goto :goto_254

    .line 490
    .end local v7  # "fModifer":F
    :cond_24b
    :goto_24b
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_253} :catch_255

    add-int/2addr v0, v6

    .line 516
    :goto_254
    goto :goto_259

    .line 514
    :catch_255
    move-exception v6

    .line 515
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_256
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_259} :catch_25e

    .line 487
    .end local v6  # "ex":Ljava/lang/Exception;
    :goto_259
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_10e

    .line 520
    .end local v3  # "defenderNumOfTrueProvinces":I
    .end local v4  # "i":I
    :cond_25d
    goto :goto_262

    .line 518
    :catch_25e
    move-exception v3

    .line 519
    .local v3, "exr":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 522
    .end local v3  # "exr":Ljava/lang/Exception;
    :goto_262
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PEACE_TREATY_VICTORY_POINTS_MODIFIER:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    return v3
.end method

.method public final getWarScore_PeaceTreaty()I
    .registers 12

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "tempNumOfProvincesInWar_Aggrersors":I
    const/4 v1, 0x0

    .line 296
    .local v1, "tempNumOfProvincesInWar_Defenders":I
    const/4 v2, 0x0

    .line 297
    .local v2, "tempControledEnemyProvinces_ByAggrersors":I
    const/4 v3, 0x0

    .line 299
    .local v3, "tempControledEnemyProvinces_ByDefenders":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataAggressors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_ed

    .line 301
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_12
    :try_start_12
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataAggressors:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v6

    if-ge v5, v6, :cond_e4

    .line 302
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataAggressors:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataAggressors:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v7

    if-ne v6, v7, :cond_7e

    .line 303
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataAggressors:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_e0

    .line 306
    :cond_7e
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_7f
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataDefenders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e0

    .line 307
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataDefenders:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataAggressors:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v8

    if-ne v7, v8, :cond_dd

    .line 308
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataAggressors:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v7
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_db} :catch_e5

    add-int/2addr v2, v7

    .line 309
    goto :goto_e0

    .line 306
    :cond_dd
    add-int/lit8 v6, v6, 0x1

    goto :goto_7f

    .line 301
    .end local v6  # "k":I
    :cond_e0
    :goto_e0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    .line 316
    .end local v5  # "j":I
    :cond_e4
    goto :goto_e9

    .line 314
    :catch_e5
    move-exception v5

    .line 315
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 299
    .end local v5  # "ex":Ljava/lang/Exception;
    :goto_e9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 319
    .end local v4  # "i":I
    :cond_ed
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_ee
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataDefenders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1d6

    .line 321
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_fb
    :try_start_fb
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataDefenders:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v6

    if-ge v5, v6, :cond_1cd

    .line 322
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataDefenders:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataDefenders:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v7

    if-ne v6, v7, :cond_167

    .line 323
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataDefenders:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v6

    add-int/2addr v1, v6

    goto :goto_1c9

    .line 326
    :cond_167
    const/4 v6, 0x0

    .restart local v6  # "k":I
    :goto_168
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataAggressors:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1c9

    .line 327
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataAggressors:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataDefenders:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v8

    if-ne v7, v8, :cond_1c6

    .line 328
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->civsDataDefenders:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceValue(I)I

    move-result v7
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_1c4} :catch_1ce

    add-int/2addr v3, v7

    .line 329
    goto :goto_1c9

    .line 326
    :cond_1c6
    add-int/lit8 v6, v6, 0x1

    goto :goto_168

    .line 321
    .end local v6  # "k":I
    :cond_1c9
    :goto_1c9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_fb

    .line 336
    .end local v5  # "j":I
    :cond_1cd
    goto :goto_1d2

    .line 334
    :catch_1ce
    move-exception v5

    .line 335
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 319
    .end local v5  # "ex":Ljava/lang/Exception;
    :goto_1d2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_ee

    .line 339
    .end local v4  # "i":I
    :cond_1d6
    const/4 v4, 0x0

    .line 340
    .local v4, "tempAggressorsPerc":I
    const/4 v5, 0x0

    .line 343
    .local v5, "tempDefendersPerc":I
    int-to-float v6, v2

    add-int v7, v1, v3

    add-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000  # 100.0f

    mul-float v6, v6, v7

    float-to-int v4, v6

    .line 346
    nop

    .line 349
    int-to-float v6, v3

    add-int v8, v0, v2

    add-int/2addr v8, v3

    int-to-float v8, v8

    div-float/2addr v6, v8

    mul-float v6, v6, v7

    float-to-int v5, v6

    .line 352
    nop

    .line 354
    neg-int v6, v4

    add-int/2addr v6, v5

    return v6
.end method

.method public final getWarTurnID()I
    .registers 2

    .line 1075
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iWarTurnID:I

    return v0
.end method

.method public final removeAggressor(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 85
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_24

    .line 86
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_28

    .line 88
    return-void

    .line 84
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    .end local v0  # "i":I
    :cond_27
    goto :goto_2c

    .line 91
    :catch_28
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 94
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final removeDefender(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 133
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_24

    .line 134
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_28

    .line 136
    return-void

    .line 132
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0  # "i":I
    :cond_27
    goto :goto_2c

    .line 139
    :catch_28
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 142
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final setWarTurnID(I)V
    .registers 2
    .param p1, "iWarTurnID"  # I

    .line 1079
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iWarTurnID:I

    .line 1080
    return-void
.end method

.method public final updateAfterUnion(II)V
    .registers 7
    .param p1, "nCivA"  # I
    .param p2, "nCivB"  # I

    .line 148
    :try_start_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 149
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID_ByCivID(I)I

    move-result v0

    .line 150
    .local v0, "nID":I
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID_ByCivID(I)I

    move-result v1

    .line 152
    .local v1, "nID2":I
    if-ltz v0, :cond_48

    if-ltz v1, :cond_48

    .line 153
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivilianDeaths()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCivilianDeaths(I)V

    .line 154
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCasualties(I)V

    .line 155
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getEconomicLosses()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addEconomicLosses(I)V

    .line 157
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->removeAggressor(I)V

    .line 159
    .end local v0  # "nID":I
    .end local v1  # "nID2":I
    :cond_48
    goto/16 :goto_c6

    .line 160
    :cond_4a
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 161
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID_ByCivID(I)I

    move-result v0

    .line 162
    .restart local v0  # "nID":I
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID_ByCivID(I)I

    move-result v1

    .line 164
    .restart local v1  # "nID2":I
    if-ltz v0, :cond_92

    if-ltz v1, :cond_92

    .line 165
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivilianDeaths()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCivilianDeaths(I)V

    .line 166
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCasualties(I)V

    .line 167
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getEconomicLosses()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addEconomicLosses(I)V

    .line 169
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->removeDefender(I)V

    .line 171
    .end local v0  # "nID":I
    .end local v1  # "nID2":I
    :cond_92
    goto :goto_c6

    .line 172
    :cond_93
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 173
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID_ByCivID(I)I

    move-result v0

    .line 175
    .restart local v0  # "nID":I
    if-ltz v0, :cond_ac

    .line 176
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->setCivID(I)V

    .line 178
    .end local v0  # "nID":I
    :cond_ac
    goto :goto_c6

    .line 179
    :cond_ad
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 180
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID_ByCivID(I)I

    move-result v0

    .line 182
    .restart local v0  # "nID":I
    if-ltz v0, :cond_c6

    .line 183
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->setCivID(I)V

    .line 187
    .end local v0  # "nID":I
    :cond_c6
    :goto_c6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 188
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d7} :catch_d8

    .line 191
    goto :goto_dc

    .line 189
    :catch_d8
    move-exception v0

    .line 190
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 192
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_dc
    return-void
.end method
