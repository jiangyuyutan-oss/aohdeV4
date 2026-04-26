.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;
.super Ljava/lang/Object;
.source "GV_RankScore.java"


# instance fields
.field public ECON_RANK_SCORE_BASE_DEV_MODIFIER:F

.field public ECON_RANK_SCORE_BASE_STABILITY_MODIFIER:F

.field public ECON_RANK_SCORE_DEV_WEIGHT:F

.field public ECON_RANK_SCORE_ECONOMY_DIVISOR:F

.field public ECON_RANK_SCORE_STABILITY_WEIGHT:F

.field public POP_RANK_SCORE_FOREIGN_CIV_WEIGHT:F

.field public POP_RANK_SCORE_OCCUPIED_PROVINCE_MODIFIER:F

.field public POP_RANK_SCORE_POP_DIVISOR:F

.field public POP_RANK_SCORE_SAME_CIV_WEIGHT:F

.field public POP_RANK_SCORE_STABILITY_MODIFIER_BASE:F

.field public POP_RANK_SCORE_STABILITY_WEIGHT:F

.field public POP_RANK_SCORE_TECH_MODIFIER_BASE:F

.field public POP_RANK_SCORE_TECH_WEIGHT:F

.field public PRESTIGE_BASE_PROVINCE_SCORE:F

.field public PRESTIGE_CORE_MODIFIER:F

.field public PRESTIGE_DEV_BASE:F

.field public PRESTIGE_DEV_WEIGHT:F

.field public PRESTIGE_NONCORE_MODIFIER:F

.field public PRESTIGE_POP_GROWTH_BASE:F

.field public PRESTIGE_POP_GROWTH_WEIGHT:F

.field public PRESTIGE_TECH_BASE:F

.field public PRESTIGE_TECH_BONUS:F

.field public PRESTIGE_TECH_WEIGHT:F


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x4029999a  # 2.65f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->POP_RANK_SCORE_POP_DIVISOR:F

    .line 7
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->POP_RANK_SCORE_SAME_CIV_WEIGHT:F

    .line 8
    const v1, 0x3e8ccccd  # 0.275f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->POP_RANK_SCORE_FOREIGN_CIV_WEIGHT:F

    .line 10
    const v2, 0x3f19999a  # 0.6f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->POP_RANK_SCORE_STABILITY_MODIFIER_BASE:F

    .line 11
    const v2, 0x3ecccccd  # 0.4f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->POP_RANK_SCORE_STABILITY_WEIGHT:F

    .line 13
    const/high16 v2, 0x3f200000  # 0.625f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->POP_RANK_SCORE_TECH_MODIFIER_BASE:F

    .line 14
    const/high16 v3, 0x3ec00000  # 0.375f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->POP_RANK_SCORE_TECH_WEIGHT:F

    .line 16
    const v4, 0x3e19999a  # 0.15f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->POP_RANK_SCORE_OCCUPIED_PROVINCE_MODIFIER:F

    .line 18
    const/high16 v4, 0x41820000  # 16.25f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->ECON_RANK_SCORE_ECONOMY_DIVISOR:F

    .line 20
    const v4, 0x3ed9999a  # 0.425f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->ECON_RANK_SCORE_BASE_DEV_MODIFIER:F

    .line 21
    const v4, 0x3f2ccccd  # 0.675f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->ECON_RANK_SCORE_DEV_WEIGHT:F

    .line 23
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->ECON_RANK_SCORE_BASE_STABILITY_MODIFIER:F

    .line 24
    const v1, 0x3f39999a  # 0.725f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->ECON_RANK_SCORE_STABILITY_WEIGHT:F

    .line 26
    const/high16 v1, 0x40100000  # 2.25f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->PRESTIGE_BASE_PROVINCE_SCORE:F

    .line 28
    const/high16 v1, 0x3e000000  # 0.125f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->PRESTIGE_POP_GROWTH_BASE:F

    .line 29
    const/high16 v1, 0x3f600000  # 0.875f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->PRESTIGE_POP_GROWTH_WEIGHT:F

    .line 31
    const v1, 0x3f48f5c3  # 0.785f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->PRESTIGE_TECH_BASE:F

    .line 32
    const v1, 0x3e5c28f6  # 0.215f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->PRESTIGE_TECH_WEIGHT:F

    .line 34
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->PRESTIGE_CORE_MODIFIER:F

    .line 35
    const v0, 0x3ef33333  # 0.475f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->PRESTIGE_NONCORE_MODIFIER:F

    .line 37
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->PRESTIGE_DEV_BASE:F

    .line 38
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->PRESTIGE_DEV_WEIGHT:F

    .line 39
    const/high16 v0, 0x418c0000  # 17.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RankScore;->PRESTIGE_TECH_BONUS:F

    return-void
.end method
