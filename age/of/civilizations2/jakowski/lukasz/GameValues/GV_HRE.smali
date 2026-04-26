.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;
.super Ljava/lang/Object;
.source "GV_HRE.java"


# instance fields
.field public MAX_INVITED_CIVS:I

.field public REQUIRED_RELATION:I

.field public REQUIRED_RELATION_JOIN:I

.field public UNITE_CIVS_BELOW:I

.field public VOTE_SCORE_ELECTOR_ON_YOURSELF:I

.field public VOTE_SCORE_IS_VASSAL:I

.field public VOTE_SCORE_PROVINCES_BASE:F

.field public VOTE_SCORE_PROVINCES_RELATION:F

.field public VOTE_SCORE_RANK_BASE:F

.field public VOTE_SCORE_RANK_RELATION:F

.field public VOTE_SCORE_RELATIONS:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->VOTE_SCORE_ELECTOR_ON_YOURSELF:I

    .line 6
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->VOTE_SCORE_RELATIONS:I

    .line 8
    const v1, 0x3ecccccd  # 0.4f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->VOTE_SCORE_PROVINCES_BASE:F

    .line 9
    const v1, 0x3f19999a  # 0.6f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->VOTE_SCORE_PROVINCES_RELATION:F

    .line 11
    const v1, 0x3f0ccccd  # 0.55f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->VOTE_SCORE_RANK_BASE:F

    .line 12
    const v1, 0x3ee66666  # 0.45f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->VOTE_SCORE_RANK_RELATION:F

    .line 14
    const/16 v1, -0x1f4

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->VOTE_SCORE_IS_VASSAL:I

    .line 16
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->UNITE_CIVS_BELOW:I

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->MAX_INVITED_CIVS:I

    .line 19
    const/16 v0, 0x3c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->REQUIRED_RELATION:I

    .line 20
    const/16 v0, 0x55

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_HRE;->REQUIRED_RELATION_JOIN:I

    return-void
.end method
