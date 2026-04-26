.class public Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ToTheFront;
.super Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;
.source "RegroupArmy_ToTheFront.java"


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "nCivID"  # I
    .param p2, "fromProvinceID"  # I
    .param p3, "toProvinceID"  # I

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;-><init>(III)V

    .line 13
    return-void
.end method


# virtual methods
.method public continueMovingArmy(I)Z
    .registers 4
    .param p1, "nCivID"  # I

    .line 17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy_ToTheFront;->getFromProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 19
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_12
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy/RegroupArmy;->continueMovingArmy(I)Z

    move-result v0

    return v0
.end method
