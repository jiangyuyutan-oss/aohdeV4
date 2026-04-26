.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;
.super Ljava/lang/Object;
.source "GV_Stability.java"


# instance fields
.field public SEND_MESSAGE_LOW_STABILITY_IF_BELOW:I

.field public STABILITY_ARMY:F

.field public STABILITY_ARMY_NEIGH_ARMY:F

.field public STABILITY_CORE:F

.field public STABILITY_DISEASE:F

.field public STABILITY_HAPPINESS:F

.field public STABILITY_HAPPINESS_MIN:F

.field public STABILITY_HAPPINESS_MIN_LOWER_STABILITY:F

.field public STABILITY_LARGEST_GROUP:F

.field public STABILITY_OCCUPIED:F

.field public STABILITY_PERC_OF_TOTAL:F

.field public STABILITY_REV_RISK:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x4b

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->SEND_MESSAGE_LOW_STABILITY_IF_BELOW:I

    .line 7
    const v0, 0x3e5c28f6  # 0.215f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_LARGEST_GROUP:F

    .line 8
    const v0, 0x3fa33333  # 1.275f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_PERC_OF_TOTAL:F

    .line 9
    const v0, 0x3e99999a  # 0.3f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_HAPPINESS:F

    .line 10
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_HAPPINESS_MIN:F

    .line 11
    const v0, -0x40f33333  # -0.55f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_HAPPINESS_MIN_LOWER_STABILITY:F

    .line 12
    const v0, 0x3e4ccccd  # 0.2f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_REV_RISK:F

    .line 13
    const v1, 0x3f266666  # 0.65f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_ARMY:F

    .line 14
    const v1, 0x3e3d70a4  # 0.185f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_ARMY_NEIGH_ARMY:F

    .line 15
    const v1, 0x3ee66666  # 0.45f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_OCCUPIED:F

    .line 16
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_DISEASE:F

    .line 18
    const v0, 0x3d4ccccd  # 0.05f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Stability;->STABILITY_CORE:F

    return-void
.end method
