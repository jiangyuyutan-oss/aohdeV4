.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Alliance;
.super Ljava/lang/Object;
.source "GV_AI_Alliance.java"


# instance fields
.field public NEXT_ALLIANCE_CHECK_TURN_ID:I

.field public NEXT_ALLIANCE_CHECK_TURN_ID_RANDOM:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x22

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Alliance;->NEXT_ALLIANCE_CHECK_TURN_ID:I

    .line 6
    const/16 v0, 0x20

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Alliance;->NEXT_ALLIANCE_CHECK_TURN_ID_RANDOM:I

    return-void
.end method
