.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;
.super Ljava/lang/Object;
.source "GV_RelationImprove.java"


# instance fields
.field public COST_OFFER_IMPROVE_RELATIONS_DIPLOMACY_POINTS:I

.field public IMPROVE_RELATIONS_BASE:F

.field public IMPROVE_RELATIONS_MAX_NUM_OF_TURNS:I

.field public IMPROVE_RELATIONS_MIN_GAIN:F

.field public IMPROVE_RELATIONS_RANDOM_100:I

.field public IMPROVE_RELATIONS_RANK_SCORE_MAX_RATIO:F

.field public IMPROVE_RELATIONS_RANK_SCORE_MIN_RATIO:F

.field public IMPROVE_RELATIONS_RECIPROCITY_MODIFIER:F

.field public IMPROVE_RELATIONS_RELATION_MAX_EFFECTIVE:F

.field public IMPROVE_RELATIONS_WITH_VASSAL_TURNSLIMIT:F

.field public IMPROVE_RELATIONS_WITH_VASSAL_TURNS_MIN:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->COST_OFFER_IMPROVE_RELATIONS_DIPLOMACY_POINTS:I

    .line 6
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->IMPROVE_RELATIONS_MAX_NUM_OF_TURNS:I

    .line 8
    const v0, 0x3f57ae14  # 0.8425f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->IMPROVE_RELATIONS_BASE:F

    .line 9
    const/16 v0, 0x79

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->IMPROVE_RELATIONS_RANDOM_100:I

    .line 10
    const/high16 v0, 0x3e000000  # 0.125f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->IMPROVE_RELATIONS_MIN_GAIN:F

    .line 11
    const/high16 v0, 0x43110000  # 145.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->IMPROVE_RELATIONS_RELATION_MAX_EFFECTIVE:F

    .line 13
    const v0, 0x3ea66666  # 0.325f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->IMPROVE_RELATIONS_RANK_SCORE_MIN_RATIO:F

    .line 14
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->IMPROVE_RELATIONS_RANK_SCORE_MAX_RATIO:F

    .line 16
    const v0, 0x3f6ae148  # 0.9175f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->IMPROVE_RELATIONS_RECIPROCITY_MODIFIER:F

    .line 18
    const/high16 v0, 0x41200000  # 10.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->IMPROVE_RELATIONS_WITH_VASSAL_TURNS_MIN:F

    .line 19
    const/high16 v0, 0x41c80000  # 25.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RelationImprove;->IMPROVE_RELATIONS_WITH_VASSAL_TURNSLIMIT:F

    return-void
.end method
