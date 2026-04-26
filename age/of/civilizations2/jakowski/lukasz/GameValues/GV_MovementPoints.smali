.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MovementPoints;
.super Ljava/lang/Object;
.source "GV_MovementPoints.java"


# instance fields
.field public MOVEMENT_POINTS_BASE_VALUE:I

.field public MOVEMENT_POINTS_CIV_SIZE_TECHNOLOGY_LEVEL_MODIFIER:F

.field public MOVEMENT_POINTS_CIV_SIZE_TECHNOLOGY_LEVEL_MODIFIER_LIMIT:F

.field public MOVEMENT_POINTS_MAX_MODIFIER:F

.field public MOVEMENT_POINTS_TECHNOLOGY_LEVEL_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MovementPoints;->MOVEMENT_POINTS_BASE_VALUE:I

    .line 6
    const v0, 0x3f9b645a  # 1.214f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MovementPoints;->MOVEMENT_POINTS_CIV_SIZE_TECHNOLOGY_LEVEL_MODIFIER:F

    .line 7
    const/high16 v0, 0x3fa00000  # 1.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MovementPoints;->MOVEMENT_POINTS_CIV_SIZE_TECHNOLOGY_LEVEL_MODIFIER_LIMIT:F

    .line 9
    const v0, 0x40093405  # 2.1438f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MovementPoints;->MOVEMENT_POINTS_TECHNOLOGY_LEVEL_MODIFIER:F

    .line 11
    const/high16 v0, 0x3fe00000  # 1.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_MovementPoints;->MOVEMENT_POINTS_MAX_MODIFIER:F

    return-void
.end method
