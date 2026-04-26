.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_ImproveRelations;
.super Ljava/lang/Object;
.source "AI_ImproveRelations.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iCivID:I

.field public iMinRelation:I

.field public iUntilTurnID:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "iCivID"  # I
    .param p2, "iMinRelation"  # I
    .param p3, "iUntilTurnID"  # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ImproveRelations;->iCivID:I

    .line 21
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ImproveRelations;->iMinRelation:I

    .line 22
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ImproveRelations;->iUntilTurnID:I

    .line 23
    return-void
.end method
