.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;
.super Ljava/lang/Object;
.source "GV_GoldenAge.java"


# instance fields
.field public GOLDEN_AGE_MILITARY_DECAY_PER_UPDATE:F

.field public GOLDEN_AGE_MILITARY_PROGRESS_MODIFIER:F

.field public GOLDEN_AGE_MILITARY_UPDATE_TURN:I

.field public GOLDEN_AGE_MIN_NUM_OF_CIVS:I

.field public GOLDEN_AGE_PROSPERITY_DECAY_PER_UPDATE:F

.field public GOLDEN_AGE_PROSPERITY_PROGRESS_MODIFIER:F

.field public GOLDEN_AGE_PROSPERITY_UPDATE_TURN:I

.field public GOLDEN_AGE_SCIENCE_DECAY_PER_UPDATE:F

.field public GOLDEN_AGE_SCIENCE_PROGRESS_MODIFIER:F

.field public GOLDEN_AGE_SCIENCE_UPDATE_TURN:I

.field public GOLDEN_AGE_UPDATE_EVERY_X_TURNS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_UPDATE_EVERY_X_TURNS:I

    .line 7
    const/4 v0, 0x7

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_MIN_NUM_OF_CIVS:I

    .line 9
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_SCIENCE_UPDATE_TURN:I

    .line 10
    const/16 v0, 0xf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_MILITARY_UPDATE_TURN:I

    .line 11
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_PROSPERITY_UPDATE_TURN:I

    .line 13
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_SCIENCE_PROGRESS_MODIFIER:F

    .line 14
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_MILITARY_PROGRESS_MODIFIER:F

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_PROSPERITY_PROGRESS_MODIFIER:F

    .line 17
    const v0, 0x3e99999a  # 0.3f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_SCIENCE_DECAY_PER_UPDATE:F

    .line 18
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_MILITARY_DECAY_PER_UPDATE:F

    .line 19
    const v0, 0x3e19999a  # 0.15f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_GoldenAge;->GOLDEN_AGE_PROSPERITY_DECAY_PER_UPDATE:F

    return-void
.end method
