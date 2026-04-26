.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/Vassal/PeaceTreaty_ReleaseableVassals_TakeConrol;
.super Ljava/lang/Object;
.source "PeaceTreaty_ReleaseableVassals_TakeConrol.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iFromCivID:I

.field public iVassalCivID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iFromCivID"  # I
    .param p2, "iVassalCivID"  # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/Vassal/PeaceTreaty_ReleaseableVassals_TakeConrol;->iFromCivID:I

    .line 20
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/Vassal/PeaceTreaty_ReleaseableVassals_TakeConrol;->iVassalCivID:I

    .line 21
    return-void
.end method
