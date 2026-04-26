.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;
.super Ljava/lang/Object;
.source "GV_AllianceOffer.java"


# instance fields
.field public COST_ALLIANCE_LEAVE:I

.field public COST_OFFER_ALLIANCE_DIPLOMACY_POINTS:I

.field public SCORE_NEGATIVE_CIV_AT_WAR:I

.field public SCORE_NEGATIVE_CORE_PENALTY_BASE:I

.field public SCORE_NEGATIVE_CORE_PENALTY_MAX:I

.field public SCORE_NEGATIVE_DISTANCE_MODIFIER:F

.field public SCORE_NEGATIVE_EMBASSY_CLOSED:I

.field public SCORE_NEGATIVE_GOVERNMENT_DIFFERENT_GROUP_AND_GOVERNMENT:I

.field public SCORE_NEGATIVE_GOVERNMENT_SAME_GROUP:I

.field public SCORE_NEGATIVE_HRE_MEMBERSHIP_DIFFERENCE:I

.field public SCORE_NEGATIVE_IS_VASSAL:I

.field public SCORE_NEGATIVE_PER_EXTRA_CORE:I

.field public SCORE_NEGATIVE_POWERFUL_ALLIES_ALLY_RANK_PENALTY_LIMIT:F

.field public SCORE_NEGATIVE_POWERFUL_ALLIES_ALLY_RANK_PENALTY_MULTIPLIER:F

.field public SCORE_NEGATIVE_POWERFUL_ALLIES_OPINION_WEIGHT:F

.field public SCORE_NEGATIVE_RELATION_BELOW_X_PENALTY:I

.field public SCORE_NEGATIVE_RELATION_BELOW_X_VALUE:I

.field public SCORE_NEGATIVE_RELATION_MODIFIER:F

.field public SCORE_NEGATIVE_RELIGION_DIFFERENT_GROUP_AND_RELIGION:I

.field public SCORE_NEGATIVE_RELIGION_SAME_GROUP:I

.field public SCORE_POSITIVE_DIFFERENT_GOVERNMENT:I

.field public SCORE_POSITIVE_DIFFERENT_RELIGION:I

.field public SCORE_POSITIVE_HRE:I

.field public SCORE_POSITIVE_RELATION_MODIFIER:F

.field public SCORE_POSITIVE_SAME_GOVERNMENT:I

.field public SCORE_POSITIVE_SAME_GOVERNMENT_GROUP:I

.field public SCORE_POSITIVE_SAME_RELIGION:I

.field public SCORE_POSITIVE_SAME_RELIGION_GROUP:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->COST_OFFER_ALLIANCE_DIPLOMACY_POINTS:I

    .line 6
    const/4 v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->COST_ALLIANCE_LEAVE:I

    .line 8
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_POSITIVE_HRE:I

    .line 9
    const v1, 0x3f03d70a  # 0.515f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_POSITIVE_RELATION_MODIFIER:F

    .line 11
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_POSITIVE_SAME_GOVERNMENT:I

    .line 12
    const/4 v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_POSITIVE_SAME_GOVERNMENT_GROUP:I

    .line 13
    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_POSITIVE_DIFFERENT_GOVERNMENT:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_POSITIVE_SAME_RELIGION:I

    .line 16
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_POSITIVE_SAME_RELIGION_GROUP:I

    .line 17
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_POSITIVE_DIFFERENT_RELIGION:I

    .line 19
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_RELATION_MODIFIER:F

    .line 20
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_RELATION_BELOW_X_VALUE:I

    .line 21
    const/4 v1, 0x5

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_RELATION_BELOW_X_PENALTY:I

    .line 23
    const/4 v3, -0x6

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_HRE_MEMBERSHIP_DIFFERENCE:I

    .line 25
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_GOVERNMENT_SAME_GROUP:I

    .line 26
    const/16 v3, -0xe

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_GOVERNMENT_DIFFERENT_GROUP_AND_GOVERNMENT:I

    .line 28
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_RELIGION_SAME_GROUP:I

    .line 29
    const/16 v2, -0x10

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_RELIGION_DIFFERENT_GROUP_AND_RELIGION:I

    .line 31
    const/high16 v2, 0x41200000  # 10.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_POWERFUL_ALLIES_ALLY_RANK_PENALTY_MULTIPLIER:F

    .line 32
    const/high16 v2, 0x41400000  # 12.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_POWERFUL_ALLIES_ALLY_RANK_PENALTY_LIMIT:F

    .line 34
    const v2, 0x3f370a3d  # 0.715f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_POWERFUL_ALLIES_OPINION_WEIGHT:F

    .line 36
    const/16 v2, -0xfa

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_CIV_AT_WAR:I

    .line 37
    const/16 v3, -0x3e8

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_EMBASSY_CLOSED:I

    .line 38
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_IS_VASSAL:I

    .line 40
    const/16 v2, 0xf

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_CORE_PENALTY_BASE:I

    .line 41
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_PER_EXTRA_CORE:I

    .line 42
    const/16 v1, 0x1e

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_CORE_PENALTY_MAX:I

    .line 44
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AllianceOffer;->SCORE_NEGATIVE_DISTANCE_MODIFIER:F

    return-void
.end method
