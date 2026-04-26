.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_ArmyUpkeep;
.super Ljava/lang/Object;
.source "AI_ArmyUpkeep.java"


# instance fields
.field public fScore:F

.field public iCost:I

.field public iProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "nCivID"  # I
    .param p2, "nProvinceID"  # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ArmyUpkeep;->fScore:F

    .line 16
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ArmyUpkeep;->iProvinceID:I

    .line 17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v0, p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(II)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_ArmyUpkeep;->iCost:I

    .line 18
    return-void
.end method
