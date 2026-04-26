.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;
.super Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;
.source "AI_Playstyle_Horde.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;-><init>()V

    .line 13
    const-string v0, "HORDE"

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->TAG:Ljava/lang/String;

    .line 15
    const v0, 0x3e6147ae  # 0.22f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_MIN_MILITARY_SPENDINGS_DEFAULT:F

    .line 16
    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_MIN_MILITARY_SPENDINGS_RANDOM:I

    .line 18
    const/high16 v0, 0x420c0000  # 35.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY_DEFAULT:F

    .line 19
    const/16 v0, 0x37

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY_RANDOM:I

    .line 21
    const/16 v0, 0x3c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_MIN_HAPPINESS_DEFAULT:I

    .line 22
    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_MIN_HAPPINESS_RANDOM:I

    .line 24
    const/high16 v0, 0x3fc00000  # 1.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_FORGIVENESS_DEFAULT:F

    .line 25
    const/16 v0, 0x32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_FORGIVENESS_RANDOM:I

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_PLUNDER_MIN:I

    .line 28
    const/16 v0, 0x145

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_PLUNDER_RANDOM:I

    .line 29
    const/16 v0, 0x23

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_PLUNDER_LOCK:I

    .line 31
    const v0, 0x3ee66666  # 0.45f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_MIN_AGGRESSION_DEFAULT:F

    .line 32
    const/16 v0, 0x2ee0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AI_Playstyle_Horde;->PERSONALITY_MIN_AGGRESSION_RANDOM_100:I

    .line 33
    return-void
.end method


# virtual methods
.method public buildStartingBuildings(I)V
    .registers 6
    .param p1, "nCivID"  # I

    .line 39
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->buildStartingBuildings(I)V

    .line 42
    :try_start_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v0

    if-ltz v0, :cond_52

    .line 43
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getArmoury_TechLevel(I)F

    move-result v2

    const v3, 0x3f70a3d7  # 0.94f

    mul-float v2, v2, v3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_52

    .line 44
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfArmoury()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLvlOfArmoury(I)V
    :try_end_52
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_52} :catch_53

    .line 51
    :cond_52
    goto :goto_5b

    .line 47
    :catch_53
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_5b

    .line 49
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 52
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_5b
    :goto_5b
    return-void
.end method
