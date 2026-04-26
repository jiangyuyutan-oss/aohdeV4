.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipMilitaryAccess;
.super Ljava/lang/Object;
.source "GV_DipMilitaryAccess.java"


# instance fields
.field public COST_OFFER_MILITARY_ACCESS_ASK_DIPLOMACY_POINTS:I

.field public COST_OFFER_MILITARY_ACCESS_GIVE_DIPLOMACY_POINTS:I

.field public DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_MILITARY_ACCESS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipMilitaryAccess;->COST_OFFER_MILITARY_ACCESS_ASK_DIPLOMACY_POINTS:I

    .line 6
    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipMilitaryAccess;->COST_OFFER_MILITARY_ACCESS_GIVE_DIPLOMACY_POINTS:I

    .line 8
    const/16 v0, 0x4b

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipMilitaryAccess;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_MILITARY_ACCESS:I

    return-void
.end method
