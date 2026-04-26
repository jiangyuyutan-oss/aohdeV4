.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;
.super Ljava/lang/Object;
.source "GV_AI_Nuke.java"


# instance fields
.field public BUILD_NUKE_GAME_UPDATE_TURNS:I

.field public BUILD_NUKE_LIMIT_PER_TURN:I

.field public NUKE_ONLY_IF_PROVINCE_RATIO_OVER:F

.field public NUKE_OR_IF_NUM_OF_PROVINCES_BELOW:I

.field public NUKE_SCORE_ECONOMY_MODIFIER:F

.field public NUKE_SCORE_POPULATION_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3f59999a  # 0.85f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;->NUKE_ONLY_IF_PROVINCE_RATIO_OVER:F

    .line 6
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;->NUKE_OR_IF_NUM_OF_PROVINCES_BELOW:I

    .line 8
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;->NUKE_SCORE_POPULATION_MODIFIER:F

    .line 9
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;->NUKE_SCORE_ECONOMY_MODIFIER:F

    .line 11
    const/4 v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;->BUILD_NUKE_GAME_UPDATE_TURNS:I

    .line 12
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Nuke;->BUILD_NUKE_LIMIT_PER_TURN:I

    return-void
.end method
