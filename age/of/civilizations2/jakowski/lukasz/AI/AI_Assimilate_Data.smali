.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_Assimilate_Data;
.super Ljava/lang/Object;
.source "AI_Assimilate_Data.java"


# instance fields
.field public fScore:F

.field public iProvinceID:I


# direct methods
.method public constructor <init>(IF)V
    .registers 3
    .param p1, "iProvinceID"  # I
    .param p2, "fScore"  # F

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Assimilate_Data;->iProvinceID:I

    .line 14
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Assimilate_Data;->fScore:F

    .line 17
    return-void
.end method
