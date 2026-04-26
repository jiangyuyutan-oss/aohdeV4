.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;
.super Ljava/lang/Object;
.source "GV_Gift.java"


# instance fields
.field public COST_OFFER_GIFT_DIPLOMACY_POINTS:I

.field public GIFT_INFO_EXPIRATION_TURNS:I

.field public GIFT_LIBERTY_DESIRE_DECREASE_MAX:F

.field public GIFT_LIBERTY_DESIRE_DECREASE_MIN:F

.field public GIFT_MAX_PERC_OF_TREASURY:F

.field public GIFT_PLAYER_RESPONSE_TIME_IN_TURNS:I

.field public GIFT_REFUSE_OPINION_CHANGE:I

.field public GIFT_REQUEST_RESPONSE:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;->COST_OFFER_GIFT_DIPLOMACY_POINTS:I

    .line 7
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;->GIFT_MAX_PERC_OF_TREASURY:F

    .line 8
    const/4 v1, 0x5

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;->GIFT_INFO_EXPIRATION_TURNS:I

    .line 10
    const/4 v1, 0x2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;->GIFT_PLAYER_RESPONSE_TIME_IN_TURNS:I

    .line 12
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;->GIFT_LIBERTY_DESIRE_DECREASE_MIN:F

    .line 13
    const/high16 v0, 0x41200000  # 10.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;->GIFT_LIBERTY_DESIRE_DECREASE_MAX:F

    .line 14
    const/4 v0, -0x8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;->GIFT_REFUSE_OPINION_CHANGE:I

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Gift;->GIFT_REQUEST_RESPONSE:Z

    return-void
.end method
