.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipNonAggression;
.super Ljava/lang/Object;
.source "GV_DipNonAggression.java"


# instance fields
.field public COST_OFFER_NONAGGRESSION_PACT_DIPLOMACY_POINTS:I

.field public DIPLOMACY_MAX_NUMBER_OF_TURNS_NON_AGGRESSION_PACT:I

.field public NON_AGGRESSION_REQUESTS_RESPONSE:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipNonAggression;->COST_OFFER_NONAGGRESSION_PACT_DIPLOMACY_POINTS:I

    .line 7
    const/16 v0, 0x28

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipNonAggression;->DIPLOMACY_MAX_NUMBER_OF_TURNS_NON_AGGRESSION_PACT:I

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipNonAggression;->NON_AGGRESSION_REQUESTS_RESPONSE:Z

    return-void
.end method
