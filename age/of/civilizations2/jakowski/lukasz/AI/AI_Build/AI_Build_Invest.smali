.class public Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;
.super Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build;
.source "AI_Build_Invest.java"


# instance fields
.field private fReserve:F

.field private iMaxPop:I

.field private lProvincesToInvest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .registers 8
    .param p1, "nCivID"  # I
    .param p2, "nMoney"  # J

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build;-><init>(IJ)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    .line 18
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->fReserve:F

    .line 20
    const/4 v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->iMaxPop:I

    .line 25
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_RESERVE_RAND:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_RESERVE_RAND:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->fReserve:F

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    :try_start_3a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-ge v0, v1, :cond_12b

    .line 29
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v1

    if-nez v1, :cond_127

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 30
    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->BUILD_MIN_STABILITY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_127

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 31
    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Province;->BUILD_MAX_REV_RISK:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_127

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 33
    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInvestOrganized(I)Z

    move-result v1

    if-nez v1, :cond_127

    .line 35
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMaxProvEconomy(I)F

    move-result v1

    const v2, 0x3f83d70a  # 1.03f

    mul-float v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_127

    .line 36
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->iMaxDangerLevel:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLvl()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->iMaxDangerLevel:I

    .line 40
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->iMaxPop:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->iMaxPop:I
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_127} :catch_12c

    .line 28
    :cond_127
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3a

    .line 46
    .end local v0  # "i":I
    :cond_12b
    goto :goto_130

    .line 44
    :catch_12c
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 47
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_130
    return-void
.end method


# virtual methods
.method public build(IIZ)Z
    .registers 15
    .param p1, "nCivID"  # I
    .param p2, "iteration"  # I
    .param p3, "out"  # Z

    .line 54
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 55
    return p3

    .line 58
    :cond_9
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    .local v0, "iBestProvinceID":I
    invoke-virtual {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->getProvinceBuildScore(II)F

    move-result v1

    .line 61
    .local v1, "iBestProvinceID_Score":F
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 64
    .local v2, "randValue":I
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiInvest:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_IN_RANDOM_PROVINCE_CHANCE_100:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_43

    .line 65
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v4

    goto :goto_75

    .line 69
    :cond_43
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_4a
    if-lez v4, :cond_75

    .line 70
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->getProvinceBuildScore(II)F

    move-result v6

    cmpl-float v6, v6, v1

    if-lez v6, :cond_72

    .line 71
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v0, v6

    .line 72
    invoke-virtual {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->getProvinceBuildScore(II)F

    move-result v6

    move v1, v6

    .line 69
    :cond_72
    add-int/lit8 v4, v4, -0x1

    goto :goto_4a

    .line 77
    .end local v4  # "i":I
    :cond_75
    :goto_75
    if-ltz v0, :cond_13c

    .line 78
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->getMoney(I)J

    move-result-wide v6

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->invest_MaxEconomy_Gold(II)I

    move-result v4

    int-to-long v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    .line 79
    .local v4, "maxInvestmentGold":I
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInvestEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_COST_MOVEMENT_POINTS:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x41200000  # 10.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    .line 81
    .local v6, "minNumOfInvests":I
    if-nez p2, :cond_e9

    if-le v6, v5, :cond_e9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v7, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_SECOND_INVEST_CHANCE:I

    if-ge v3, v7, :cond_e9

    .line 82
    int-to-float v3, v4

    const/high16 v7, 0x3f800000  # 1.0f

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v9, 0x2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPers:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_SECOND_INVEST_MAX_PERC:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000  # 100.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float v3, v3, v7

    float-to-int v4, v3

    .line 85
    :cond_e9
    invoke-static {v0, p1, v4}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->invest(III)Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 86
    const/4 p3, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->getMoney(I)J

    move-result-wide v7

    const-wide/16 v9, 0xa

    cmp-long v3, v7, v9

    if-lez v3, :cond_13c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInvestEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InvestEconomy;->INVEST_ECO_COST_MOVEMENT_POINTS:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v7

    if-gt v3, v7, :cond_13c

    .line 89
    const/4 v3, 0x0

    .line 91
    .local v3, "tSize":I
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .local v7, "i":I
    :goto_112
    if-ltz v7, :cond_12d

    .line 92
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_128

    .line 93
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->lProvincesToInvest:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_12a

    .line 96
    :cond_128
    add-int/lit8 v3, v3, 0x1

    .line 91
    :goto_12a
    add-int/lit8 v7, v7, -0x1

    goto :goto_112

    .line 100
    .end local v7  # "i":I
    :cond_12d
    if-lez v3, :cond_13c

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiInvest:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Invest;->INVEST_LIMIT_PER_TURN:I

    if-ge p2, v5, :cond_13c

    .line 101
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->build(IIZ)Z

    move-result v5
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13b} :catch_13d

    return v5

    .line 108
    .end local v0  # "iBestProvinceID":I
    .end local v1  # "iBestProvinceID_Score":F
    .end local v2  # "randValue":I
    .end local v3  # "tSize":I
    .end local v4  # "maxInvestmentGold":I
    .end local v6  # "minNumOfInvests":I
    :cond_13c
    goto :goto_141

    .line 106
    :catch_13d
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 110
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_141
    return p3
.end method

.method public getMoney(I)J
    .registers 7
    .param p1, "nCivID"  # I

    .line 150
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->getMoney_MinReserve(I)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_15

    .line 151
    const-wide/16 v0, 0x0

    return-wide v0

    .line 154
    :cond_15
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->getMoney_MinReserve(I)J

    move-result-wide v1

    long-to-float v1, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Build/AI_Build_Invest;->fReserve:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getProvinceBuildScore(II)F
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "nProvinceID"  # I

    .line 145
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x461c4000  # 10000.0f

    sub-float/2addr v1, v0

    return v1
.end method
