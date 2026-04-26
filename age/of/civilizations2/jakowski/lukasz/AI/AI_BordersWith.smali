.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_BordersWith;
.super Ljava/lang/Object;
.source "AI_BordersWith.java"


# instance fields
.field public iNumOfConnections:I

.field public iWithCivID:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "iWithCivID"  # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_BordersWith;->iNumOfConnections:I

    .line 13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_BordersWith;->iWithCivID:I

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_BordersWith;->iNumOfConnections:I

    .line 15
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "iWithCivID"  # I
    .param p2, "iNumOfConnections"  # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_BordersWith;->iNumOfConnections:I

    .line 18
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_BordersWith;->iWithCivID:I

    .line 19
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_BordersWith;->iNumOfConnections:I

    .line 20
    return-void
.end method
