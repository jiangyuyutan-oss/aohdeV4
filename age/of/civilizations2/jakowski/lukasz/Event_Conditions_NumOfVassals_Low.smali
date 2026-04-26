.class public Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.source "Event_Conditions_NumOfVassals_Low.java"


# static fields
.field private static final serialVersionUID:J = 0x730bfb83130e4a90L


# instance fields
.field public iCivID:I

.field public iValue:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->iCivID:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->iValue:I

    return-void
.end method


# virtual methods
.method public final editViewID()V
    .registers 3

    .line 76
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_NUMOFVASSALS_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 77
    return-void
.end method

.method public getCivID()I
    .registers 2

    .line 18
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->iCivID:I

    return v0
.end method

.method public getConditionText()Ljava/lang/String;
    .registers 5

    .line 68
    const-string v0, "NumberOfVassals"

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->getCivID()I

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

    .line 69
    :catch_3c
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 28
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->iValue:I

    return v0
.end method

.method public outCondition()Z
    .registers 6

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "tNumOfVassals":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    :try_start_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_26

    .line 55
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_23

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->getCivID()I

    move-result v2

    if-eq v1, v2, :cond_23

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 54
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 60
    .end local v1  # "i":I
    :cond_26
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->getValue()I

    move-result v1
    :try_end_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_2a} :catch_2e

    if-ge v0, v1, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    return v2

    .line 61
    .end local v0  # "tNumOfVassals":I
    :catch_2e
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    return v2
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 23
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->iCivID:I

    .line 24
    return-void
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "nValue"  # I

    .line 33
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->iValue:I

    .line 34
    return-void
.end method

.method public updateCivIDAfterRemove(I)Z
    .registers 4
    .param p1, "nRemovedCivID"  # I

    .line 38
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->iCivID:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_9

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->iCivID:I

    .line 40
    return v1

    .line 42
    :cond_9
    if-ge p1, v0, :cond_e

    .line 43
    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_NumOfVassals_Low;->iCivID:I

    .line 46
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
