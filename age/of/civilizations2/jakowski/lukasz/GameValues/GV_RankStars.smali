.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankStars;
.super Ljava/lang/Object;
.source "GV_RankStars.java"


# instance fields
.field public BRONZE_RANK_CIVS_MIN:I

.field public BRONZE_RANK_CIVS_PERCENT:F

.field public GOLD_RANK_CIVS_MAX:I

.field public GOLD_RANK_CIVS_MIN:I

.field public GOLD_RANK_CIVS_PERCENT:F

.field public SILVER_RANK_CIVS_MAX:I

.field public SILVER_RANK_CIVS_MIN:I

.field public SILVER_RANK_CIVS_PERCENT:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3d8f5c29  # 0.07f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankStars;->GOLD_RANK_CIVS_PERCENT:F

    .line 6
    const/4 v1, 0x2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankStars;->GOLD_RANK_CIVS_MIN:I

    .line 7
    const/4 v2, 0x7

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankStars;->GOLD_RANK_CIVS_MAX:I

    .line 9
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankStars;->SILVER_RANK_CIVS_PERCENT:F

    .line 10
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankStars;->SILVER_RANK_CIVS_MIN:I

    .line 11
    const/16 v0, 0x8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankStars;->SILVER_RANK_CIVS_MAX:I

    .line 13
    const v0, 0x3f0ccccd  # 0.55f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankStars;->BRONZE_RANK_CIVS_PERCENT:F

    .line 14
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankStars;->BRONZE_RANK_CIVS_MIN:I

    return-void
.end method
