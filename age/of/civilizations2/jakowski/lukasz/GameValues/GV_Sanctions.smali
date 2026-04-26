.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;
.super Ljava/lang/Object;
.source "GV_Sanctions.java"


# instance fields
.field public COST_SANCTIONS_DIPLOMACY_POINTS:I

.field public IMPACT_BY_DISTANCE:F

.field public IMPACT_BY_DISTANCE_PROVINCES_DIFF_MIN_MODIFIER:F

.field public IMPACT_EXTRA_IF_NEIGHBORS:F

.field public IMPACT_MODIFIER_MIN_LARGER_CIV:F

.field public MAX_IMPACT_PER_CIV:F

.field public MAX_IMPACT_TOTAL:F

.field public RELATIONS_CHANGE:F

.field public SANCTIONS_MAX_TURNS:I

.field public SANCTIONS_MIN_DEFAULT:I

.field public SANCTIONS_MIN_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->MAX_IMPACT_TOTAL:F

    .line 7
    const/high16 v1, 0x3e800000  # 0.25f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->MAX_IMPACT_PER_CIV:F

    .line 9
    const v1, 0x3c75c28f  # 0.015f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->IMPACT_BY_DISTANCE:F

    .line 10
    const v1, 0x3ca3d70a  # 0.02f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->IMPACT_EXTRA_IF_NEIGHBORS:F

    .line 12
    const v1, 0x3d4ccccd  # 0.05f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->IMPACT_MODIFIER_MIN_LARGER_CIV:F

    .line 14
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->IMPACT_BY_DISTANCE_PROVINCES_DIFF_MIN_MODIFIER:F

    .line 16
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->SANCTIONS_MIN_TURNS:I

    .line 17
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->SANCTIONS_MAX_TURNS:I

    .line 18
    const/16 v0, 0x32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->SANCTIONS_MIN_DEFAULT:I

    .line 20
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->COST_SANCTIONS_DIPLOMACY_POINTS:I

    .line 22
    const/high16 v0, -0x3ee00000  # -10.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Sanctions;->RELATIONS_CHANGE:F

    return-void
.end method
