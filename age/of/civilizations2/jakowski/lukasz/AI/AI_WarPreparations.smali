.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;
.super Ljava/lang/Object;
.source "AI_WarPreparations.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public declareWar:Z

.field public iLeaderCivID:I

.field public iNumOfTurnsLeft:I

.field public onCivID:I


# direct methods
.method public constructor <init>(IIZI)V
    .registers 6
    .param p1, "iLeaderCivID"  # I
    .param p2, "onCivID"  # I
    .param p3, "declareWar"  # Z
    .param p4, "numOfTurns"  # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iLeaderCivID:I

    .line 17
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iNumOfTurnsLeft:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->declareWar:Z

    .line 22
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    .line 23
    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->declareWar:Z

    .line 25
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iLeaderCivID:I

    .line 27
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iNumOfTurnsLeft:I

    .line 28
    return-void
.end method
