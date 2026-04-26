.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Move;
.super Ljava/lang/Object;
.source "GV_Move.java"


# instance fields
.field public COST_OF_MOVE_MOVEMENTS_POINTS_LAND_TO_SEA_MODIFIER:F

.field public COST_OF_MOVE_MOVEMENTS_POINTS_SEA_TO_SEA_MODIFIER:F

.field public MIN_ARMY_REQUIRED_TO_ATTACK_DEFAULT:I

.field public MIN_ARMY_TO_RETREAT:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Move;->MIN_ARMY_TO_RETREAT:I

    .line 7
    const/high16 v0, 0x40000000  # 2.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Move;->COST_OF_MOVE_MOVEMENTS_POINTS_LAND_TO_SEA_MODIFIER:F

    .line 8
    const/high16 v0, 0x3fc00000  # 1.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Move;->COST_OF_MOVE_MOVEMENTS_POINTS_SEA_TO_SEA_MODIFIER:F

    .line 10
    const/16 v0, 0x13

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Move;->MIN_ARMY_REQUIRED_TO_ATTACK_DEFAULT:I

    return-void
.end method
