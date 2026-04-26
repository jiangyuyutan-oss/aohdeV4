.class public Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.source "Event_Conditions_AtWar.java"


# static fields
.field private static final serialVersionUID:J = 0x7ec03f1d8409d1beL


# instance fields
.field public iCivID:I

.field public iCivID2:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    .line 14
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    return-void
.end method


# virtual methods
.method public final editViewID()V
    .registers 3

    .line 80
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ATWAR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 81
    return-void
.end method

.method public getCivID()I
    .registers 2

    .line 20
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    return v0
.end method

.method public getCivID2()I
    .registers 2

    .line 30
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    return v0
.end method

.method public getConditionText()Ljava/lang/String;
    .registers 5

    .line 72
    const-string v0, "AtWar"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->getCivID2()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_45
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_45} :catch_46

    return-object v0

    .line 73
    :catch_46
    move-exception v1

    .line 74
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outCondition()Z
    .registers 5

    .line 64
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->getCivID2()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->RELATION_AT_WAR:I
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_14} :catch_18

    if-ne v1, v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0

    .line 65
    :catch_18
    move-exception v1

    .line 66
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    return v0
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 25
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    .line 26
    return-void
.end method

.method public setCivID2(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 35
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    .line 36
    return-void
.end method

.method public updateCivIDAfterRemove(I)Z
    .registers 5
    .param p1, "nRemovedCivID"  # I

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "out":Z
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    const/4 v2, -0x1

    if-ne v1, p1, :cond_a

    .line 43
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    .line 44
    const/4 v0, 0x1

    goto :goto_10

    .line 46
    :cond_a
    if-ge p1, v1, :cond_10

    .line 47
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    .line 50
    :cond_10
    :goto_10
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    if-ne v1, p1, :cond_18

    .line 51
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    .line 52
    const/4 v0, 0x1

    goto :goto_1e

    .line 54
    :cond_18
    if-ge p1, v1, :cond_1e

    .line 55
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    .line 58
    :cond_1e
    :goto_1e
    return v0
.end method
