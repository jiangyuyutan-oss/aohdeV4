.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipGuarantee;
.super Ljava/lang/Object;
.source "GV_DipGuarantee.java"


# instance fields
.field public DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_GUARANTEE:I

.field public GUARANTEE_REQUESTS_RESPONSE:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipGuarantee;->DIPLOMACY_MAX_NUMBER_OF_TURNS_FOR_GUARANTEE:I

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DipGuarantee;->GUARANTEE_REQUESTS_RESPONSE:Z

    return-void
.end method
