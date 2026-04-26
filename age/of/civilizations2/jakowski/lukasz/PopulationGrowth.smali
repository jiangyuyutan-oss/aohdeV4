.class public Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;
.super Ljava/lang/Object;
.source "PopulationGrowth.java"


# instance fields
.field public fPerc:F

.field public iCivID:I


# direct methods
.method public constructor <init>(IF)V
    .registers 3
    .param p1, "iCivID"  # I
    .param p2, "fPerc"  # F

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;->iCivID:I

    .line 16
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;->fPerc:F

    .line 17
    return-void
.end method
