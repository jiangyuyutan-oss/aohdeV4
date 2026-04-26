.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipDefensivePact;
.super Ljava/lang/Object;
.source "GV_DipDefensivePact.java"


# instance fields
.field public COST_OFFER_DEFENSIVE_PACT_DIPLOMACY_POINTS:I

.field public DEFENSIVE_PACT_REQUESTS_RESPONSE:Z

.field public DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_DEFENSIVE_PACT:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipDefensivePact;->COST_OFFER_DEFENSIVE_PACT_DIPLOMACY_POINTS:I

    .line 7
    const/16 v0, 0x28

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipDefensivePact;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_DEFENSIVE_PACT:I

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipDefensivePact;->DEFENSIVE_PACT_REQUESTS_RESPONSE:Z

    return-void
.end method
