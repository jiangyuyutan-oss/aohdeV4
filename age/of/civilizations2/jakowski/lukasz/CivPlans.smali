.class public Lage/of/civilizations2/jakowski/lukasz/CivPlans;
.super Ljava/lang/Object;
.source "CivPlans.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public armiesMissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;",
            ">;"
        }
    .end annotation
.end field

.field public iWarPrepsSize:I

.field public warPreps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPrepsSize:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addNewArmyMission(ILage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;)Z
    .registers 6
    .param p1, "nProvinceID"  # I
    .param p2, "nMission"  # Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    .line 126
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1b

    .line 127
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->iProvinceID:I

    if-ne v2, p1, :cond_18

    .line 128
    const/4 v1, 0x0

    return v1

    .line 126
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 132
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return v1
.end method

.method public final addNewWarPreps(IIII)V
    .registers 8
    .param p1, "iLeaderCivID"  # I
    .param p2, "iCivID"  # I
    .param p3, "onCivID"  # I
    .param p4, "numOfTurns"  # I

    .line 34
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v0

    if-nez v0, :cond_75

    .line 35
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->isPreparingForTheWar(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 36
    invoke-virtual {p0, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->updatePrepsTime(II)V

    .line 37
    return-void

    .line 42
    :cond_12
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    if-eq v0, p2, :cond_30

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWar:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_War;->SPY_MESSAGE_ABOUT_AI_PREPARING_FOR_WAR_ONLY_FROM_LORDS:Z

    if-nez v0, :cond_50

    :cond_30
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GET_SPY_MESSAGE_ABOUT_AI_PREPARING_FOR_WAR_CHANCE_1000:I

    if-ge v0, v1, :cond_50

    .line 43
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Messages/War/Spy/Message_SpyPreparingForWar;

    invoke-direct {v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Messages/War/Spy/Message_SpyPreparingForWar;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 46
    :cond_50
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p3, v2, p4}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;-><init>(IIZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPrepsSize:I

    .line 50
    :try_start_63
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iput-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z

    .line 51
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iput-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->uFOL:Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_73} :catch_74

    .line 54
    goto :goto_75

    .line 52
    :catch_74
    move-exception v0

    .line 56
    :cond_75
    :goto_75
    return-void
.end method

.method public final checkArmyMissions(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 139
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v1

    if-gtz v1, :cond_27

    .line 140
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 138
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    .end local v0  # "i":I
    :cond_2a
    return-void
.end method

.method public final checkWarPreparations(I)Z
    .registers 5
    .param p1, "nCivID"  # I

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 64
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 65
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPrepsSize:I

    move v0, v2

    .line 63
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v0  # "i":I
    :cond_4c
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getPrepsTime(I)I
    .registers 4
    .param p1, "onCivID"  # I

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 105
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    if-ne v1, p1, :cond_20

    .line 106
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iNumOfTurnsLeft:I

    return v1

    .line 104
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0  # "i":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public final getPreps_LeaderCivID(I)I
    .registers 4
    .param p1, "onCivID"  # I

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 115
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    if-ne v1, p1, :cond_20

    .line 116
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iLeaderCivID:I

    return v1

    .line 114
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    .end local v0  # "i":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public final haveMission(I)Z
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 157
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->iProvinceID:I

    if-ne v1, p1, :cond_17

    .line 158
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final haveMission_Army(I)I
    .registers 5
    .param p1, "nProvinceID"  # I

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 169
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->iProvinceID:I

    if-ne v2, p1, :cond_21

    .line 170
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->iArmy:I

    add-int/2addr v0, v2

    .line 168
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 174
    .end local v1  # "i":I
    :cond_24
    return v0
.end method

.method public final haveMission_Army_ToProvinceID(I)I
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 179
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->toProvinceID:I

    if-ne v1, p1, :cond_20

    .line 180
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->iArmy:I

    return v1

    .line 178
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    .end local v0  # "i":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public final isPreparingForTheWar()Z
    .registers 2

    .line 59
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isPreparingForTheWar(I)Z
    .registers 4
    .param p1, "onCivID"  # I

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 75
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    if-ne v1, p1, :cond_17

    .line 76
    const/4 v1, 0x1

    return v1

    .line 74
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final isPreparingForTheWar(II)Z
    .registers 5
    .param p1, "iWarLeaderID"  # I
    .param p2, "onCivID"  # I

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 85
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    if-ne v1, p2, :cond_23

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iLeaderCivID:I

    if-ne v1, p1, :cond_23

    .line 86
    const/4 v1, 0x1

    return v1

    .line 84
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0  # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final removeMission(I)V
    .registers 5
    .param p1, "nProvinceID"  # I

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 147
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->iProvinceID:I

    if-ne v1, p1, :cond_1d

    .line 148
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    return-void

    .line 146
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v0  # "i":I
    :cond_20
    return-void
.end method

.method public final updateObsolateMissions()V
    .registers 5

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 189
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->iObsolete:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;->iObsolete:I

    if-gtz v2, :cond_21

    .line 190
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->armiesMissions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 188
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    .end local v0  # "i":I
    :cond_24
    return-void
.end method

.method public final updatePrepsTime(II)V
    .registers 5
    .param p1, "onCivID"  # I
    .param p2, "numOfTurns"  # I

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 96
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    if-ne v1, p1, :cond_20

    .line 97
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iput p2, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iNumOfTurnsLeft:I

    .line 98
    return-void

    .line 95
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    .end local v0  # "i":I
    :cond_23
    return-void
.end method
