.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoGrowthRate;
.super Ljava/lang/Object;
.source "UndoGrowthRate.java"


# instance fields
.field public fGrowthRate:F

.field public iProvinceID:I


# direct methods
.method public constructor <init>(IF)V
    .registers 3
    .param p1, "iProvinceID"  # I
    .param p2, "fGrowthRate"  # F

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoGrowthRate;->iProvinceID:I

    .line 16
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Undo/UndoGrowthRate;->fGrowthRate:F

    .line 17
    return-void
.end method
