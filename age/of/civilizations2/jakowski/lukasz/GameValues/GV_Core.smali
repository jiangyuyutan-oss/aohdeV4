.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Core;
.super Ljava/lang/Object;
.source "GV_Core.java"


# instance fields
.field public NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE:I

.field public NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE_EXTRA_PER_CORE:I

.field public NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE_WITHOUT_ANY_CORE:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x28

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Core;->NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE:I

    .line 6
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Core;->NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE_EXTRA_PER_CORE:I

    .line 7
    const/16 v0, 0xf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Core;->NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE_WITHOUT_ANY_CORE:I

    return-void
.end method
