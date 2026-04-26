.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;
.super Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;
.source "CivArmyMission_ExpandNeutral_Check.java"


# instance fields
.field public iTurnsRequiredToMoveToFrontLine:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 7
    .param p1, "nCivID"  # I
    .param p2, "fromProvinceID"  # I
    .param p3, "toProvinceID"  # I
    .param p4, "iArmy"  # I

    .line 18
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iTurnsRequiredToMoveToFrontLine:I

    .line 19
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iArmy:I

    .line 20
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    .line 21
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->toProvinceID:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->MISSION_ID:I

    .line 24
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    invoke-direct {v0, p1, v1, p3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;-><init>(III)V

    .line 25
    .local v0, "tryRegroupArmy":Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->getRouteSize()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iTurnsRequiredToMoveToFrontLine:I

    .line 27
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_Type;->REGRUOP_AFTER_RECRUIT:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_Type;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_Type;

    .line 29
    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->TURN_ID:I

    .line 30
    const/16 v1, 0xf

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iObsolete:I

    .line 31
    return-void
.end method


# virtual methods
.method public action(I)Z
    .registers 12
    .param p1, "nCivID"  # I

    .line 42
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->toProvinceID:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5a

    .line 43
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->toProvinceID:I

    invoke-direct {v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;-><init>(III)V

    .line 45
    .local v0, "tryRegroupArmy":Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;->getRouteSize()I

    move-result v1

    if-lez v1, :cond_5a

    .line 46
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;->getRouteSize()I

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 47
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->toProvinceID:I

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iArmy:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveArmyAction(IIIIZZ)Z

    move-result v1

    return v1

    .line 50
    :cond_2c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;->getRoute(I)I

    move-result v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iArmy:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveArmyAction(IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 51
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;->getRoute(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;->setFromProvinceID(I)V

    .line 52
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;->removeRoute(I)V

    .line 53
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->iArmy:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;->setNumOfUnits(I)V

    .line 55
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addRegroupArmy(Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;)V

    .line 57
    return v2

    .line 60
    :cond_59
    return v1

    .line 66
    .end local v0  # "tryRegroupArmy":Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ExpandCheck;
    :cond_5a
    return v2
.end method

.method public canMakeAction(II)Z
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "iTurnsLeft"  # I

    .line 37
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/CivArmy_Mission/CivArmyMission_ExpandNeutral_Check;->TURN_ID:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
