.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeMilitary;
.super Ljava/lang/Object;
.source "GV_GoldenAgeMilitary.java"


# instance fields
.field public ATTACK_BONUS_BASE:F

.field public ATTACK_BONUS_RANDOM_100:I

.field public MILITARY_UPKEEP_BASE:F

.field public MILITARY_UPKEEP_RANDOM_100:I

.field public MOVEMENT_POINTS_BASE:F

.field public MOVEMENT_POINTS_RANDOM_100:I

.field public NUM_OF_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeMilitary;->NUM_OF_TURNS:I

    .line 7
    const v1, 0x3da3d70a  # 0.08f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeMilitary;->ATTACK_BONUS_BASE:F

    .line 8
    const/4 v1, 0x6

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeMilitary;->ATTACK_BONUS_RANDOM_100:I

    .line 10
    const v2, -0x41f0a3d7  # -0.14f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeMilitary;->MILITARY_UPKEEP_BASE:F

    .line 11
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeMilitary;->MILITARY_UPKEEP_RANDOM_100:I

    .line 13
    const v1, 0x3d75c28f  # 0.06f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeMilitary;->MOVEMENT_POINTS_BASE:F

    .line 14
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAgeMilitary;->MOVEMENT_POINTS_RANDOM_100:I

    return-void
.end method
