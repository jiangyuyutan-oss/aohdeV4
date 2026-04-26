.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;
.super Ljava/lang/Object;
.source "AI_NeighProvinces.java"


# instance fields
.field public iDistance:I

.field public iProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"  # I
    .param p2, "iDistance"  # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;->iProvinceID:I

    .line 14
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces;->iDistance:I

    .line 15
    return-void
.end method
