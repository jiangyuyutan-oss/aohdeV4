.class public Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.source "Event_Conditions_Economy_Low.java"


# instance fields
.field public iCivID:I

.field public iValue:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->iCivID:I

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->iValue:I

    return-void
.end method


# virtual methods
.method public final editViewID()V
    .registers 3

    .line 72
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ECONOMY_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 73
    return-void
.end method

.method public getCivID()I
    .registers 2

    .line 16
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->iCivID:I

    return v0
.end method

.method public getConditionText()Ljava/lang/String;
    .registers 5

    .line 64
    const-string v0, "Economy"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_3b} :catch_3c

    return-object v0

    .line 65
    :catch_3c
    move-exception v1

    .line 66
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 26
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->iValue:I

    return v0
.end method

.method public outCondition()Z
    .registers 7

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "tNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    :try_start_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-ge v1, v3, :cond_2f

    .line 53
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v2

    add-int/2addr v0, v2

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 56
    .end local v1  # "i":I
    :cond_2f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->getValue()I

    move-result v1
    :try_end_33
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_33} :catch_37

    if-ge v0, v1, :cond_36

    const/4 v2, 0x1

    :cond_36
    return v2

    .line 57
    .end local v0  # "tNum":I
    :catch_37
    move-exception v0

    .line 58
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    return v2
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->iCivID:I

    .line 22
    return-void
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "nValue"  # I

    .line 31
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->iValue:I

    .line 32
    return-void
.end method

.method public updateCivIDAfterRemove(I)Z
    .registers 4
    .param p1, "nRemovedCivID"  # I

    .line 36
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->iCivID:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_9

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->iCivID:I

    .line 38
    return v1

    .line 40
    :cond_9
    if-ge p1, v0, :cond_e

    .line 41
    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Economy_Low;->iCivID:I

    .line 44
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
