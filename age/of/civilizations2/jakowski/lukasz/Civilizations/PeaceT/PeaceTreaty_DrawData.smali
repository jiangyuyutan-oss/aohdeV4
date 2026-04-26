.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;
.super Ljava/lang/Object;
.source "PeaceTreaty_DrawData.java"


# instance fields
.field public iCivID:I

.field public iProvinceValue:I

.field public isTaken:I

.field public isToTake:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5
    .param p1, "iCivID"  # I
    .param p2, "iProvinceValue"  # I
    .param p3, "isToTake"  # Z

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    .line 10
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iProvinceValue:I

    .line 11
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->isToTake:Z

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->isTaken:I

    .line 15
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iCivID:I

    .line 16
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->iProvinceValue:I

    .line 17
    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->isToTake:Z

    .line 18
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_DrawData;->isTaken:I

    .line 19
    return-void
.end method
