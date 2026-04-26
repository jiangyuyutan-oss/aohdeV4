.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_RegoupArmyData;
.super Ljava/lang/Object;
.source "AI_RegoupArmyData.java"


# instance fields
.field public iArmy:I

.field public iProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"  # I
    .param p2, "iArmy"  # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_RegoupArmyData;->iProvinceID:I

    .line 14
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_RegoupArmyData;->iArmy:I

    .line 15
    return-void
.end method
