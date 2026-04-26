.class public Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo;
.super Ljava/lang/Object;
.source "AI_ProvinceInfo.java"


# instance fields
.field public iProvinceID:I

.field public iRecruitable:I

.field public iValue:F


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "iProvinceID"  # I
    .param p2, "iValue"  # I
    .param p3, "iRecruitable"  # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo;->iProvinceID:I

    .line 15
    int-to-float v0, p2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo;->iValue:F

    .line 16
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceInfo;->iRecruitable:I

    .line 17
    return-void
.end method
