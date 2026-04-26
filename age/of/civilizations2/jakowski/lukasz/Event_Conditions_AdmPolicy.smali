.class public Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.source "Event_Conditions_AdmPolicy.java"


# static fields
.field private static final serialVersionUID:J = -0x4ef981c969286a6fL


# instance fields
.field public iCivID:I

.field public iValue:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->iCivID:I

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->iValue:I

    return-void
.end method


# virtual methods
.method public final editViewID()V
    .registers 3

    .line 66
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_ADM_POLICY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 67
    return-void
.end method

.method public getCivID()I
    .registers 2

    .line 16
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->iCivID:I

    return v0
.end method

.method public getConditionText()Ljava/lang/String;
    .registers 6

    .line 58
    const-string v0, "AdministrationPolicy"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_NAME:[Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_47} :catch_48

    return-object v0

    .line 59
    :catch_48
    move-exception v1

    .line 60
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 26
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->iValue:I

    return v0
.end method

.method public outCondition()Z
    .registers 4

    .line 50
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->getValue()I

    move-result v2
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_13} :catch_17

    if-ne v1, v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    .line 51
    :catch_17
    move-exception v1

    .line 52
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    return v0
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->iCivID:I

    .line 22
    return-void
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "nValue"  # I

    .line 31
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->iValue:I

    .line 32
    return-void
.end method

.method public updateCivIDAfterRemove(I)Z
    .registers 4
    .param p1, "nRemovedCivID"  # I

    .line 36
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->iCivID:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_9

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->iCivID:I

    .line 38
    return v1

    .line 40
    :cond_9
    if-ge p1, v0, :cond_e

    .line 41
    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AdmPolicy;->iCivID:I

    .line 44
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
