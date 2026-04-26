.class public Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.source "Event_Conditions_HaveArmy.java"


# static fields
.field private static final serialVersionUID:J = 0x730bfb83130e4a90L


# instance fields
.field public iCivID:I

.field public iPercentage:I

.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->iCivID:I

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->lProvinces:Ljava/util/List;

    .line 16
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->iPercentage:I

    return-void
.end method


# virtual methods
.method public final editViewID()V
    .registers 3

    .line 100
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_HAVEARMY:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 101
    return-void
.end method

.method public getCivID()I
    .registers 2

    .line 22
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->iCivID:I

    return v0
.end method

.method public getConditionText()Ljava/lang/String;
    .registers 5

    .line 92
    const-string v0, "HaveArmy"

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->getCivID()I

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

    .line 93
    :catch_2e
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvinces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->lProvinces:Ljava/util/List;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 32
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->iPercentage:I

    return v0
.end method

.method public outCondition()Z
    .registers 6

    .line 71
    const/4 v0, 0x0

    .line 74
    .local v0, "numOut":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->lProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 75
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v2
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_25} :catch_45

    if-lez v2, :cond_29

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 81
    .end local v1  # "i":I
    :cond_2c
    nop

    .line 83
    int-to-float v1, v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->lProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->getValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_43

    .line 84
    return v2

    .line 87
    :cond_43
    const/4 v1, 0x1

    return v1

    .line 79
    :catch_45
    move-exception v1

    .line 80
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    return v2
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 27
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->iCivID:I

    .line 28
    return-void
.end method

.method public setProvinces(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "nProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 50
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->lProvinces:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 52
    .end local v0  # "i":I
    :cond_1a
    return-void
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "nValue"  # I

    .line 37
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->iPercentage:I

    .line 38
    return-void
.end method

.method public updateCivIDAfterRemove(I)Z
    .registers 4
    .param p1, "nRemovedCivID"  # I

    .line 56
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->iCivID:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_9

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->iCivID:I

    .line 58
    return v1

    .line 60
    :cond_9
    if-ge p1, v0, :cond_e

    .line 61
    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_HaveArmy;->iCivID:I

    .line 64
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
