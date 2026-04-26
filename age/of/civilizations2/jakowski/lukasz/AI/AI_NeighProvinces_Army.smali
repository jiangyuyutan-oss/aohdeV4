.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces_Army;
.super Ljava/lang/Object;
.source "AI_NeighProvinces_Army.java"


# instance fields
.field public iArmy:I

.field public iDistance:I

.field public iProvinceID:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "iProvinceID"  # I
    .param p2, "iDistance"  # I
    .param p3, "iArmy"  # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces_Army;->iProvinceID:I

    .line 15
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces_Army;->iDistance:I

    .line 16
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_NeighProvinces_Army;->iArmy:I

    .line 17
    return-void
.end method
