.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivsInRange;
.super Ljava/lang/Object;
.source "GV_AI_CivsInRange.java"


# instance fields
.field public CIVS_IN_RANGE_DISTANCE_EXTRA_MODIFIER:F

.field public CIVS_IN_RANGE_DISTANCE_MODIFIER:F

.field public REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS:I

.field public REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS_EMPTY:I

.field public REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS_NO_CAPITAL:I

.field public REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS_NO_CAPITAL_RANDOM:I

.field public REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS_RANDOM:I

.field public REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS_RANDOM_EMPTY:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3f666666  # 0.9f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivsInRange;->CIVS_IN_RANGE_DISTANCE_MODIFIER:F

    .line 6
    const v0, 0x3e88f5c3  # 0.2675f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivsInRange;->CIVS_IN_RANGE_DISTANCE_EXTRA_MODIFIER:F

    .line 8
    const/16 v0, 0x81

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivsInRange;->REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS:I

    .line 9
    const/16 v0, 0x45

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivsInRange;->REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS_RANDOM:I

    .line 11
    const/16 v0, 0x31

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivsInRange;->REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS_EMPTY:I

    .line 12
    const/16 v0, 0x34

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivsInRange;->REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS_RANDOM_EMPTY:I

    .line 14
    const/16 v0, 0x22

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivsInRange;->REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS_NO_CAPITAL:I

    .line 15
    const/16 v0, 0x29

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_CivsInRange;->REBUILD_CIVS_IN_RANGE_AFTER_X_TURNS_NO_CAPITAL_RANDOM:I

    return-void
.end method
