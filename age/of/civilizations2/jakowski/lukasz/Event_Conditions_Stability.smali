.class public Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.source "Event_Conditions_Stability.java"


# static fields
.field private static final serialVersionUID:J = -0x4ef981c969286a6fL


# instance fields
.field public iCivID:I

.field public iValue:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->iCivID:I

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->iValue:I

    return-void
.end method


# virtual methods
.method public final editViewID()V
    .registers 3

    .line 64
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_STABILITY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 65
    return-void
.end method

.method public getCivID()I
    .registers 2

    .line 14
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->iCivID:I

    return v0
.end method

.method public getConditionText()Ljava/lang/String;
    .registers 5

    .line 56
    const-string v0, "Stability"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->getCivID()I

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3c

    return-object v0

    .line 57
    :catch_3c
    move-exception v1

    .line 58
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 24
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->iValue:I

    return v0
.end method

.method public outCondition()Z
    .registers 4

    .line 48
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    const/high16 v2, 0x42c80000  # 100.0f

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->getValue()I

    move-result v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1c

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    .line 49
    :catch_1c
    move-exception v1

    .line 50
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->iCivID:I

    .line 20
    return-void
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "nValue"  # I

    .line 29
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->iValue:I

    .line 30
    return-void
.end method

.method public updateCivIDAfterRemove(I)Z
    .registers 4
    .param p1, "nRemovedCivID"  # I

    .line 34
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->iCivID:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_9

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->iCivID:I

    .line 36
    return v1

    .line 38
    :cond_9
    if-ge p1, v0, :cond_e

    .line 39
    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Stability;->iCivID:I

    .line 42
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
