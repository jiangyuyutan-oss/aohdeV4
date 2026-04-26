.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;
.super Ljava/lang/Object;
.source "Civilization_Sanctions.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public byCivID:I

.field public impact:F

.field public onCivID:I

.field public untilTurnID:I


# direct methods
.method public constructor <init>(IIFI)V
    .registers 6
    .param p1, "byCivID"  # I
    .param p2, "onCivID"  # I
    .param p3, "impact"  # F
    .param p4, "untilTurnID"  # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->impact:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->untilTurnID:I

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->byCivID:I

    .line 20
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->onCivID:I

    .line 21
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->impact:F

    .line 22
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Sanctions;->untilTurnID:I

    .line 23
    return-void
.end method
