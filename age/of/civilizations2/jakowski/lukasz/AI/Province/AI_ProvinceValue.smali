.class public Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceValue;
.super Ljava/lang/Object;
.source "AI_ProvinceValue.java"


# instance fields
.field public iProvinceID:I

.field public iValue:F


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "iProvinceID"  # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceValue;->iProvinceID:I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceValue;->iValue:F

    .line 15
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "iProvinceID"  # I
    .param p2, "iValue"  # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceValue;->iProvinceID:I

    .line 19
    int-to-float v0, p2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/Province/AI_ProvinceValue;->iValue:F

    .line 20
    return-void
.end method
