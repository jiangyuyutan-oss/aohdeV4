.class public Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;
.super Ljava/lang/Object;
.source "IdeologiesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;,
        Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    }
.end annotation


# static fields
.field public static MAX_CROWN_WIDTH:I


# instance fields
.field public REBELS_ID:I

.field private lIdeologies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Ideology;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->MAX_CROWN_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->REBELS_ID:I

    return-void
.end method

.method public static final getChangeGovernmentCost(I)I
    .registers 6
    .param p0, "nCivID"  # I

    .line 41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGovernment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;->CHANGE_GOV_BASE_COST_MULTIPLIER:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGovernment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;->CHANGE_GOV_TECH_LEVEL_COST_MULTIPLIER:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGovernment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;->CHANGE_GOV_PROVINCE_COST_MULTIPLIER:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGovernment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;->CHANGE_GOV_MAX_PROVINCES_FOR_COST:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final getChangeReligionCost(I)I
    .registers 6
    .param p0, "nCivID"  # I

    .line 45
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGovernment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;->CHANGE_GOV_BASE_COST_MULTIPLIER:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGovernment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;->CHANGE_GOV_TECH_LEVEL_COST_MULTIPLIER:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGovernment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;->CHANGE_GOV_PROVINCE_COST_MULTIPLIER:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGovernment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;->CHANGE_GOV_MAX_PROVINCES_FOR_COST:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGovernment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Government;->CHANGE_RELIGION_COST_MODIFIER:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public canBeAdded(II)Z
    .registers 8
    .param p1, "nCivID"  # I
    .param p2, "nIdeologyID"  # I

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "tTag":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 778
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_46

    .line 779
    return v3

    .line 782
    :cond_46
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_47
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTagsCanFormCSize()I

    move-result v4

    if-ge v2, v4, :cond_67

    .line 783
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTagsCanFormC(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 784
    return v3

    .line 782
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 777
    .end local v2  # "j":I
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 789
    .end local v1  # "i":I
    :cond_6a
    const/4 v1, 0x1

    return v1
.end method

.method public canChangeToIdeology(I)Ljava/util/List;
    .registers 7
    .param p1, "nCivID"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologiesSize()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 796
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_21

    .line 797
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 799
    :cond_21
    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->AVAILABLE_SINCE_AGE_ID:I

    if-ge v2, v4, :cond_35

    .line 800
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 802
    :cond_35
    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->canBeAdded(II)Z

    move-result v2

    if-nez v2, :cond_43

    .line 803
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 805
    :cond_43
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->REBELS_ID:I

    if-ne v1, v2, :cond_4f

    .line 806
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 809
    :cond_4f
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 813
    .end local v1  # "i":I
    :cond_5a
    return-object v0
.end method

.method public canChangeToIdeology_All()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologiesSize()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 820
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 823
    .end local v1  # "i":I
    :cond_17
    return-object v0
.end method

.method public getAcceptableTaxation(II)F
    .registers 6
    .param p1, "ideologyID"  # I
    .param p2, "civID"  # I

    .line 678
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->ACCEPTABLE_TAXATION:F

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ACCEPTABLE_TAXATION:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    aget v1, v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->modifierAcceptableTaxation_CivID(I)F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3c23d70a  # 0.01f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getAdministration(II)F
    .registers 6
    .param p1, "ideologyID"  # I
    .param p2, "civID"  # I

    .line 690
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ADMINISTRATION_COST:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    aget v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getChangeAdministrationPolicyCost(I)I
    .registers 5
    .param p1, "civID"  # I

    .line 702
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->CHANGE_COST_INCOME_TAXATION_PERC:F

    mul-float v0, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->CHANGE_COST_INCOME_PRODUCTION_PERC:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getHover_AdministrationPolicy(II)Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;
    .registers 16
    .param p1, "policyID"  # I
    .param p2, "civID"  # I

    .line 706
    const-string v0, "%"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v1, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v2, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    const/4 v3, 0x0

    if-lez p2, :cond_19

    .line 710
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v4, p2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_19
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v7, "AdministrationPolicy"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_NAME:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->gov:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v4, v5, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image_Big;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 718
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 724
    :try_start_7c
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v8, "AcceptableTaxation"

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ACCEPTABLE_TAXATION:[F

    aget v7, v7, p1
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_aa} :catch_380

    const-string v8, "+"

    const-string v9, ""

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-lez v7, :cond_b5

    move-object v7, v8

    goto :goto_b6

    :cond_b5
    move-object v7, v9

    :goto_b6
    :try_start_b6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ACCEPTABLE_TAXATION:[F

    aget v7, v7, p1

    const/high16 v11, 0x42c80000  # 100.0f

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v4, v5, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 730
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "Goods"

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_GOODS:[F

    aget v7, v7, p1

    cmpl-float v7, v7, v10

    if-lez v7, :cond_126

    move-object v7, v8

    goto :goto_127

    :cond_126
    move-object v7, v9

    :goto_127
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_GOODS:[F

    aget v7, v7, p1

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->goods:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v4, v5, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 736
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "Investments"

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_INVESTMENTS:[F

    aget v7, v7, p1

    cmpl-float v7, v7, v10

    if-lez v7, :cond_193

    move-object v7, v8

    goto :goto_194

    :cond_193
    move-object v7, v9

    :goto_194
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_INVESTMENTS:[F

    aget v7, v7, p1

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->development:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v4, v5, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 742
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "ResearchCost"

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_RESEARCH_COST:[F

    aget v7, v7, p1

    cmpl-float v7, v7, v10

    if-lez v7, :cond_200

    move-object v7, v8

    goto :goto_201

    :cond_200
    move-object v7, v9

    :goto_201
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_RESEARCH_COST:[F

    aget v7, v7, p1

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v4, v5, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 748
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "AdministrationCost"

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ADMINISTRATION_COST:[F

    aget v7, v7, p1

    cmpl-float v7, v7, v10

    if-lez v7, :cond_26d

    move-object v7, v8

    goto :goto_26e

    :cond_26d
    move-object v7, v9

    :goto_26e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_ADMINISTRATION_COST:[F

    aget v7, v7, p1

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->administration:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v4, v5, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 754
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "IncomeProduction"

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_INCOME_PRODUCTION:[F

    aget v7, v7, p1

    cmpl-float v7, v7, v10

    if-lez v7, :cond_2da

    move-object v7, v8

    goto :goto_2db

    :cond_2da
    move-object v7, v9

    :goto_2db
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_INCOME_PRODUCTION:[F

    aget v7, v7, p1

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v4, v5, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 760
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "MilitaryUpkeep"

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MILITARY_UPKEEP:[F

    aget v6, v6, p1

    cmpl-float v6, v6, v10

    if-lez v6, :cond_346

    goto :goto_347

    :cond_346
    move-object v8, v9

    :goto_347
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MILITARY_UPKEEP:[F

    aget v6, v6, p1

    mul-float v6, v6, v11

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v0, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmy:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v0, v4, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_37f
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_37f} :catch_380

    .line 767
    goto :goto_384

    .line 765
    :catch_380
    move-exception v0

    .line 766
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 769
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_384
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getIdeologiesSize()I
    .registers 2

    .line 829
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getIdeologyHover(I)Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;
    .registers 16
    .param p1, "nCivID"  # I

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;

    invoke-direct {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Flag_Big;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "Government"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Ideology_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    const/4 v7, 0x0

    if-ltz v6, :cond_87

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    goto :goto_88

    :cond_87
    const/4 v6, 0x0

    :goto_88
    invoke-direct {v2, v3, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Ideology_Big;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v2, :cond_b6

    .line 454
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "Uncivilized"

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_b6
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 460
    :try_start_c1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DESC:Ljava/lang/String;

    if-eqz v2, :cond_125

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DESC:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_125

    .line 461
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 465
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_TextDesc;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DESC:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_TextDesc;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_125} :catch_126

    .line 471
    :cond_125
    goto :goto_127

    .line 469
    :catch_126
    move-exception v2

    .line 473
    :goto_127
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 478
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v6, "AcceptableTaxation"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    const/high16 v8, 0x42c80000  # 100.0f

    mul-float v6, v6, v8

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v9}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v3

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v9, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 484
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v10, "Goods"

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v9

    invoke-virtual {p0, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v9

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v9

    mul-float v9, v9, v8

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v9}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->goods:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v9, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 490
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v10, "Investments"

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v9

    invoke-virtual {p0, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v9

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_INVESTMENTS:F

    mul-float v9, v9, v8

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v9}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->development:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v9, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 496
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 500
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    const/high16 v3, 0x3f800000  # 1.0f

    const-string v9, "+"

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_34f

    .line 501
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "IncomeTaxation"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_2ee

    move-object v11, v9

    goto :goto_2ef

    :cond_2ee
    move-object v11, v5

    :goto_2ef
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_32e

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_330

    :cond_32e
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    :goto_330
    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v10

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 508
    :cond_34f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_403

    .line 509
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "IncomeProduction"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_3a4

    move-object v11, v9

    goto :goto_3a5

    :cond_3a4
    move-object v11, v5

    :goto_3a5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_3e4

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3e6

    :cond_3e4
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    :goto_3e6
    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 516
    :cond_403
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4b7

    .line 517
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "AdministrationCost"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_458

    move-object v11, v9

    goto :goto_459

    :cond_458
    move-object v11, v5

    :goto_459
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_498

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_49a

    :cond_498
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_49a
    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->administration:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 524
    :cond_4b7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_56b

    .line 525
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "ResearchCost"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_50c

    move-object v11, v9

    goto :goto_50d

    :cond_50c
    move-object v11, v5

    :goto_50d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_54c

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_54e

    :cond_54c
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_54e
    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 532
    :cond_56b
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "CostOfMove"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    int-to-float v11, v11

    const/high16 v12, 0x41200000  # 10.0f

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_MOVEMENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->topMovementPoints:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 538
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v13, "CostOfRecruit"

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    int-to-float v11, v11

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_MOVEMENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->topMovementPoints:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 544
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6eb

    .line 545
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v11, "MilitaryUpkeep"

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v10

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    mul-float v10, v10, v8

    float-to-int v10, v10

    add-int/lit8 v10, v10, -0x64

    if-lez v10, :cond_68c

    move-object v10, v9

    goto :goto_68d

    :cond_68c
    move-object v10, v5

    :goto_68d
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v10

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    mul-float v10, v10, v8

    float-to-int v10, v10

    add-int/lit8 v10, v10, -0x64

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v10

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    mul-float v10, v10, v8

    float-to-int v8, v10

    add-int/lit8 v8, v8, -0x64

    if-lez v8, :cond_6cc

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_6ce

    :cond_6cc
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_6ce
    invoke-direct {v2, v3, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmy:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v8, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 552
    :cond_6eb
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v10, "DefenseBonus"

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    if-lez v4, :cond_726

    move-object v5, v9

    :cond_726
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    if-lez v4, :cond_75b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_772

    :cond_75b
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    if-nez v4, :cond_770

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_772

    :cond_770
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    :goto_772
    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmy:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v4, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 558
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public final getIdeologyHover_Just(I)Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;
    .registers 16
    .param p1, "nIdeologyID"  # I

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type;>;"
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "Government"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Ideology_Big;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    const/4 v6, 0x0

    if-ltz v5, :cond_57

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    goto :goto_58

    :cond_57
    const/4 v5, 0x0

    :goto_58
    invoke-direct {v2, p1, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Ideology_Big;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v2, :cond_7c

    .line 569
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "Uncivilized"

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text_Big;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_7c
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 575
    :try_start_87
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DESC:Ljava/lang/String;

    if-eqz v2, :cond_cd

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DESC:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_cd

    .line 576
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 580
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_TextDesc;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DESC:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_TextDesc;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_cd} :catch_ce

    .line 586
    :cond_cd
    goto :goto_cf

    .line 584
    :catch_ce
    move-exception v2

    .line 588
    :goto_cf
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 593
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v7, "AcceptableTaxation"

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    const/high16 v8, 0x42c80000  # 100.0f

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v9}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v3

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v9, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 599
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v10, "Goods"

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods()F

    move-result v9

    mul-float v9, v9, v8

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v9}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->goods:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v9, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 605
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v10, "Investments"

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v9

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_INVESTMENTS:F

    mul-float v9, v9, v8

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v9}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->development:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v9, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 611
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Space;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 615
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    const/high16 v3, 0x3f800000  # 1.0f

    const-string v9, "+"

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2b1

    .line 616
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "IncomeTaxation"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_264

    move-object v11, v9

    goto :goto_265

    :cond_264
    move-object v11, v5

    :goto_265
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_290

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_292

    :cond_290
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    :goto_292
    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v10

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 623
    :cond_2b1
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_33d

    .line 624
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "IncomeProduction"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_2f2

    move-object v11, v9

    goto :goto_2f3

    :cond_2f2
    move-object v11, v5

    :goto_2f3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_31e

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_320

    :cond_31e
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    :goto_320
    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 631
    :cond_33d
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3c9

    .line 632
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "AdministrationCost"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_37e

    move-object v11, v9

    goto :goto_37f

    :cond_37e
    move-object v11, v5

    :goto_37f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_3aa

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3ac

    :cond_3aa
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_3ac
    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->administration:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 639
    :cond_3c9
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_455

    .line 640
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "ResearchCost"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_40a

    move-object v11, v9

    goto :goto_40b

    :cond_40a
    move-object v11, v5

    :goto_40b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    mul-float v11, v11, v8

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x64

    if-lez v11, :cond_436

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_438

    :cond_436
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_438
    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 647
    :cond_455
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v12, "CostOfMove"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    int-to-float v11, v11

    const/high16 v12, 0x41200000  # 10.0f

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_MOVEMENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->topMovementPoints:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 653
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v13, "CostOfRecruit"

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    int-to-float v11, v11

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_MOVEMENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->topMovementPoints:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmy:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v10, v11, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 660
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5a5

    .line 661
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v11, "MilitaryUpkeep"

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    mul-float v10, v10, v8

    float-to-int v10, v10

    add-int/lit8 v10, v10, -0x64

    if-lez v10, :cond_55a

    move-object v10, v9

    goto :goto_55b

    :cond_55a
    move-object v10, v5

    :goto_55b
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    mul-float v10, v10, v8

    float-to-int v10, v10

    add-int/lit8 v10, v10, -0x64

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    mul-float v10, v10, v8

    float-to-int v8, v10

    add-int/lit8 v8, v8, -0x64

    if-lez v8, :cond_586

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_588

    :cond_586
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_588
    invoke-direct {v2, v3, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diploArmy:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v8, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 668
    :cond_5a5
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v10, "DefenseBonus"

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    if-lez v4, :cond_5d6

    move-object v5, v9

    :cond_5d6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    if-lez v4, :cond_5f7

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_604

    :cond_5f7
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    if-nez v4, :cond_602

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_604

    :cond_602
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    :goto_604
    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->defense:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-direct {v2, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_2Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/MEHover_2E;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 674
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public final getIdeologyID(Ljava/lang/String;)I
    .registers 6
    .param p1, "nCivTag"  # Ljava/lang/String;

    .line 425
    const/16 v0, 0x5f

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 427
    .local v0, "lastUnderscore":I
    if-lez v0, :cond_31

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 428
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "ideologyTag":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologiesSize()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 431
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_32

    if-eqz v3, :cond_2e

    .line 433
    return v2

    .line 430
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 439
    .end local v0  # "lastUnderscore":I
    .end local v1  # "ideologyTag":Ljava/lang/String;
    .end local v2  # "i":I
    :cond_31
    goto :goto_36

    .line 437
    :catch_32
    move-exception v0

    .line 438
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 441
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_36
    const/4 v0, 0x0

    return v0
.end method

.method public final getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;
    .registers 3
    .param p1, "i"  # I

    .line 834
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;

    return-object v0
.end method

.method public getIncomeProduction(II)F
    .registers 6
    .param p1, "ideologyID"  # I
    .param p2, "civID"  # I

    .line 694
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_INCOME_PRODUCTION:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    aget v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getInvestments(II)F
    .registers 6
    .param p1, "ideologyID"  # I
    .param p2, "civID"  # I

    .line 682
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_INVESTMENTS:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MIN_INVESTMENTS:F

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MIN_INVESTMENTS:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    aget v1, v1, v2

    add-float/2addr v0, v1

    const v1, 0x3c23d70a  # 0.01f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getMilitaryUpkeep(II)F
    .registers 6
    .param p1, "ideologyID"  # I
    .param p2, "civID"  # I

    .line 698
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->MILITARY_UPKEEP:F

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_MILITARY_UPKEEP:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    aget v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final getRealTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "sIn"  # Ljava/lang/String;

    .line 395
    const/16 v0, 0x5f

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_12

    .line 396
    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_11} :catch_13

    return-object v0

    .line 400
    :cond_12
    goto :goto_14

    .line 398
    :catch_13
    move-exception v0

    .line 402
    :goto_14
    return-object p1
.end method

.method public getResearch(II)F
    .registers 6
    .param p1, "ideologyID"  # I
    .param p2, "civID"  # I

    .line 686
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->religionManager:Lage/of/civilizations2/jakowski/lukasz/ReligionManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->getReligion(I)Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/ReligionManager$Religion;->RESEARCH_COST:F

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministrationPolicy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_AdministrationPolicy;->POLICY_RESEARCH_COST:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->policyID:I

    aget v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final loadIdeologies()V
    .registers 66

    .line 101
    move-object/from16 v1, p0

    const-string v2, "game/Governments.json"

    const-string v3, "/"

    const-string v4, "Government"

    const-string v5, "_"

    const-string v6, ""

    const-string v7, ".json"

    const-string v8, "Governments"

    const-string v9, "game/"

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    if-eqz v10, :cond_19

    .line 102
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 104
    :cond_19
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    .line 107
    const/4 v10, 0x0

    .line 109
    .local v10, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_21
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v11

    if-eqz v11, :cond_152

    .line 110
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_28
    sget v12, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I

    if-ge v11, v12, :cond_e0

    .line 111
    sget-boolean v12, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v12, :cond_86

    .line 112
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v12

    if-eqz v12, :cond_dc

    .line 113
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    move-object v10, v12

    .line 115
    goto :goto_e0

    .line 119
    :cond_86
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v12

    if-eqz v12, :cond_dc

    .line 120
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    move-object v10, v12

    .line 122
    goto :goto_e0

    .line 110
    :cond_dc
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_28

    .line 127
    .end local v11  # "i":I
    :cond_e0
    :goto_e0
    const/4 v11, 0x0

    .restart local v11  # "i":I
    :goto_e1
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_152

    .line 130
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v14}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v12

    if-eqz v12, :cond_14f

    .line 131
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v14}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    move-object v10, v12

    .line 133
    goto :goto_152

    .line 127
    :cond_14f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e1

    .line 138
    .end local v11  # "i":I
    :cond_152
    :goto_152
    if-nez v10, :cond_159

    .line 139
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    move-object v10, v11

    .line 142
    :cond_159
    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, "fileContent":Ljava/lang/String;
    new-instance v12, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v12}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 146
    .local v12, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    const-class v14, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;

    invoke-virtual {v12, v13, v4, v14}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 147
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;-><init>()V

    .line 148
    .local v13, "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    const-class v14, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    invoke-virtual {v12, v14, v11}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    move-object v13, v14

    .line 150
    iget-object v14, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;->Government:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_17d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_287

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 151
    .local v15, "e":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    :try_end_18b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_21 .. :try_end_18b} :catch_2a0

    move-object/from16 v17, v16

    .line 153
    .local v17, "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    move-object/from16 v16, v6

    :try_start_18f
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    move-object/from16 v48, v10

    .end local v10  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v48, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-object/from16 v49, v11

    .end local v11  # "fileContent":Ljava/lang/String;
    .local v49, "fileContent":Ljava/lang/String;
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v50, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v13

    .end local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .local v12, "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .local v17, "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .local v50, "json":Lcom/badlogic/gdx/utils/Json;
    iget-object v13, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    iget-object v11, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1c3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v11

    goto :goto_1c5

    :cond_1c3
    move-object/from16 v20, v16

    :goto_1c5
    iget v11, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->R:I

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->G:I

    move-object/from16 v51, v14

    iget v14, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->B:I

    move-object/from16 v52, v15

    .end local v15  # "e":Ljava/lang/Object;
    .local v52, "e":Ljava/lang/Object;
    iget v15, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MIN_GOODS:F
    :try_end_1d1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_18f .. :try_end_1d1} :catch_27d

    move-object/from16 v53, v2

    :try_start_1d3
    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MIN_INVESTMENTS:F
    :try_end_1d5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1d3 .. :try_end_1d5} :catch_27b

    move-object/from16 v54, v3

    :try_start_1d7
    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE:I

    iget v1, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE_TO_THE_SAME_PROV:I
    :try_end_1db
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1d7 .. :try_end_1db} :catch_279

    move-object/from16 v55, v5

    :try_start_1dd
    iget v5, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE_OWN_PROV:I
    :try_end_1df
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1dd .. :try_end_1df} :catch_275

    move-object/from16 v56, v4

    :try_start_1e1
    iget v4, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->RESEARCH_COST:F
    :try_end_1e3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1e1 .. :try_end_1e3} :catch_273

    move-object/from16 v57, v7

    :try_start_1e5
    iget v7, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ACCEPTABLE_TAXATION:F
    :try_end_1e7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1e5 .. :try_end_1e7} :catch_271

    move-object/from16 v58, v8

    :try_start_1e9
    iget v8, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DEFENSE_BONUS:I
    :try_end_1eb
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1e9 .. :try_end_1eb} :catch_26f

    move-object/from16 v59, v9

    :try_start_1ed
    iget v9, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MILITARY_UPKEEP:F

    move-object/from16 v60, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST:F

    move/from16 v33, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST_DISTANCE:F

    move/from16 v34, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->INCOME_TAXATION:F

    move/from16 v35, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->INCOME_PRODUCTION:F

    move/from16 v36, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_RECRUIT:I

    move/from16 v37, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_DISBAND:I

    move/from16 v38, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_PLUNDER:I

    move/from16 v39, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->CAN_BECOME_CIVILIZED:I

    move/from16 v40, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->AVAILABLE_SINCE_AGE_ID:I

    move/from16 v41, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST_CAPITAL:F

    move/from16 v42, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->CIVILIZE_TECH_LEVEL:F

    move/from16 v43, v6

    iget-object v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->AI_TYPE:Ljava/lang/String;

    move-object/from16 v44, v6

    iget-boolean v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->REVOLUTIONARY:Z

    move/from16 v45, v6

    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->GOV_GROUP_ID:I

    move/from16 v46, v6

    iget-object v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DESC:Ljava/lang/String;

    move-object/from16 v18, v10

    move/from16 v21, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v1

    move/from16 v28, v5

    move/from16 v29, v4

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v47, v6

    invoke-direct/range {v18 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Ideology;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFIIIFFIFFFFFIIIIIFFLjava/lang/String;ZILjava/lang/String;)V

    move-object/from16 v1, v60

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1ed .. :try_end_24f} :catch_26d

    .line 170
    move-object/from16 v1, p0

    move-object/from16 v6, v16

    move-object/from16 v13, v17

    move-object/from16 v10, v48

    move-object/from16 v11, v49

    move-object/from16 v12, v50

    move-object/from16 v14, v51

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move-object/from16 v5, v55

    move-object/from16 v4, v56

    move-object/from16 v7, v57

    move-object/from16 v8, v58

    move-object/from16 v9, v59

    .end local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .end local v52  # "e":Ljava/lang/Object;
    goto/16 :goto_17d

    .line 171
    .end local v17  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v48  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v49  # "fileContent":Ljava/lang/String;
    .end local v50  # "json":Lcom/badlogic/gdx/utils/Json;
    :catch_26d
    move-exception v0

    goto :goto_2b1

    :catch_26f
    move-exception v0

    goto :goto_2af

    :catch_271
    move-exception v0

    goto :goto_2ad

    :catch_273
    move-exception v0

    goto :goto_2ab

    :catch_275
    move-exception v0

    move-object/from16 v56, v4

    goto :goto_2ab

    :catch_279
    move-exception v0

    goto :goto_282

    :catch_27b
    move-exception v0

    goto :goto_280

    :catch_27d
    move-exception v0

    move-object/from16 v53, v2

    :goto_280
    move-object/from16 v54, v3

    :goto_282
    move-object/from16 v56, v4

    move-object/from16 v55, v5

    goto :goto_2ab

    .line 150
    .restart local v10  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v11  # "fileContent":Ljava/lang/String;
    .local v12, "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    :cond_287
    move-object/from16 v53, v2

    move-object/from16 v54, v3

    move-object/from16 v56, v4

    move-object/from16 v55, v5

    move-object/from16 v16, v6

    move-object/from16 v57, v7

    move-object/from16 v58, v8

    move-object/from16 v59, v9

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    move-object/from16 v50, v12

    move-object/from16 v17, v13

    .line 173
    .end local v10  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v11  # "fileContent":Ljava/lang/String;
    .end local v12  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v13  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    goto :goto_2b1

    .line 171
    :catch_2a0
    move-exception v0

    move-object/from16 v53, v2

    move-object/from16 v54, v3

    move-object/from16 v56, v4

    move-object/from16 v55, v5

    move-object/from16 v16, v6

    :goto_2ab
    move-object/from16 v57, v7

    :goto_2ad
    move-object/from16 v58, v8

    :goto_2af
    move-object/from16 v59, v9

    .line 178
    :goto_2b1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b2
    :try_start_2b2
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I

    if-ge v1, v2, :cond_743

    .line 179
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2b8} :catch_750

    if-eqz v2, :cond_509

    .line 180
    :try_start_2ba
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2cd} :catch_4fb

    move-object/from16 v4, v59

    :try_start_2cf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_2d3} :catch_4ed

    move-object/from16 v5, v58

    :try_start_2d5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2d9} :catch_4e6

    move-object/from16 v6, v57

    :try_start_2db
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_4cf

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v2, v3

    .line 184
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "fileContent":Ljava/lang/String;
    new-instance v7, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 187
    .local v7, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v8, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    const-class v9, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    :try_end_323
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_323} :catch_4dd

    move-object/from16 v10, v56

    :try_start_325
    invoke-virtual {v7, v8, v10, v9}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 188
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    invoke-direct {v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;-><init>()V

    .line 189
    .local v8, "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    const-class v9, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    invoke-virtual {v7, v9, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    move-object v8, v9

    .line 191
    iget-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;->Government:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_33c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4ae

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 192
    .local v11, "e":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;

    .line 194
    .local v12, "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    iget-object v13, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_367

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_356
    .catch Ljava/lang/Exception; {:try_start_325 .. :try_end_356} :catch_4c4

    move-object/from16 v14, v55

    :try_start_358
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_36b

    :cond_367
    move-object/from16 v14, v55

    move-object/from16 v13, v16

    .line 195
    .local v13, "tempTag":Ljava/lang/String;
    :goto_36b
    const/4 v15, 0x1

    .line 197
    .local v15, "add":Z
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v2, p0

    .end local v2  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "fileContent":Ljava/lang/String;
    .local v17, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v18, "fileContent":Ljava/lang/String;
    iget-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "z":I
    :goto_37a
    if-ltz v3, :cond_395

    .line 198
    move-object/from16 v19, v7

    .end local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    .local v19, "json":Lcom/badlogic/gdx/utils/Json;
    iget-object v7, v2, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->extraTag:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_390

    .line 199
    const/4 v15, 0x0

    .line 200
    goto :goto_397

    .line 197
    :cond_390
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v7, v19

    goto :goto_37a

    .end local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_395
    move-object/from16 v19, v7

    .line 204
    .end local v3  # "z":I
    .end local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    :goto_397
    if-eqz v15, :cond_472

    .line 205
    iget-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-object/from16 v50, v8

    .end local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .local v50, "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v51, v9

    iget-object v9, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    iget-object v8, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3c7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v22, v8

    goto :goto_3c9

    :cond_3c7
    move-object/from16 v22, v16

    :goto_3c9
    iget v8, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->R:I

    iget v9, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->G:I

    move-object/from16 v52, v11

    .end local v11  # "e":Ljava/lang/Object;
    .restart local v52  # "e":Ljava/lang/Object;
    iget v11, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->B:I

    move-object/from16 v55, v13

    .end local v13  # "tempTag":Ljava/lang/String;
    .local v55, "tempTag":Ljava/lang/String;
    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MIN_GOODS:F

    move/from16 v56, v15

    .end local v15  # "add":Z
    .local v56, "add":Z
    iget v15, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MIN_INVESTMENTS:F

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE:I
    :try_end_3db
    .catch Ljava/lang/Exception; {:try_start_358 .. :try_end_3db} :catch_4a0

    move-object/from16 v57, v14

    :try_start_3dd
    iget v14, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE_TO_THE_SAME_PROV:I
    :try_end_3df
    .catch Ljava/lang/Exception; {:try_start_3dd .. :try_end_3df} :catch_46c

    move-object/from16 v58, v10

    :try_start_3e1
    iget v10, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE_OWN_PROV:I
    :try_end_3e3
    .catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_3e3} :catch_462

    move-object/from16 v59, v6

    :try_start_3e5
    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->RESEARCH_COST:F
    :try_end_3e7
    .catch Ljava/lang/Exception; {:try_start_3e5 .. :try_end_3e7} :catch_45a

    move-object/from16 v60, v5

    :try_start_3e9
    iget v5, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ACCEPTABLE_TAXATION:F
    :try_end_3eb
    .catch Ljava/lang/Exception; {:try_start_3e9 .. :try_end_3eb} :catch_454

    move-object/from16 v61, v4

    :try_start_3ed
    iget v4, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DEFENSE_BONUS:I

    move/from16 v62, v1

    .end local v1  # "i":I
    .local v62, "i":I
    iget v1, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MILITARY_UPKEEP:F

    move-object/from16 v63, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST:F

    move/from16 v35, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST_DISTANCE:F

    move/from16 v36, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->INCOME_TAXATION:F

    move/from16 v37, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->INCOME_PRODUCTION:F

    move/from16 v38, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_RECRUIT:I

    move/from16 v39, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_DISBAND:I

    move/from16 v40, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_PLUNDER:I

    move/from16 v41, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->CAN_BECOME_CIVILIZED:I

    move/from16 v42, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->AVAILABLE_SINCE_AGE_ID:I

    move/from16 v43, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST_CAPITAL:F

    move/from16 v44, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->CIVILIZE_TECH_LEVEL:F

    move/from16 v45, v3

    iget-object v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->AI_TYPE:Ljava/lang/String;

    move-object/from16 v46, v3

    iget-boolean v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->REVOLUTIONARY:Z

    move/from16 v47, v3

    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->GOV_GROUP_ID:I

    move/from16 v48, v3

    iget-object v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DESC:Ljava/lang/String;

    move-object/from16 v20, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v26, v13

    move/from16 v27, v15

    move/from16 v28, v2

    move/from16 v29, v14

    move/from16 v30, v10

    move/from16 v31, v6

    move/from16 v32, v5

    move/from16 v33, v4

    move/from16 v34, v1

    move-object/from16 v49, v3

    invoke-direct/range {v20 .. v49}, Lage/of/civilizations2/jakowski/lukasz/Ideology;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFIIIFFIFFFFFIIIIIFFLjava/lang/String;ZILjava/lang/String;)V

    move-object/from16 v1, v63

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_488

    .line 272
    .end local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .end local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18  # "fileContent":Ljava/lang/String;
    .end local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v52  # "e":Ljava/lang/Object;
    .end local v55  # "tempTag":Ljava/lang/String;
    .end local v56  # "add":Z
    .end local v62  # "i":I
    :catch_454
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v4

    goto/16 :goto_75c

    :catch_45a
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v4

    move-object/from16 v60, v5

    goto/16 :goto_75c

    :catch_462
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    goto/16 :goto_75c

    :catch_46c
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v4

    goto/16 :goto_5ce

    .line 204
    .restart local v1  # "i":I
    .restart local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v11  # "e":Ljava/lang/Object;
    .restart local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .restart local v13  # "tempTag":Ljava/lang/String;
    .restart local v15  # "add":Z
    .restart local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18  # "fileContent":Ljava/lang/String;
    .restart local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_472
    move/from16 v62, v1

    move-object/from16 v61, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v50, v8

    move-object/from16 v51, v9

    move-object/from16 v58, v10

    move-object/from16 v52, v11

    move-object/from16 v55, v13

    move-object/from16 v57, v14

    move/from16 v56, v15

    .line 222
    .end local v1  # "i":I
    .end local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v11  # "e":Ljava/lang/Object;
    .end local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .end local v13  # "tempTag":Ljava/lang/String;
    .end local v15  # "add":Z
    .restart local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v62  # "i":I
    :goto_488
    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v50

    move-object/from16 v9, v51

    move-object/from16 v55, v57

    move-object/from16 v10, v58

    move-object/from16 v6, v59

    move-object/from16 v5, v60

    move-object/from16 v4, v61

    move/from16 v1, v62

    goto/16 :goto_33c

    .line 272
    .end local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18  # "fileContent":Ljava/lang/String;
    .end local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v62  # "i":I
    :catch_4a0
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v4

    :goto_4a4
    move-object/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v58, v10

    move-object/from16 v57, v14

    goto/16 :goto_75c

    .line 191
    .restart local v1  # "i":I
    .restart local v2  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v3, "fileContent":Ljava/lang/String;
    .restart local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    :cond_4ae
    move/from16 v62, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v61, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v19, v7

    move-object/from16 v50, v8

    move-object/from16 v58, v10

    move-object/from16 v57, v55

    .line 223
    .end local v1  # "i":I
    .end local v2  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "fileContent":Ljava/lang/String;
    .end local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v62  # "i":I
    goto/16 :goto_721

    .line 272
    .end local v62  # "i":I
    :catch_4c4
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v58, v10

    goto :goto_505

    .line 180
    .restart local v1  # "i":I
    :cond_4cf
    move/from16 v62, v1

    move-object/from16 v61, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v57, v55

    move-object/from16 v58, v56

    .end local v1  # "i":I
    .restart local v62  # "i":I
    goto/16 :goto_721

    .line 272
    .end local v62  # "i":I
    :catch_4dd
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    goto :goto_4f5

    :catch_4e6
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v4

    move-object/from16 v60, v5

    goto :goto_501

    :catch_4ed
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v4

    move-object/from16 v59, v57

    move-object/from16 v60, v58

    :goto_4f5
    move-object/from16 v57, v55

    move-object/from16 v58, v56

    goto/16 :goto_75c

    :catch_4fb
    move-exception v0

    move-object v1, v0

    move-object/from16 v60, v58

    move-object/from16 v61, v59

    :goto_501
    move-object/from16 v58, v56

    move-object/from16 v59, v57

    :goto_505
    move-object/from16 v57, v55

    goto/16 :goto_75c

    .line 226
    .restart local v1  # "i":I
    :cond_509
    move/from16 v62, v1

    move-object/from16 v60, v58

    move-object/from16 v61, v59

    move-object/from16 v58, v56

    move-object/from16 v59, v57

    move-object/from16 v57, v55

    .end local v1  # "i":I
    .restart local v62  # "i":I
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    move/from16 v4, v62

    .end local v62  # "i":I
    .local v4, "i":I
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_52a
    .catch Ljava/lang/Exception; {:try_start_3ed .. :try_end_52a} :catch_741

    move-object/from16 v3, v61

    :try_start_52c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_530
    .catch Ljava/lang/Exception; {:try_start_52c .. :try_end_530} :catch_73d

    move-object/from16 v5, v60

    :try_start_532
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_536
    .catch Ljava/lang/Exception; {:try_start_532 .. :try_end_536} :catch_737

    move-object/from16 v6, v59

    :try_start_538
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_719

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    move-object v1, v2

    .line 230
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "fileContent":Ljava/lang/String;
    new-instance v7, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 233
    .restart local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    const-class v8, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    const-class v9, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    :try_end_580
    .catch Ljava/lang/Exception; {:try_start_538 .. :try_end_580} :catch_72f

    move-object/from16 v10, v58

    :try_start_582
    invoke-virtual {v7, v8, v10, v9}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 234
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    invoke-direct {v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;-><init>()V

    .line 235
    .restart local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    const-class v9, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    invoke-virtual {v7, v9, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    move-object v8, v9

    .line 237
    iget-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;->Government:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_599
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6fc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 238
    .restart local v11  # "e":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;

    .line 240
    .restart local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    iget-object v13, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13
    :try_end_5ac
    .catch Ljava/lang/Exception; {:try_start_582 .. :try_end_5ac} :catch_70f

    if-lez v13, :cond_5d6

    :try_start_5ae
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5b3
    .catch Ljava/lang/Exception; {:try_start_5ae .. :try_end_5b3} :catch_5ca

    move-object/from16 v14, v57

    :try_start_5b5
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_5c3
    .catch Ljava/lang/Exception; {:try_start_5b5 .. :try_end_5c3} :catch_5c4

    goto :goto_5da

    .line 272
    .end local v1  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "fileContent":Ljava/lang/String;
    .end local v4  # "i":I
    .end local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v11  # "e":Ljava/lang/Object;
    .end local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    :catch_5c4
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v3

    goto/16 :goto_4a4

    :catch_5ca
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v3

    :goto_5ce
    move-object/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v58, v10

    goto/16 :goto_75c

    .line 240
    .restart local v1  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2  # "fileContent":Ljava/lang/String;
    .restart local v4  # "i":I
    .restart local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v11  # "e":Ljava/lang/Object;
    .restart local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    :cond_5d6
    move-object/from16 v14, v57

    move-object/from16 v13, v16

    .line 241
    .restart local v13  # "tempTag":Ljava/lang/String;
    :goto_5da
    const/4 v15, 0x1

    .line 243
    .restart local v15  # "add":Z
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v1, p0

    .end local v1  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "fileContent":Ljava/lang/String;
    .restart local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18  # "fileContent":Ljava/lang/String;
    :try_start_5e1
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_5e7
    .catch Ljava/lang/Exception; {:try_start_5e1 .. :try_end_5e7} :catch_6ef

    add-int/lit8 v2, v2, -0x1

    .local v2, "z":I
    :goto_5e9
    if-ltz v2, :cond_604

    .line 244
    move-object/from16 v19, v7

    .end local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    :try_start_5ed
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->extraTag:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5fb
    .catch Ljava/lang/Exception; {:try_start_5ed .. :try_end_5fb} :catch_5c4

    if-eqz v7, :cond_5ff

    .line 245
    const/4 v15, 0x0

    .line 246
    goto :goto_606

    .line 243
    :cond_5ff
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v7, v19

    goto :goto_5e9

    .end local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_604
    move-object/from16 v19, v7

    .line 250
    .end local v2  # "z":I
    .end local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    :goto_606
    if-eqz v15, :cond_6c3

    .line 251
    :try_start_608
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-object/from16 v50, v8

    .end local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v51, v9

    iget-object v9, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    iget-object v8, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_61e
    .catch Ljava/lang/Exception; {:try_start_608 .. :try_end_61e} :catch_6ef

    if-lez v8, :cond_636

    :try_start_620
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_633
    .catch Ljava/lang/Exception; {:try_start_620 .. :try_end_633} :catch_5c4

    move-object/from16 v22, v8

    goto :goto_638

    :cond_636
    move-object/from16 v22, v16

    :goto_638
    :try_start_638
    iget v8, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->R:I

    iget v9, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->G:I

    move-object/from16 v52, v11

    .end local v11  # "e":Ljava/lang/Object;
    .restart local v52  # "e":Ljava/lang/Object;
    iget v11, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->B:I

    move-object/from16 v55, v13

    .end local v13  # "tempTag":Ljava/lang/String;
    .restart local v55  # "tempTag":Ljava/lang/String;
    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MIN_GOODS:F

    move/from16 v56, v15

    .end local v15  # "add":Z
    .restart local v56  # "add":Z
    iget v15, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MIN_INVESTMENTS:F

    iget v1, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE:I
    :try_end_64a
    .catch Ljava/lang/Exception; {:try_start_638 .. :try_end_64a} :catch_6ef

    move-object/from16 v57, v14

    :try_start_64c
    iget v14, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE_TO_THE_SAME_PROV:I
    :try_end_64e
    .catch Ljava/lang/Exception; {:try_start_64c .. :try_end_64e} :catch_70f

    move-object/from16 v58, v10

    :try_start_650
    iget v10, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE_OWN_PROV:I
    :try_end_652
    .catch Ljava/lang/Exception; {:try_start_650 .. :try_end_652} :catch_72f

    move-object/from16 v59, v6

    :try_start_654
    iget v6, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->RESEARCH_COST:F
    :try_end_656
    .catch Ljava/lang/Exception; {:try_start_654 .. :try_end_656} :catch_737

    move-object/from16 v60, v5

    :try_start_658
    iget v5, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ACCEPTABLE_TAXATION:F
    :try_end_65a
    .catch Ljava/lang/Exception; {:try_start_658 .. :try_end_65a} :catch_73d

    move-object/from16 v61, v3

    :try_start_65c
    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DEFENSE_BONUS:I

    move/from16 v62, v4

    .end local v4  # "i":I
    .restart local v62  # "i":I
    iget v4, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MILITARY_UPKEEP:F

    move-object/from16 v63, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST:F

    move/from16 v35, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST_DISTANCE:F

    move/from16 v36, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->INCOME_TAXATION:F

    move/from16 v37, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->INCOME_PRODUCTION:F

    move/from16 v38, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_RECRUIT:I

    move/from16 v39, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_DISBAND:I

    move/from16 v40, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_PLUNDER:I

    move/from16 v41, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->CAN_BECOME_CIVILIZED:I

    move/from16 v42, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->AVAILABLE_SINCE_AGE_ID:I

    move/from16 v43, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST_CAPITAL:F

    move/from16 v44, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->CIVILIZE_TECH_LEVEL:F

    move/from16 v45, v2

    iget-object v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->AI_TYPE:Ljava/lang/String;

    move-object/from16 v46, v2

    iget-boolean v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->REVOLUTIONARY:Z

    move/from16 v47, v2

    iget v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->GOV_GROUP_ID:I

    move/from16 v48, v2

    iget-object v2, v12, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DESC:Ljava/lang/String;

    move-object/from16 v20, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v26, v13

    move/from16 v27, v15

    move/from16 v28, v1

    move/from16 v29, v14

    move/from16 v30, v10

    move/from16 v31, v6

    move/from16 v32, v5

    move/from16 v33, v3

    move/from16 v34, v4

    move-object/from16 v49, v2

    invoke-direct/range {v20 .. v49}, Lage/of/civilizations2/jakowski/lukasz/Ideology;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFIIIFFIFFFFFIIIIIFFLjava/lang/String;ZILjava/lang/String;)V

    move-object/from16 v1, v63

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c2
    .catch Ljava/lang/Exception; {:try_start_65c .. :try_end_6c2} :catch_741

    goto :goto_6d9

    .line 250
    .end local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v52  # "e":Ljava/lang/Object;
    .end local v55  # "tempTag":Ljava/lang/String;
    .end local v56  # "add":Z
    .end local v62  # "i":I
    .restart local v4  # "i":I
    .restart local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v11  # "e":Ljava/lang/Object;
    .restart local v13  # "tempTag":Ljava/lang/String;
    .restart local v15  # "add":Z
    :cond_6c3
    move-object/from16 v61, v3

    move/from16 v62, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v50, v8

    move-object/from16 v51, v9

    move-object/from16 v58, v10

    move-object/from16 v52, v11

    move-object/from16 v55, v13

    move-object/from16 v57, v14

    move/from16 v56, v15

    .line 268
    .end local v4  # "i":I
    .end local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v11  # "e":Ljava/lang/Object;
    .end local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .end local v13  # "tempTag":Ljava/lang/String;
    .end local v15  # "add":Z
    .restart local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v62  # "i":I
    :goto_6d9
    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v50

    move-object/from16 v9, v51

    move-object/from16 v10, v58

    move-object/from16 v6, v59

    move-object/from16 v5, v60

    move-object/from16 v3, v61

    move/from16 v4, v62

    goto/16 :goto_599

    .line 272
    .end local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18  # "fileContent":Ljava/lang/String;
    .end local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v62  # "i":I
    :catch_6ef
    move-exception v0

    move-object/from16 v61, v3

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v58, v10

    move-object/from16 v57, v14

    goto/16 :goto_75b

    .line 237
    .restart local v1  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v2, "fileContent":Ljava/lang/String;
    .restart local v4  # "i":I
    .restart local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    :cond_6fc
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v61, v3

    move/from16 v62, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v19, v7

    move-object/from16 v50, v8

    move-object/from16 v58, v10

    .end local v1  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "fileContent":Ljava/lang/String;
    .end local v4  # "i":I
    .end local v7  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v8  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18  # "fileContent":Ljava/lang/String;
    .restart local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v62  # "i":I
    goto :goto_721

    .line 272
    .end local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18  # "fileContent":Ljava/lang/String;
    .end local v19  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v62  # "i":I
    :catch_70f
    move-exception v0

    move-object/from16 v61, v3

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v58, v10

    goto :goto_75b

    .line 226
    .restart local v4  # "i":I
    :cond_719
    move-object/from16 v61, v3

    move/from16 v62, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    .line 178
    .end local v4  # "i":I
    .restart local v62  # "i":I
    :goto_721
    add-int/lit8 v1, v62, 0x1

    move-object/from16 v55, v57

    move-object/from16 v56, v58

    move-object/from16 v57, v59

    move-object/from16 v58, v60

    move-object/from16 v59, v61

    .end local v62  # "i":I
    .local v1, "i":I
    goto/16 :goto_2b2

    .line 272
    .end local v1  # "i":I
    :catch_72f
    move-exception v0

    move-object/from16 v61, v3

    move-object/from16 v60, v5

    move-object/from16 v59, v6

    goto :goto_75b

    :catch_737
    move-exception v0

    move-object/from16 v61, v3

    move-object/from16 v60, v5

    goto :goto_75b

    :catch_73d
    move-exception v0

    move-object/from16 v61, v3

    goto :goto_75b

    :catch_741
    move-exception v0

    goto :goto_75b

    .line 178
    .restart local v1  # "i":I
    :cond_743
    move/from16 v62, v1

    move-object/from16 v60, v58

    move-object/from16 v61, v59

    move-object/from16 v58, v56

    move-object/from16 v59, v57

    move-object/from16 v57, v55

    .line 274
    .end local v1  # "i":I
    goto :goto_75f

    .line 272
    :catch_750
    move-exception v0

    move-object/from16 v60, v58

    move-object/from16 v61, v59

    move-object/from16 v58, v56

    move-object/from16 v59, v57

    move-object/from16 v57, v55

    :goto_75b
    move-object v1, v0

    .line 273
    .local v1, "ex":Ljava/lang/Exception;
    :goto_75c
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 277
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_75f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_760
    :try_start_760
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9a1

    .line 278
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v4}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v54

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v5, v61

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v6, v60

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v7, v59

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_983

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v9}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v2, v3

    .line 282
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .restart local v3  # "fileContent":Ljava/lang/String;
    new-instance v8, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v8}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 285
    .local v8, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v9, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    const-class v10, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    :try_end_7e3
    .catch Ljava/lang/Exception; {:try_start_760 .. :try_end_7e3} :catch_9a8

    move-object/from16 v11, v58

    :try_start_7e5
    invoke-virtual {v8, v9, v11, v10}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 286
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    invoke-direct {v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;-><init>()V

    .line 287
    .local v9, "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    const-class v10, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    invoke-virtual {v8, v10, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    move-object v9, v10

    .line 289
    iget-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;->Government:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7fc
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_966

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 290
    .local v12, "e":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;

    .line 292
    .local v13, "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    iget-object v14, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14
    :try_end_80f
    .catch Ljava/lang/Exception; {:try_start_7e5 .. :try_end_80f} :catch_97d

    if-lez v14, :cond_839

    :try_start_811
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_816
    .catch Ljava/lang/Exception; {:try_start_811 .. :try_end_816} :catch_831

    move-object/from16 v15, v57

    :try_start_818
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v17, v2

    .end local v2  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v2, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_828
    .catch Ljava/lang/Exception; {:try_start_818 .. :try_end_828} :catch_829

    goto :goto_83f

    .line 323
    .end local v1  # "i":I
    .end local v3  # "fileContent":Ljava/lang/String;
    .end local v8  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v9  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v12  # "e":Ljava/lang/Object;
    .end local v13  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .end local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    :catch_829
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v11

    move-object/from16 v60, v15

    goto/16 :goto_9ae

    :catch_831
    move-exception v0

    move-object v1, v0

    move-object/from16 v61, v11

    move-object/from16 v60, v57

    goto/16 :goto_9ae

    .line 292
    .restart local v1  # "i":I
    .restart local v2  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v3  # "fileContent":Ljava/lang/String;
    .restart local v8  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v9  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v12  # "e":Ljava/lang/Object;
    .restart local v13  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    :cond_839
    move-object/from16 v17, v2

    move-object/from16 v15, v57

    .end local v2  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    move-object/from16 v2, v16

    .line 293
    .local v2, "tempTag":Ljava/lang/String;
    :goto_83f
    const/4 v14, 0x1

    .line 295
    .local v14, "add":Z
    move-object/from16 v18, v3

    move-object/from16 v54, v4

    move-object/from16 v3, p0

    .end local v3  # "fileContent":Ljava/lang/String;
    .restart local v18  # "fileContent":Ljava/lang/String;
    :try_start_846
    iget-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_84c
    .catch Ljava/lang/Exception; {:try_start_846 .. :try_end_84c} :catch_960

    add-int/lit8 v4, v4, -0x1

    .local v4, "z":I
    :goto_84e
    if-ltz v4, :cond_869

    .line 296
    move-object/from16 v59, v5

    :try_start_852
    iget-object v5, v3, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->extraTag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_860
    .catch Ljava/lang/Exception; {:try_start_852 .. :try_end_860} :catch_829

    if-eqz v5, :cond_864

    .line 297
    const/4 v14, 0x0

    .line 298
    goto :goto_86b

    .line 295
    :cond_864
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v5, v59

    goto :goto_84e

    :cond_869
    move-object/from16 v59, v5

    .line 302
    .end local v4  # "z":I
    :goto_86b
    if-eqz v14, :cond_930

    .line 303
    :try_start_86d
    iget-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-object/from16 v49, v2

    .end local v2  # "tempTag":Ljava/lang/String;
    .local v49, "tempTag":Ljava/lang/String;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    move-object/from16 v58, v6

    iget-object v6, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    iget-object v2, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_883
    .catch Ljava/lang/Exception; {:try_start_86d .. :try_end_883} :catch_960

    if-lez v2, :cond_89b

    :try_start_885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_898
    .catch Ljava/lang/Exception; {:try_start_885 .. :try_end_898} :catch_829

    move-object/from16 v21, v2

    goto :goto_89d

    :cond_89b
    move-object/from16 v21, v16

    :goto_89d
    :try_start_89d
    iget v2, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->R:I

    iget v6, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->G:I

    move-object/from16 v57, v7

    iget v7, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->B:I

    move-object/from16 v50, v8

    .end local v8  # "json":Lcom/badlogic/gdx/utils/Json;
    .local v50, "json":Lcom/badlogic/gdx/utils/Json;
    iget v8, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MIN_GOODS:F

    move-object/from16 v51, v9

    .end local v9  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .local v51, "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    iget v9, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MIN_INVESTMENTS:F

    move-object/from16 v52, v10

    iget v10, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE:I

    move-object/from16 v55, v12

    .end local v12  # "e":Ljava/lang/Object;
    .local v55, "e":Ljava/lang/Object;
    iget v12, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE_TO_THE_SAME_PROV:I

    move/from16 v56, v14

    .end local v14  # "add":Z
    .restart local v56  # "add":Z
    iget v14, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE_OWN_PROV:I

    iget v3, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->RESEARCH_COST:F
    :try_end_8bb
    .catch Ljava/lang/Exception; {:try_start_89d .. :try_end_8bb} :catch_960

    move-object/from16 v60, v15

    :try_start_8bd
    iget v15, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ACCEPTABLE_TAXATION:F
    :try_end_8bf
    .catch Ljava/lang/Exception; {:try_start_8bd .. :try_end_8bf} :catch_92b

    move-object/from16 v61, v11

    :try_start_8c1
    iget v11, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DEFENSE_BONUS:I

    move/from16 v62, v1

    .end local v1  # "i":I
    .restart local v62  # "i":I
    iget v1, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MILITARY_UPKEEP:F

    move-object/from16 v63, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST:F

    move/from16 v34, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST_DISTANCE:F

    move/from16 v35, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->INCOME_TAXATION:F

    move/from16 v36, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->INCOME_PRODUCTION:F

    move/from16 v37, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_RECRUIT:I

    move/from16 v38, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_DISBAND:I

    move/from16 v39, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_PLUNDER:I

    move/from16 v40, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->CAN_BECOME_CIVILIZED:I

    move/from16 v41, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->AVAILABLE_SINCE_AGE_ID:I

    move/from16 v42, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST_CAPITAL:F

    move/from16 v43, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->CIVILIZE_TECH_LEVEL:F

    move/from16 v44, v4

    iget-object v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->AI_TYPE:Ljava/lang/String;

    move-object/from16 v45, v4

    iget-boolean v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->REVOLUTIONARY:Z

    move/from16 v46, v4

    iget v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->GOV_GROUP_ID:I

    move/from16 v47, v4

    iget-object v4, v13, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DESC:Ljava/lang/String;

    move-object/from16 v19, v5

    move/from16 v22, v2

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v10

    move/from16 v28, v12

    move/from16 v29, v14

    move/from16 v30, v3

    move/from16 v31, v15

    move/from16 v32, v11

    move/from16 v33, v1

    move-object/from16 v48, v4

    invoke-direct/range {v19 .. v48}, Lage/of/civilizations2/jakowski/lukasz/Ideology;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFIIIFFIFFFFFIIIIIFFLjava/lang/String;ZILjava/lang/String;)V

    move-object/from16 v1, v63

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_927
    .catch Ljava/lang/Exception; {:try_start_8c1 .. :try_end_927} :catch_928

    goto :goto_946

    .line 323
    .end local v13  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .end local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18  # "fileContent":Ljava/lang/String;
    .end local v49  # "tempTag":Ljava/lang/String;
    .end local v50  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v51  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v55  # "e":Ljava/lang/Object;
    .end local v56  # "add":Z
    .end local v62  # "i":I
    :catch_928
    move-exception v0

    goto/16 :goto_9ad

    :catch_92b
    move-exception v0

    move-object/from16 v61, v11

    goto/16 :goto_9ad

    .line 302
    .restart local v1  # "i":I
    .restart local v2  # "tempTag":Ljava/lang/String;
    .restart local v8  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v9  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v12  # "e":Ljava/lang/Object;
    .restart local v13  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .restart local v14  # "add":Z
    .restart local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18  # "fileContent":Ljava/lang/String;
    :cond_930
    move/from16 v62, v1

    move-object/from16 v49, v2

    move-object/from16 v58, v6

    move-object/from16 v57, v7

    move-object/from16 v50, v8

    move-object/from16 v51, v9

    move-object/from16 v52, v10

    move-object/from16 v61, v11

    move-object/from16 v55, v12

    move/from16 v56, v14

    move-object/from16 v60, v15

    .line 320
    .end local v1  # "i":I
    .end local v2  # "tempTag":Ljava/lang/String;
    .end local v8  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v9  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v12  # "e":Ljava/lang/Object;
    .end local v13  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .end local v14  # "add":Z
    .restart local v50  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v51  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v62  # "i":I
    :goto_946
    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v8, v50

    move-object/from16 v9, v51

    move-object/from16 v10, v52

    move-object/from16 v4, v54

    move-object/from16 v7, v57

    move-object/from16 v6, v58

    move-object/from16 v5, v59

    move-object/from16 v57, v60

    move-object/from16 v11, v61

    move/from16 v1, v62

    goto/16 :goto_7fc

    .line 323
    .end local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18  # "fileContent":Ljava/lang/String;
    .end local v50  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v51  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v62  # "i":I
    :catch_960
    move-exception v0

    move-object/from16 v61, v11

    move-object/from16 v60, v15

    goto :goto_9ad

    .line 289
    .restart local v1  # "i":I
    .local v2, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v3  # "fileContent":Ljava/lang/String;
    .restart local v8  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v9  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    :cond_966
    move/from16 v62, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v54, v4

    move-object/from16 v59, v5

    move-object/from16 v58, v6

    move-object/from16 v50, v8

    move-object/from16 v51, v9

    move-object/from16 v61, v11

    move-object/from16 v60, v57

    move-object/from16 v57, v7

    .end local v1  # "i":I
    .end local v2  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "fileContent":Ljava/lang/String;
    .end local v8  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v9  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18  # "fileContent":Ljava/lang/String;
    .restart local v50  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v51  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v62  # "i":I
    goto :goto_991

    .line 323
    .end local v17  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18  # "fileContent":Ljava/lang/String;
    .end local v50  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v51  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v62  # "i":I
    :catch_97d
    move-exception v0

    move-object/from16 v61, v11

    move-object/from16 v60, v57

    goto :goto_9ad

    .line 278
    .restart local v1  # "i":I
    :cond_983
    move/from16 v62, v1

    move-object/from16 v54, v4

    move-object/from16 v59, v5

    move-object/from16 v60, v57

    move-object/from16 v61, v58

    move-object/from16 v58, v6

    move-object/from16 v57, v7

    .line 277
    .end local v1  # "i":I
    .restart local v62  # "i":I
    :goto_991
    add-int/lit8 v1, v62, 0x1

    move-object/from16 v64, v59

    move-object/from16 v59, v57

    move-object/from16 v57, v60

    move-object/from16 v60, v58

    move-object/from16 v58, v61

    move-object/from16 v61, v64

    .end local v62  # "i":I
    .restart local v1  # "i":I
    goto/16 :goto_760

    :cond_9a1
    move/from16 v62, v1

    move-object/from16 v60, v57

    move-object/from16 v61, v58

    .line 325
    .end local v1  # "i":I
    goto :goto_9b1

    .line 323
    :catch_9a8
    move-exception v0

    move-object/from16 v60, v57

    move-object/from16 v61, v58

    :goto_9ad
    move-object v1, v0

    .line 324
    .local v1, "ex":Ljava/lang/Exception;
    :goto_9ae
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 329
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_9b1
    const/4 v1, 0x0

    .line 330
    .local v1, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_9b2
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    move-object/from16 v3, v53

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    move-object v1, v2

    .line 332
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "fileContent":Ljava/lang/String;
    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 335
    .local v3, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v4, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    const-class v5, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;

    move-object/from16 v6, v61

    invoke-virtual {v3, v4, v6, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 336
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;-><init>()V

    .line 337
    .local v4, "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    const-class v5, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    invoke-virtual {v3, v5, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;

    move-object v4, v5

    .line 339
    iget-object v5, v4, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;->Government:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9e1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b0b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 340
    .local v6, "e":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;

    .line 342
    .local v7, "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    iget-object v8, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a0c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v60

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_a10

    :cond_a0c
    move-object/from16 v9, v60

    move-object/from16 v8, v16

    .line 343
    .local v8, "tempTag":Ljava/lang/String;
    :goto_a10
    const/4 v10, 0x1

    .line 345
    .local v10, "add":Z
    move-object/from16 v11, p0

    iget-object v12, v11, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .local v12, "z":I
    :goto_a1b
    if-ltz v12, :cond_a32

    .line 346
    iget-object v13, v11, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Ideology;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Ideology;->extraTag:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a2f

    .line 347
    const/4 v10, 0x0

    .line 348
    goto :goto_a32

    .line 345
    :cond_a2f
    add-int/lit8 v12, v12, -0x1

    goto :goto_a1b

    .line 352
    .end local v12  # "z":I
    :cond_a32
    :goto_a32
    if-eqz v10, :cond_aeb

    .line 353
    iget-object v12, v11, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->lIdeologies:Ljava/util/List;

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Ideology;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    iget-object v15, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v14, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_a5e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    goto :goto_a60

    :cond_a5e
    move-object/from16 v19, v16

    :goto_a60
    iget v14, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->R:I

    iget v15, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->G:I

    move-object/from16 v47, v1

    .end local v1  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v47, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    iget v1, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->B:I

    move-object/from16 v48, v2

    .end local v2  # "fileContent":Ljava/lang/String;
    .local v48, "fileContent":Ljava/lang/String;
    iget v2, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MIN_GOODS:F

    move-object/from16 v49, v3

    .end local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .local v49, "json":Lcom/badlogic/gdx/utils/Json;
    iget v3, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MIN_INVESTMENTS:F

    move-object/from16 v50, v4

    .end local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .local v50, "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    iget v4, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE:I

    move-object/from16 v51, v5

    iget v5, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE_TO_THE_SAME_PROV:I

    move-object/from16 v52, v6

    .end local v6  # "e":Ljava/lang/Object;
    .restart local v52  # "e":Ljava/lang/Object;
    iget v6, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_MOVE_OWN_PROV:I

    move-object/from16 v53, v8

    .end local v8  # "tempTag":Ljava/lang/String;
    .local v53, "tempTag":Ljava/lang/String;
    iget v8, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->RESEARCH_COST:F

    move-object/from16 v55, v9

    iget v9, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ACCEPTABLE_TAXATION:F

    move/from16 v54, v10

    .end local v10  # "add":Z
    .local v54, "add":Z
    iget v10, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DEFENSE_BONUS:I

    iget v11, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->MILITARY_UPKEEP:F

    move-object/from16 v56, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST:F

    move/from16 v32, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST_DISTANCE:F

    move/from16 v33, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->INCOME_TAXATION:F

    move/from16 v34, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->INCOME_PRODUCTION:F

    move/from16 v35, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_RECRUIT:I

    move/from16 v36, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_DISBAND:I

    move/from16 v37, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->COST_OF_PLUNDER:I

    move/from16 v38, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->CAN_BECOME_CIVILIZED:I

    move/from16 v39, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->AVAILABLE_SINCE_AGE_ID:I

    move/from16 v40, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->ADMINISTRATION_COST_CAPITAL:F

    move/from16 v41, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->CIVILIZE_TECH_LEVEL:F

    move/from16 v42, v12

    iget-object v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->AI_TYPE:Ljava/lang/String;

    move-object/from16 v43, v12

    iget-boolean v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->REVOLUTIONARY:Z

    move/from16 v44, v12

    iget v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->GOV_GROUP_ID:I

    move/from16 v45, v12

    iget-object v12, v7, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;->DESC:Ljava/lang/String;

    move-object/from16 v17, v13

    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v46, v12

    invoke-direct/range {v17 .. v46}, Lage/of/civilizations2/jakowski/lukasz/Ideology;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFIIIFFIFFFFFIIIIIFFLjava/lang/String;ZILjava/lang/String;)V

    move-object/from16 v1, v56

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_aea
    .catch Ljava/lang/Exception; {:try_start_9b2 .. :try_end_aea} :catch_b14

    goto :goto_afd

    .line 352
    .end local v47  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v48  # "fileContent":Ljava/lang/String;
    .end local v49  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v52  # "e":Ljava/lang/Object;
    .end local v53  # "tempTag":Ljava/lang/String;
    .end local v54  # "add":Z
    .restart local v1  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2  # "fileContent":Ljava/lang/String;
    .restart local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v6  # "e":Ljava/lang/Object;
    .restart local v8  # "tempTag":Ljava/lang/String;
    .restart local v10  # "add":Z
    :cond_aeb
    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move-object/from16 v51, v5

    move-object/from16 v52, v6

    move-object/from16 v53, v8

    move-object/from16 v55, v9

    move/from16 v54, v10

    .line 370
    .end local v1  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "fileContent":Ljava/lang/String;
    .end local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .end local v6  # "e":Ljava/lang/Object;
    .end local v7  # "tempData":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$Data_Ideologies;
    .end local v8  # "tempTag":Ljava/lang/String;
    .end local v10  # "add":Z
    .restart local v47  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v48  # "fileContent":Ljava/lang/String;
    .restart local v49  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    :goto_afd
    move-object/from16 v1, v47

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    move-object/from16 v4, v50

    move-object/from16 v5, v51

    move-object/from16 v60, v55

    goto/16 :goto_9e1

    .line 339
    .end local v47  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v48  # "fileContent":Ljava/lang/String;
    .end local v49  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v50  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    .restart local v1  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2  # "fileContent":Ljava/lang/String;
    .restart local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    :cond_b0b
    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    .line 373
    .end local v1  # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "fileContent":Ljava/lang/String;
    .end local v3  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v4  # "data":Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager$ConfigIdeologiesData;
    goto :goto_b19

    .line 371
    :catch_b14
    move-exception v0

    move-object v1, v0

    .line 372
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 377
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_b19
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b1a
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologiesSize()I

    move-result v2

    if-ge v1, v2, :cond_b30

    .line 378
    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v3, :cond_b2d

    .line 379
    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->REBELS_ID:I

    .line 380
    goto :goto_b32

    .line 377
    :cond_b2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b1a

    :cond_b30
    move-object/from16 v2, p0

    .line 384
    .end local v1  # "i":I
    :goto_b32
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_b33
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologiesSize()I

    move-result v3

    if-ge v1, v3, :cond_b5a

    .line 385
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->MAX_CROWN_WIDTH:I

    if-le v3, v4, :cond_b57

    .line 386
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sput v3, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->MAX_CROWN_WIDTH:I

    .line 384
    :cond_b57
    add-int/lit8 v1, v1, 0x1

    goto :goto_b33

    .line 389
    .end local v1  # "i":I
    :cond_b5a
    return-void
.end method
