.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;
.super Ljava/lang/Object;
.source "GV_Taxation.java"


# instance fields
.field public HAPPINESS_CHANGE_BASE:F

.field public HAPPINESS_CHANGE_BASE_OCCUPIED:F

.field public HAPPINESS_CHANGE_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3d2c0831  # 0.042f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;->HAPPINESS_CHANGE_BASE:F

    .line 6
    const v0, 0x3d0b4396  # 0.034f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;->HAPPINESS_CHANGE_BASE_OCCUPIED:F

    .line 8
    const v0, 0x3d1f559b  # 0.0389f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;->HAPPINESS_CHANGE_MODIFIER:F

    return-void
.end method
