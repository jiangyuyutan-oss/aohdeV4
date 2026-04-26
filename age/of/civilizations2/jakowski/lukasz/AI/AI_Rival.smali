.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_Rival;
.super Ljava/lang/Object;
.source "AI_Rival.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iCivID:I

.field public iUntilTurnID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iCivID"  # I
    .param p2, "iUntilTurnID"  # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Rival;->iCivID:I

    .line 20
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Rival;->iUntilTurnID:I

    .line 21
    return-void
.end method
