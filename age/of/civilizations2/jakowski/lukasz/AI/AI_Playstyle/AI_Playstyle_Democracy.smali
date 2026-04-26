.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Democracy;
.super Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;
.source "AI_Playstyle_Democracy.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;-><init>()V

    .line 10
    const-string v0, "DEMOCRACY"

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Democracy;->TAG:Ljava/lang/String;

    .line 12
    const v0, 0x3db851ec  # 0.09f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Democracy;->PERSONALITY_MIN_MILITARY_SPENDINGS_DEFAULT:F

    .line 13
    const/16 v0, 0xd

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Democracy;->PERSONALITY_MIN_MILITARY_SPENDINGS_RANDOM:I

    .line 15
    const/16 v0, 0x47

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Democracy;->PERSONALITY_MIN_HAPPINESS_DEFAULT:I

    .line 16
    const/16 v0, 0x18

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Democracy;->PERSONALITY_MIN_HAPPINESS_RANDOM:I

    .line 18
    const v0, 0x3f733333  # 0.95f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Democracy;->PERSONALITY_FORGIVENESS_DEFAULT:F

    .line 19
    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Democracy;->PERSONALITY_FORGIVENESS_RANDOM:I

    .line 20
    return-void
.end method
