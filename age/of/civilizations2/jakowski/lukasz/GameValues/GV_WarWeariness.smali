.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;
.super Ljava/lang/Object;
.source "GV_WarWeariness.java"


# instance fields
.field public WAR_DURATION_SCALE_FACTOR:F

.field public WAR_DURATION_SCALE_LIMIT:F

.field public WAR_WEARINESS_AT_WAR_WITH_ONLY_REBELS_MODIFIER:F

.field public WAR_WEARINESS_BASE_INCREASE_AT_WAR:F

.field public WAR_WEARINESS_LIMIT:F

.field public WAR_WEARINESS_PEACE_DECREASE:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_WEARINESS_LIMIT:F

    .line 7
    const v0, 0x3b0d0892  # 0.002152f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_WEARINESS_BASE_INCREASE_AT_WAR:F

    .line 8
    const v0, 0x3a79096c  # 9.5E-4f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_WEARINESS_PEACE_DECREASE:F

    .line 10
    const v0, 0x4192f9db  # 18.372f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_DURATION_SCALE_FACTOR:F

    .line 11
    const/high16 v0, 0x3fc00000  # 1.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_DURATION_SCALE_LIMIT:F

    .line 13
    const/high16 v0, 0x3e800000  # 0.25f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_WEARINESS_AT_WAR_WITH_ONLY_REBELS_MODIFIER:F

    return-void
.end method
