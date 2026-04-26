.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ceasefire;
.super Ljava/lang/Object;
.source "GV_Ceasefire.java"


# instance fields
.field public CEASEFIRE_COOLDOWN:I

.field public CEASEFIRE_MIN_TURNS_OF_WAR:I

.field public CEASEFIRE_TURNS:I

.field public ENABLE_CEASEFIRE:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ceasefire;->ENABLE_CEASEFIRE:Z

    .line 7
    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ceasefire;->CEASEFIRE_COOLDOWN:I

    .line 9
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ceasefire;->CEASEFIRE_TURNS:I

    .line 11
    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ceasefire;->CEASEFIRE_MIN_TURNS_OF_WAR:I

    return-void
.end method
