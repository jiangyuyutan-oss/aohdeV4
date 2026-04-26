.class public Lage/of/civilizations2/jakowski/lukasz/WarReparations;
.super Ljava/lang/Object;
.source "WarReparations.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iFromCivID:I

.field public iTurnsLeft:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "iFromCivID"  # I
    .param p2, "iTurnsLeft"  # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    .line 16
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    .line 20
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    .line 21
    return-void
.end method
