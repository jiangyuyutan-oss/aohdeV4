.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipCallToArms;
.super Ljava/lang/Object;
.source "GV_DipCallToArms.java"


# instance fields
.field public CALL_TO_ARMS_ACCEPT_RELATION_CHANGE:I

.field public CALL_TO_ARMS_DENY_INSULT_RELATION_CHANGE:I

.field public CALL_TO_ARMS_DENY_RELATION_CHANGE:I

.field public COST_CALL_TO_ARMS_DIPLOMACY_POINTS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipCallToArms;->COST_CALL_TO_ARMS_DIPLOMACY_POINTS:I

    .line 7
    const/16 v0, -0xf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipCallToArms;->CALL_TO_ARMS_DENY_RELATION_CHANGE:I

    .line 8
    const/16 v0, -0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipCallToArms;->CALL_TO_ARMS_DENY_INSULT_RELATION_CHANGE:I

    .line 9
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipCallToArms;->CALL_TO_ARMS_ACCEPT_RELATION_CHANGE:I

    return-void
.end method
