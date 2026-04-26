.class public Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.source "Event_Conditions_Relation_Low.java"


# static fields
.field private static final serialVersionUID:J = 0x5921316d77e25689L


# instance fields
.field public iCivID:I

.field public iCivID2:I

.field public iValue:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID:I

    .line 12
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID2:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iValue:I

    return-void
.end method


# virtual methods
.method public final editViewID()V
    .registers 3

    .line 89
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_RELATION_LOW:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 90
    return-void
.end method

.method public getCivID()I
    .registers 2

    .line 19
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID:I

    return v0
.end method

.method public getCivID2()I
    .registers 2

    .line 29
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID2:I

    return v0
.end method

.method public getConditionText()Ljava/lang/String;
    .registers 5

    .line 81
    const-string v0, "Relation"

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->getCivID()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->getCivID2()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_53
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_53} :catch_54

    return-object v0

    .line 82
    :catch_54
    move-exception v1

    .line 83
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 39
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iValue:I

    return v0
.end method

.method public outCondition()Z
    .registers 5

    .line 73
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->getCivID2()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->getValue()I

    move-result v2
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_13} :catch_1a

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    .line 74
    :catch_1a
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    return v0
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 24
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID:I

    .line 25
    return-void
.end method

.method public setCivID2(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 34
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID2:I

    .line 35
    return-void
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "nValue"  # I

    .line 44
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iValue:I

    .line 45
    return-void
.end method

.method public updateCivIDAfterRemove(I)Z
    .registers 5
    .param p1, "nRemovedCivID"  # I

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "out":Z
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID:I

    const/4 v2, -0x1

    if-ne v1, p1, :cond_a

    .line 52
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID:I

    .line 53
    const/4 v0, 0x1

    goto :goto_10

    .line 55
    :cond_a
    if-ge p1, v1, :cond_10

    .line 56
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID:I

    .line 59
    :cond_10
    :goto_10
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID2:I

    if-ne v1, p1, :cond_18

    .line 60
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID2:I

    .line 61
    const/4 v0, 0x1

    goto :goto_1e

    .line 63
    :cond_18
    if-ge p1, v1, :cond_1e

    .line 64
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Relation_Low;->iCivID2:I

    .line 67
    :cond_1e
    :goto_1e
    return v0
.end method
