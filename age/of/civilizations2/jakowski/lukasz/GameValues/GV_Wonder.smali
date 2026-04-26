.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;
.super Ljava/lang/Object;
.source "GV_Wonder.java"


# instance fields
.field public BUILD_COST:I

.field public BUILD_COST_DEVELOPMENT_MAX:F

.field public BUILD_COST_DEVELOPMENT_MODIFIER:F

.field public GROWTH_RATE:F

.field public INCOME_TAXATION:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x61a8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;->BUILD_COST:I

    .line 6
    const v0, 0x3ef0a3d7  # 0.47f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;->BUILD_COST_DEVELOPMENT_MODIFIER:F

    .line 7
    const v0, 0x3efae148  # 0.49f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;->BUILD_COST_DEVELOPMENT_MAX:F

    .line 9
    const v0, 0x3d4ccccd  # 0.05f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;->GROWTH_RATE:F

    .line 10
    const/high16 v0, 0x429a0000  # 77.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;->INCOME_TAXATION:F

    return-void
.end method
