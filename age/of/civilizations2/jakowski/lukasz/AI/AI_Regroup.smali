.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_Regroup;
.super Ljava/lang/Object;
.source "AI_Regroup.java"


# instance fields
.field public iArmy:I

.field public iProvinceID:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "nCivID"  # I
    .param p2, "nProvinceID"  # I
    .param p3, "nArmy"  # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Regroup;->iProvinceID:I

    .line 14
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Regroup;->iArmy:I

    .line 15
    return-void
.end method
