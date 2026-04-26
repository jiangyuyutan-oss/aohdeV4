.class public Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Festivals/Festival;
.super Ljava/lang/Object;
.source "Festival.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addFestival(II)Z
    .registers 10
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I

    .line 25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-eq p0, v0, :cond_22

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    if-ne p0, v0, :cond_bf

    .line 26
    :cond_22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->COST_FESTIVAL_MOVEMENT_POINTS:I

    if-lt v0, v1, :cond_bf

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Festivals/Festival;->festivalCost(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_bf

    .line 27
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_NUM_OF_TURNS:I

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivTask;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addFestival(Lage/of/civilizations2/jakowski/lukasz/CivTask;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 28
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->COST_FESTIVAL_MOVEMENT_POINTS:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovementPoints(I)V

    .line 29
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Festivals/Festival;->festivalCost(I)I

    move-result v0

    .line 30
    .local v0, "festivalCost":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 34
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fE:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fE:I

    .line 35
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-wide v4, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fECG:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fECG:J

    .line 37
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 38
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCapitalOrProvince(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HAPPINESS_MAX:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;)V

    .line 41
    :cond_be
    return v3

    .line 46
    .end local v0  # "festivalCost":I
    :cond_bf
    const/4 v0, 0x0

    return v0
.end method

.method public static final addFestivalFree(II)Z
    .registers 5
    .param p0, "nCivID"  # I
    .param p1, "nProvinceID"  # I

    .line 50
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-eq p0, v0, :cond_22

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    if-ne p0, v0, :cond_5d

    .line 51
    :cond_22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/CivTask;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_NUM_OF_TURNS:I

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivTask;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addFestival(Lage/of/civilizations2/jakowski/lukasz/CivTask;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 54
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fE:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->fE:I

    .line 56
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCapitalOrProvince(I)I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HAPPINESS_MAX:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;)V

    .line 60
    :cond_5c
    return v2

    .line 64
    :cond_5d
    const/4 v0, 0x0

    return v0
.end method

.method public static final festivalCost(I)I
    .registers 7
    .param p0, "nProvinceID"  # I

    .line 11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_COST_GOLD_BASE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    .line 12
    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeTaxation(I)F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeProduction(I)F

    move-result v2

    add-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_COST_GOLD_BASE_MODIFIER:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_COST_GOLD_TECH_LEVEL_MODIFIER:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 13
    invoke-virtual {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->FESTIVAL_COST_GOLD_ACTIVE_FESTIVAL_MODIFIER:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFestivalsSize()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 11
    return v0
.end method

.method public static final festivalHappinessPerTurn(I)F
    .registers 5
    .param p0, "nProvinceID"  # I

    .line 17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->HAPPINESS_GAIN_PER_TURN_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->HAPPINESS_GAIN_PER_TURN_BASED_ON_PROVINCE_HAPPINESS_MODIFIER:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, v2

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method public static final festivalHappinessPerTurn_NeighboringProvinces()F
    .registers 1

    .line 21
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvFestival:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Festival;->HAPPINESS_GAIN_NEIGHBORING_PROVINCES:F

    return v0
.end method
