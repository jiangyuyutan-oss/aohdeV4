.class public Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;
.source "Event_Outcome_DecreaseRelation.java"


# static fields
.field private static final serialVersionUID:J = 0x730bfb83130e4a90L


# instance fields
.field public iCivID:I

.field public iCivID2:I

.field public iValue:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID:I

    .line 14
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID2:I

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iValue:I

    return-void
.end method


# virtual methods
.method public canMakeAction()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public final editViewID()V
    .registers 3

    .line 100
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_OUT_DECRELATION:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 101
    return-void
.end method

.method public getCivID()I
    .registers 2

    .line 22
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID:I

    return v0
.end method

.method public getCivID2()I
    .registers 2

    .line 32
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID2:I

    return v0
.end method

.method public getConditionText()Ljava/lang/String;
    .registers 5

    .line 92
    const-string v0, "DecreaseRelation"

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->getCivID2()I

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

    .line 93
    :catch_46
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 65
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iValue:I

    return v0
.end method

.method public outcomeAction()V
    .registers 3

    .line 75
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->getCivID()I

    move-result v0

    if-ltz v0, :cond_20

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->getCivID()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_20

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->getCivID2()I

    move-result v0

    if-ltz v0, :cond_20

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->getCivID2()I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    .line 78
    :cond_20
    return-void
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 27
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID:I

    .line 28
    return-void
.end method

.method public setCivID2(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 37
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID2:I

    .line 38
    return-void
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "nValue"  # I

    .line 70
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iValue:I

    .line 71
    return-void
.end method

.method public updateCivIDAfterRemove(I)Z
    .registers 5
    .param p1, "nRemovedCivID"  # I

    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "out":Z
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID:I

    const/4 v2, -0x1

    if-ne v1, p1, :cond_a

    .line 45
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID:I

    .line 46
    const/4 v0, 0x1

    goto :goto_10

    .line 48
    :cond_a
    if-ge p1, v1, :cond_10

    .line 49
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID:I

    .line 52
    :cond_10
    :goto_10
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID2:I

    if-ne v1, p1, :cond_18

    .line 53
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID2:I

    .line 54
    const/4 v0, 0x1

    goto :goto_1e

    .line 56
    :cond_18
    if-ge p1, v1, :cond_1e

    .line 57
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_DecreaseRelation;->iCivID2:I

    .line 60
    :cond_1e
    :goto_1e
    return v0
.end method
