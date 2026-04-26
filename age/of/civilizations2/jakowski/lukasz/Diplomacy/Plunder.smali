.class public Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;
.super Ljava/lang/Object;
.source "Plunder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final plunder(III)V
    .registers 23
    .param p0, "iCivID"  # I
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 94
    move/from16 v8, p0

    move/from16 v9, p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v0

    if-ne v0, v8, :cond_11

    .line 95
    return-void

    .line 98
    :cond_11
    invoke-static/range {p0 .. p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunderTreasuryIncome(III)I

    move-result v10

    .line 99
    .local v10, "nTreasury":I
    invoke-static/range {p0 .. p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunder_Happiness(III)F

    move-result v11

    .line 100
    .local v11, "nHappiness":F
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_ECONOMY_LOSS_BASE_MIN:I

    int-to-double v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {p0 .. p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunder_LossesEconomy_Perc(III)F

    move-result v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int v12, v0

    .line 101
    .local v12, "nEconomy":I
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v0

    invoke-static/range {p0 .. p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunder_LossesDevelopment_Perc(III)F

    move-result v1

    mul-float v13, v0, v1

    .line 102
    .local v13, "nDevelopment":F
    invoke-static/range {p0 .. p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunder_RevolutionaryRisk(III)F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLUNDER_MODIFIER:F

    mul-float v14, v0, v1

    .line 103
    .local v14, "fRevolutionary":F
    invoke-static/range {p0 .. p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunder_Population(III)I

    move-result v15

    .line 105
    .local v15, "nPopulation":I
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v16

    .line 106
    .local v16, "tempPopulationBefore":I
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v17

    .line 108
    .local v17, "tempEconomyBefore":I
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v1

    int-to-long v3, v10

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 110
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEco(I)V

    .line 111
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v1

    sub-float/2addr v1, v13

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDevLvl(F)V

    .line 113
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v1

    sub-float/2addr v1, v11

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    .line 114
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_RevolutionaryRiskModifier(I)F

    move-result v2

    mul-float v2, v2, v14

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setRevRisk(F)V

    .line 116
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0, v9, v15}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updatePopulationLosses(II)V

    .line 118
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWarID(II)I

    move-result v18

    .line 120
    .local v18, "tempWarID":I
    if-ltz v18, :cond_12b

    .line 121
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 122
    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 123
    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    sub-int v1, v16, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 124
    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    sub-int v1, v17, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 121
    move/from16 v1, v18

    move/from16 v2, p0

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->updateWarStatistics(IIIII)V

    .line 127
    :cond_12b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 128
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/Message_Plunder;

    move-object v0, v6

    move/from16 v1, p0

    move/from16 v2, p1

    move v3, v10

    move v4, v12

    move v5, v13

    move-object v8, v6

    move v6, v11

    move/from16 v19, v10

    move-object v10, v7

    .end local v10  # "nTreasury":I
    .local v19, "nTreasury":I
    move v7, v15

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/Message_Plunder;-><init>(IIIIFFI)V

    invoke-virtual {v10, v8}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    goto :goto_15c

    .line 127
    .end local v19  # "nTreasury":I
    .restart local v10  # "nTreasury":I
    :cond_15a
    move/from16 v19, v10

    .line 131
    .end local v10  # "nTreasury":I
    .restart local v19  # "nTreasury":I
    :goto_15c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_199

    .line 132
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/Message_Plunder_Plundred;

    move-object v0, v8

    move/from16 v1, p0

    move/from16 v2, p1

    move v3, v12

    move v4, v13

    move v5, v11

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/Message_Plunder_Plundred;-><init>(IIIFFI)V

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 134
    :cond_199
    return-void
.end method

.method public static final plunderEfficiency(III)F
    .registers 5
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 11
    int-to-float v0, p2

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunderEfficiency_RequiredMAX(II)F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static final plunderEfficiency_RequiredMAX(II)F
    .registers 7
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I

    .line 15
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_MIN_ARMY_POP_RATIO:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_MIN_ARMY_POP_RATIO_TECH_MODIFIER:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public static final plunderProvince(III)V
    .registers 9
    .param p0, "iCivID"  # I
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 47
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_PLUNDER:I

    if-ge v0, v1, :cond_1f

    .line 48
    return-void

    .line 51
    :cond_1f
    if-ltz p1, :cond_115

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_115

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v0

    if-eqz v0, :cond_3b

    goto/16 :goto_115

    .line 55
    :cond_3b
    const/4 v0, 0x0

    .line 57
    .local v0, "currPlunderArmy":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunderSize()I

    move-result v2

    if-ge v1, v2, :cond_b2

    .line 58
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunder(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getFromProvinceID()I

    move-result v2

    if-ne v2, p1, :cond_af

    .line 59
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunder(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getNumOfUnits()I

    move-result v0

    .line 62
    if-nez p2, :cond_b2

    .line 63
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removePlunder(I)V

    .line 65
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V

    .line 67
    if-lez v0, :cond_ae

    .line 68
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_PLUNDER:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovementPoints(I)V

    .line 70
    :cond_ae
    return-void

    .line 57
    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 77
    .end local v1  # "i":I
    :cond_b2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v1

    add-int/2addr v1, v0

    if-le p2, v1, :cond_cb

    .line 78
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v1

    add-int p2, v1, v0

    .line 81
    :cond_cb
    if-gtz p2, :cond_ce

    .line 82
    return-void

    .line 85
    :cond_ce
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->newPlunder(II)V

    .line 87
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2

    add-int/2addr v2, v0

    sub-int/2addr v2, p2

    invoke-virtual {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V

    .line 88
    if-nez v0, :cond_114

    .line 89
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_PLUNDER:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovementPoints(I)V

    .line 91
    :cond_114
    return-void

    .line 52
    .end local v0  # "currPlunderArmy":I
    :cond_115
    :goto_115
    return-void
.end method

.method public static final plunderProvinceIncome(III)I
    .registers 5
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeTaxation(I)F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeProduction(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final plunderTreasuryIncome(III)I
    .registers 6
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 23
    invoke-static {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunderProvinceIncome(III)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_TAX_INCOME_MODIFIER:F

    mul-float v0, v0, v1

    invoke-static {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunderEfficiency(III)F

    move-result v1

    mul-float v0, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_INCOME_HIGH_REV_RISK_MODIFIER:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v2

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLUNDER_MODIFIER:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final plunder_Happiness(III)F
    .registers 6
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 35
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_HAPPINESS_LOSS_BASE_RATIO:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_HAPPINESS_LOSS_RANDOM_RATIO_10000:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x461c4000  # 10000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunderEfficiency(III)F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static final plunder_LossesDevelopment_Perc(III)F
    .registers 6
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 31
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_DEV_LOSS_BASE_RATIO:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_DEV_LOSS_RANDOM_RATIO_10000:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x461c4000  # 10000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunderEfficiency(III)F

    move-result v1

    mul-float v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLUNDER_MODIFIER:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static final plunder_LossesEconomy_Perc(III)F
    .registers 6
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 27
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_ECONOMY_LOSS_BASE_RATIO:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_ECONOMY_LOSS_RANDOM_RATIO_10000:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x461c4000  # 10000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunderEfficiency(III)F

    move-result v1

    mul-float v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLUNDER_MODIFIER:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static final plunder_Population(III)I
    .registers 7
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 43
    int-to-float v0, p2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_POP_LOSS_BASE_RATIO_ARMY:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_POP_LOSS_RANDOM_RATIO_10000_ARMY:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x461c4000  # 10000.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_POP_LOSS_BASE_RATIO_POPULATION:F

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLUNDER_MODIFIER:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final plunder_RevolutionaryRisk(III)F
    .registers 6
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I

    .line 39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_REV_RISK_BASE_RATIO:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_REV_RISK_RANDOM_RATIO_10000:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x461c4000  # 10000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Plunder;->plunderEfficiency(III)F

    move-result v1

    mul-float v0, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPlunder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Plunder;->PLUNDER_REV_RISK_MIN:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method
