.class public Lage/of/civilizations2/jakowski/lukasz/Managers/MercenariesManager$MercenaryArmy;
.super Ljava/lang/Object;
.source "MercenariesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Managers/MercenariesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MercenaryArmy"
.end annotation


# instance fields
.field public fromCivID:I

.field public iCost:I

.field public numOfUnits:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "fromCivID"  # I
    .param p2, "numOfUnits"  # I
    .param p3, "iCost"  # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Managers/MercenariesManager$MercenaryArmy;->fromCivID:I

    .line 13
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Managers/MercenariesManager$MercenaryArmy;->numOfUnits:I

    .line 17
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Managers/MercenariesManager$MercenaryArmy;->fromCivID:I

    .line 18
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Managers/MercenariesManager$MercenaryArmy;->numOfUnits:I

    .line 19
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Managers/MercenariesManager$MercenaryArmy;->iCost:I

    .line 20
    return-void
.end method
