.class public Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.super Ljava/lang/Object;
.source "Event_Conditions.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public conditionType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->conditionType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    return-void
.end method


# virtual methods
.method public editViewID()V
    .registers 3

    .line 48
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_SCENARIO_EVENTS_COND_CIVEXIST:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 49
    return-void
.end method

.method public getCivID()I
    .registers 2

    .line 23
    const/4 v0, -0x1

    return v0
.end method

.method public getCivID2()I
    .registers 2

    .line 25
    const/4 v0, -0x1

    return v0
.end method

.method public getConditionText()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, ""

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

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 34
    const-string v0, ""

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 27
    const/4 v0, -0x1

    return v0
.end method

.method public outCondition()Z
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 24
    return-void
.end method

.method public setCivID2(I)V
    .registers 2
    .param p1, "nCivID"  # I

    .line 26
    return-void
.end method

.method public setProvinces(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "nProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "nText"  # Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "nValue"  # I

    .line 28
    return-void
.end method

.method public updateCivIDAfterRemove(I)Z
    .registers 3
    .param p1, "nRemovedCivID"  # I

    .line 33
    const/4 v0, 0x0

    return v0
.end method
