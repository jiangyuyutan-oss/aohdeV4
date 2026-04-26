.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;
.super Ljava/lang/Object;
.source "GV_VassalLiberty.java"


# instance fields
.field public BASE_LIBERTY_HIGH_MULTIPLIER_PERC:F

.field public BASE_PROVINCE_LIBERTY_INCREASE:F

.field public BASE_RELATION_LIBERTY_LOW_INCREASE:F

.field public BASE_TRIBUTE_HIGH_LIBERTY_INCREASE:F

.field public BASE_TRIBUTE_LOW_LIBERTY_DECREASE:F

.field public LIBERTY_CHANGE_JUST_INFO_RANDOM_MODIFIER:F

.field public MESSAGE_THE_PLAYER_IF_LIBERTY_OVER:F

.field public PASSIVE_LIBERTY_DECAY_PERC:F

.field public PROVINCE_RATIO_MULTIPLIER:F

.field public PROVINCE_RATIO_THRESHOLD:F

.field public RANDOM_PROVINCE_LIBERTY_MAX_1000:I

.field public RANDOM_TRIBUTE_HIGH_LIBERTY_100:I

.field public RANDOM_TRIBUTE_LOW_LIBERTY_DECREASE_100:I

.field public RELATION_NEGATIVE_THRESHOLD:I

.field public SEND_VASSALS_HIGH_LIBERTY_MESSAGE_EVERY_X_TURNS:I

.field public TRIBUTE_LOW_THRESHOLD_MULTIPLIER:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3f8ccccd  # 1.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->PROVINCE_RATIO_THRESHOLD:F

    .line 6
    const v0, 0x3ed9999a  # 0.425f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->BASE_PROVINCE_LIBERTY_INCREASE:F

    .line 7
    const/16 v0, 0x339

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->RANDOM_PROVINCE_LIBERTY_MAX_1000:I

    .line 8
    const v0, 0x3f59999a  # 0.85f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->PROVINCE_RATIO_MULTIPLIER:F

    .line 10
    const v0, 0x3c23d70a  # 0.01f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->BASE_LIBERTY_HIGH_MULTIPLIER_PERC:F

    .line 11
    const v1, 0x3ea66666  # 0.325f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->BASE_TRIBUTE_HIGH_LIBERTY_INCREASE:F

    .line 12
    const/16 v1, 0x64

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->RANDOM_TRIBUTE_HIGH_LIBERTY_100:I

    .line 14
    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->TRIBUTE_LOW_THRESHOLD_MULTIPLIER:F

    .line 15
    const v1, 0x3d99999a  # 0.075f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->BASE_TRIBUTE_LOW_LIBERTY_DECREASE:F

    .line 16
    const/16 v1, 0x7d

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->RANDOM_TRIBUTE_LOW_LIBERTY_DECREASE_100:I

    .line 18
    const/16 v1, -0x14

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->RELATION_NEGATIVE_THRESHOLD:I

    .line 19
    const v1, 0x401b3333  # 2.425f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->BASE_RELATION_LIBERTY_LOW_INCREASE:F

    .line 21
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->PASSIVE_LIBERTY_DECAY_PERC:F

    .line 23
    const/high16 v0, 0x42440000  # 49.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->MESSAGE_THE_PLAYER_IF_LIBERTY_OVER:F

    .line 25
    const/high16 v0, 0x3f400000  # 0.75f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->LIBERTY_CHANGE_JUST_INFO_RANDOM_MODIFIER:F

    .line 27
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->SEND_VASSALS_HIGH_LIBERTY_MESSAGE_EVERY_X_TURNS:I

    return-void
.end method
