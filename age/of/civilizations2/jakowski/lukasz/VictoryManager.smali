.class public Lage/of/civilizations2/jakowski/lukasz/VictoryManager;
.super Ljava/lang/Object;
.source "VictoryManager.java"


# static fields
.field public static VICTORY_CONTROL_PROVINCES_PERC:I

.field public static VICTORY_LIMIT_OF_TURNS:I

.field public static VICTORY_TECHNOLOGY:F

.field public static controlProvinces_NumOfProvinces:I

.field public static domination_NumOfCivsInGame:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const/16 v0, 0x64

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    .line 10
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_LIMIT_OF_TURNS:I

    .line 12
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_TECHNOLOGY:F

    .line 55
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->domination_NumOfCivsInGame:I

    .line 88
    sput v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->controlProvinces_NumOfProvinces:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkVictoryConditions()V
    .registers 4

    .line 20
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->updateVictoryConditions()V

    .line 22
    sget v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_TECHNOLOGY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_49

    .line 23
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v0, v2, :cond_49

    .line 24
    sget v2, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_TECHNOLOGY:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_46

    .line 25
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v2

    const v3, 0x3c23d70a  # 0.01f

    add-float/2addr v2, v3

    sput v2, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_TECHNOLOGY:F

    .line 27
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_46

    .line 28
    sput v1, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_TECHNOLOGY:F

    .line 29
    goto :goto_49

    .line 23
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 36
    .end local v0  # "i":I
    :cond_49
    :goto_49
    sget v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_74

    .line 37
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_50
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 38
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->controlProvinces_GetCivScore(I)F

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_71

    .line 39
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->controlProvinces_GetCivScore(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    .line 37
    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 43
    .end local v0  # "i":I
    :cond_74
    return-void
.end method

.method public static final controlProvinces_GetCivScore(I)F
    .registers 3
    .param p0, "nCivID"  # I

    .line 101
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->controlProvinces_NumOfProvinces:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public static final controlProvinces_UpdateNumOfProvinces()V
    .registers 3

    .line 91
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->controlProvinces_NumOfProvinces:I

    .line 93
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 94
    sget v1, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->controlProvinces_NumOfProvinces:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->controlProvinces_NumOfProvinces:I

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 97
    .end local v0  # "i":I
    :cond_1e
    sget v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->controlProvinces_NumOfProvinces:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->controlProvinces_NumOfProvinces:I

    .line 98
    return-void
.end method

.method public static final domination_CivScore(I)I
    .registers 5
    .param p0, "nCivID"  # I

    .line 70
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v0

    if-gtz v0, :cond_17

    .line 71
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v0

    return v0

    .line 74
    :cond_17
    const/4 v0, 0x1

    .line 76
    .local v0, "out":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_28
    if-ltz v1, :cond_4d

    .line 77
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-lez v2, :cond_4a

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 76
    :cond_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 82
    .end local v1  # "i":I
    :cond_4d
    return v0
.end method

.method public static final domination_UpdateNumOfCivs()V
    .registers 3

    .line 58
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->domination_NumOfCivsInGame:I

    .line 60
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_21

    .line 61
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_1e

    .line 62
    sget v1, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->domination_NumOfCivsInGame:I

    add-int/2addr v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->domination_NumOfCivsInGame:I

    .line 60
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 66
    .end local v0  # "i":I
    :cond_21
    sget v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->domination_NumOfCivsInGame:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->domination_NumOfCivsInGame:I

    .line 67
    return-void
.end method

.method public static getDefault_VictoryTechnology()F
    .registers 1

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public static technology_BestCiv()I
    .registers 4

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "iBest":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 116
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-lez v2, :cond_31

    .line 117
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_30

    if-nez v0, :cond_31

    .line 118
    :cond_30
    move v0, v1

    .line 115
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    .end local v1  # "i":I
    :cond_34
    return v0
.end method

.method public static turnsLimit_TurnsLeft()I
    .registers 2

    .line 107
    sget v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_LIMIT_OF_TURNS:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final updateVictoryConditions()V
    .registers 0

    .line 48
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->domination_UpdateNumOfCivs()V

    .line 49
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->controlProvinces_UpdateNumOfProvinces()V

    .line 51
    return-void
.end method
