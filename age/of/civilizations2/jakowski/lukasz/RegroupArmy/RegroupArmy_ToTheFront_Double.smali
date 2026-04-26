.class public Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ToTheFront_Double;
.super Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ToTheFront;
.source "RegroupArmy_ToTheFront_Double.java"


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "nCivID"  # I
    .param p2, "fromProvinceID"  # I
    .param p3, "toProvinceID"  # I

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ToTheFront;-><init>(III)V

    .line 13
    return-void
.end method


# virtual methods
.method public continueMovingArmy(I)Z
    .registers 6
    .param p1, "nCivID"  # I

    .line 17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ToTheFront_Double;->getFromProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 19
    return v1

    .line 22
    :cond_12
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ToTheFront_Double;->getToProvinceID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ToTheFront_Double;->getToProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v0

    if-nez v0, :cond_39

    .line 24
    return v1

    .line 42
    :cond_39
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ToTheFront;->continueMovingArmy(I)Z

    move-result v0

    return v0
.end method
