.class public Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_CivExist;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.source "Event_Conditions_CivExist.java"


# static fields
.field private static final serialVersionUID:J = -0x7b1442d44332a428L


# instance fields
.field public iCivID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_CivExist;->iCivID:I

    return-void
.end method


# virtual methods
.method public final editViewID()V
    .registers 3

    .line 63
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_CIVEXIST:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 64
    return-void
.end method

.method public getCivID()I
    .registers 2

    .line 19
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_CivExist;->iCivID:I

    return v0
.end method

.method public getConditionText()Ljava/lang/String;
    .registers 5

    .line 55
    const-string v0, "CivilizationExist"

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_CivExist;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2d} :catch_2e

    return-object v0

    .line 56
    :catch_2e
    move-exception v1

    .line 57
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outCondition()Z
    .registers 4

    .line 45
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_CivExist;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_d} :catch_11

    if-lez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 46
    :catch_11
    move-exception v1

    .line 50
    return v0
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 24
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_CivExist;->iCivID:I

    .line 25
    return-void
.end method

.method public updateCivIDAfterRemove(I)Z
    .registers 4
    .param p1, "nRemovedCivID"  # I

    .line 29
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_CivExist;->iCivID:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_9

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_CivExist;->iCivID:I

    .line 31
    return v1

    .line 33
    :cond_9
    if-ge p1, v0, :cond_e

    .line 34
    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_CivExist;->iCivID:I

    .line 37
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
