.class public Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;
.super Ljava/lang/Object;
.source "GameUpdate.java"


# static fields
.field public static LEAGUE_BUDGET:F = 0.0f

.field public static final TAXES_INFLUENCE_POP:F = 0.3f


# instance fields
.field public inflationMaxIncomeAllCivs:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 798
    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->LEAGUE_BUDGET:F

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->inflationMaxIncomeAllCivs:I

    return-void
.end method


# virtual methods
.method public clearStatus()V
    .registers 2

    .line 636
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamFriends;->clearRichPresence()V

    .line 637
    return-void
.end method

.method public final getAdministrationCost_Update(I)F
    .registers 6
    .param p1, "nCivID"  # I

    .line 765
    const/4 v0, 0x0

    .line 768
    .local v0, "tempTotal":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 769
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getAdministration_Capital(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvinceAdministrationCost(II)F

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_27

    add-float/2addr v0, v2

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 773
    .end local v1  # "i":I
    :cond_26
    goto :goto_2b

    .line 771
    :catch_27
    move-exception v1

    .line 772
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 775
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_2b
    return v0
.end method

.method public final getAdministration_Capital(I)I
    .registers 5
    .param p1, "nCivID"  # I

    .line 359
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 361
    .local v0, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_18

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_1c

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v2

    :cond_1c
    :goto_1c
    return v2
.end method

.method public final getBalanceCivId(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 729
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncome(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getExpenses(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getBalance_UpdateBudgetPrepare(I)V
    .registers 9
    .param p1, "nCivID"  # I

    .line 804
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 806
    .local v0, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    .line 807
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    .line 808
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->administrationCosts:I

    .line 810
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getAdministration_Capital(I)I

    move-result v1

    .line 811
    .local v1, "nCapital":I
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->taxIncome_Modifier(I)F

    move-result v2

    .line 813
    .local v2, "incomeModifier":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v4

    if-ge v3, v4, :cond_6b

    .line 814
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    .line 816
    .local v4, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {p0, v5, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeTaxation(IIF)F

    move-result v5

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    .line 817
    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {p0, v5, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeProduction(IIF)F

    move-result v5

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    .line 818
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    add-float/2addr v5, v6

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvinceAdministrationCost(II)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->administrationCost:F

    .line 820
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    int-to-float v5, v5

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    .line 821
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    int-to-float v5, v5

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    .line 822
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->administrationCosts:I

    int-to-float v5, v5

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->administrationCost:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->administrationCosts:I

    .line 813
    .end local v4  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 826
    .end local v3  # "i":I
    :cond_6b
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncome(I)F

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->administrationCosts:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBudget:I

    .line 827
    return-void
.end method

.method public final getEmploymentPopulation(I)I
    .registers 5
    .param p1, "nCivID"  # I

    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 423
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvince_EmploymentPopulation(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 426
    .end local v1  # "i":I
    :cond_20
    return v0
.end method

.method public final getExpenses(I)F
    .registers 5
    .param p1, "nCivID"  # I

    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, "tempTotal":F
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->administrationCosts:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 493
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeep_Total(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 494
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBudget:I

    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getInvestments_Total(II)F

    move-result v1

    add-float/2addr v0, v1

    .line 495
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBudget:I

    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getGoodsSpending(II)F

    move-result v1

    add-float/2addr v0, v1

    .line 496
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getInflationInterestCost(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 497
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getInflation(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 498
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getLoans_GoldTotalPerTurn()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 499
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getLoansFromCiv_GoldTotalPerTurn()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 501
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    return v1
.end method

.method public final getExpenses_Budget(I)F
    .registers 5
    .param p1, "nCivID"  # I

    .line 525
    const/4 v0, 0x0

    .line 527
    .local v0, "tempTotal":F
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->administrationCosts:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 529
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    return v1
.end method

.method public getFriendName(Lcom/codedisaster/steamworks/SteamID;)Ljava/lang/String;
    .registers 3
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;

    .line 276
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamFriends;->getFriendPersonaName(Lcom/codedisaster/steamworks/SteamID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;)I
    .registers 3
    .param p1, "friendFlag"  # Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 537
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamFriends;->getFriendCount(Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;)I

    move-result v0

    return v0
.end method

.method public final getGoodsSpending(II)F
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "iBudget"  # I

    .line 685
    int-to-float v0, p2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public final getHappinessChange_ByTaxation(I)F
    .registers 6
    .param p1, "nCivID"  # I

    .line 27
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;->HAPPINESS_CHANGE_BASE:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 28
    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getAcceptableTaxation(II)F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getAcceptableTaxation(II)F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v3

    mul-float v2, v2, v3

    const v3, 0x41add70a  # 21.73f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000  # 100.0f

    mul-float v1, v1, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLvl()F

    move-result v3

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;->HAPPINESS_CHANGE_MODIFIER:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 27
    return v0
.end method

.method public final getHappinessChange_ByTaxation_Occupied(I)F
    .registers 6
    .param p1, "nCivID"  # I

    .line 33
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;->HAPPINESS_CHANGE_BASE_OCCUPIED:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 34
    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getAcceptableTaxation(II)F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getAcceptableTaxation(II)F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v3

    mul-float v2, v2, v3

    const v3, 0x41add70a  # 21.73f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000  # 100.0f

    mul-float v1, v1, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLvl()F

    move-result v3

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Taxation;->HAPPINESS_CHANGE_MODIFIER:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 33
    return v0
.end method

.method public getImageHeight(I)I
    .registers 3
    .param p1, "image"  # I

    .line 229
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageHeight(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth(I)I
    .registers 3
    .param p1, "image"  # I

    .line 225
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtils;->getImageWidth(I)I

    move-result v0

    return v0
.end method

.method public final getIncome(I)F
    .registers 4
    .param p1, "nCivID"  # I

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "tempTotal":F
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 205
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 207
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncome_FromVassalsOfCiv(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 208
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncome_Debuff_IsVassal(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 210
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncome_BuffWarReparations(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 211
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncome_DebuffWarReparations(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 213
    float-to-int v1, v0

    int-to-float v1, v1

    return v1
.end method

.method public final getIncomeVassals(II)F
    .registers 4
    .param p1, "nForCivID"  # I
    .param p2, "nIsVassal"  # I

    .line 255
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    if-ne v0, p1, :cond_11

    .line 256
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getVassalizationMoney(I)F

    move-result v0

    return v0

    .line 259
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final getIncome_BuffWarReparations(I)F
    .registers 5
    .param p1, "nCivID"  # I

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "tempTotal":F
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarReparationsGetsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_23

    .line 54
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarReparationsGets(I)Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getWarReparations_Money(I)F

    move-result v2

    add-float/2addr v0, v2

    .line 53
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 57
    .end local v1  # "i":I
    :cond_23
    return v0
.end method

.method public final getIncome_DebuffWarReparations(I)F
    .registers 5
    .param p1, "nCivID"  # I

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "tempTotal":F
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarReparationsPaysSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_17

    .line 44
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getWarReparations_Money(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 43
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 47
    .end local v1  # "i":I
    :cond_17
    return v0
.end method

.method public final getIncome_Debuff_IsVassal(I)F
    .registers 3
    .param p1, "nCivID"  # I

    .line 407
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 408
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncomeVassals(II)F

    move-result v0

    neg-float v0, v0

    return v0

    .line 411
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final getIncome_FromVassalsOfCiv(I)F
    .registers 5
    .param p1, "nCivID"  # I

    .line 506
    const/4 v0, 0x0

    .line 508
    .local v0, "tempTotal":F
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_2d

    .line 509
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {p0, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncomeVassals(II)F

    move-result v2

    add-float/2addr v0, v2

    .line 508
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 520
    .end local v1  # "i":I
    :cond_2d
    return v0
.end method

.method public final getIncome_TaxesLevel(I)F
    .registers 4
    .param p1, "nCivID"  # I

    .line 221
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncome_TaxesLevel_Taxation(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getIncome_TaxesLevel_Production(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getIncome_TaxesLevel_Production(I)F
    .registers 5
    .param p1, "nCivID"  # I

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "tempTotal":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 246
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeProduction(I)F

    move-result v2

    add-float/2addr v0, v2

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 249
    .end local v1  # "i":I
    :cond_20
    return v0
.end method

.method public final getIncome_TaxesLevel_Taxation(I)F
    .registers 5
    .param p1, "nCivID"  # I

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "tempTotal":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 236
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeTaxation(I)F

    move-result v2

    add-float/2addr v0, v2

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 239
    .end local v1  # "i":I
    :cond_20
    return v0
.end method

.method public final getInflation(I)F
    .registers 8
    .param p1, "nCivID"  # I

    .line 735
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    long-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->INFLATION_MIN_GOLD_IN_TREASURY:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    .line 736
    return v2

    .line 740
    :cond_15
    :try_start_15
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->inflationMaxIncomeAllCivs:I

    int-to-float v1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->INFLATION_MAX_TREASURY_MODIFIER:F

    mul-float v1, v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->INFLATION_CIV_INCOME_MODIFIER:F

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->INFLATION_GOLD_MODIFIER:F

    mul-float v1, v1, v3

    div-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->INFLATION_STARTS_AT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_82

    .line 741
    const/high16 v0, 0x3f800000  # 1.0f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v3

    long-to-float v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v3

    long-to-float v3, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->inflationMaxIncomeAllCivs:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->INFLATION_GOLD_MODIFIER:F

    mul-float v4, v4, v5

    div-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->INFLATION_STARTS_AT:F

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v2, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->INFLATION_VALUE_MODIFIER:F
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_7e} :catch_84

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    return v1

    .line 745
    :cond_82
    nop

    .line 748
    return v2

    .line 743
    :catch_84
    move-exception v0

    .line 744
    .local v0, "ex":Ljava/lang/Exception;
    return v2
.end method

.method public final getInflationInterestCost(I)F
    .registers 7
    .param p1, "nCivID"  # I

    .line 756
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_3d

    .line 757
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->INTEREST_RATE_TREASURY_PERC:F

    mul-float v0, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBudget:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->INTEREST_RATE_BUDGET_PERC:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 760
    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method public final getInflationPerc(I)F
    .registers 5
    .param p1, "nCivID"  # I

    .line 752
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getInflation(I)F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final getInvestmentsSpending(II)F
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "iBudget"  # I

    .line 288
    int-to-float v0, p2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public final getInvestments_Total(II)F
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "iBudget"  # I

    .line 270
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getResearchSpending(II)F

    move-result v0

    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getInvestmentsSpending(II)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getMaxProvEconomy(I)F
    .registers 8
    .param p1, "nProvinceID"  # I

    .line 477
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 478
    .local v0, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 480
    .local v1, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncome:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;->EMPLOYMENT_PER_ECONOMY_INCOME_PRODUCTION:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->DEVELOPMENT_EMPLOYMENT_BONUS_PER_DEV:F

    .line 481
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->TECH_EMPLOYMENT_BONUS_PER_TECH_LEVEL:F

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    .line 480
    return v2
.end method

.method public final getMilitarySpending(II)I
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "iBudget"  # I

    .line 193
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeep_Total(I)F

    move-result v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getMilitarySpending2(II)F
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "iBudget"  # I

    .line 197
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeep_Total(I)F

    move-result v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final getMilitaryUpkeepDefensivePosition(I)F
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 143
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDefensivePosition:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DefensivePosition;->DEFENSIVE_POSITION_MILITARY_UPKEEP_PER_TUR:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDefensivePosition()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public final getMilitaryUpkeepP(II)F
    .registers 4
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I

    .line 350
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(III)F

    move-result v0

    return v0
.end method

.method public final getMilitaryUpkeepP(III)F
    .registers 11
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I
    .param p3, "nCivID"  # I

    .line 118
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 119
    .local v0, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 121
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    int-to-float v2, p2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_MilitaryUpkeep(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_MIN:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_DEVELOPMENT:F

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_TECHNOLOGY_LEVEL:F

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    .line 122
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getMilitaryUpkeep(I)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    .line 123
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v3, v5, p3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getMilitaryUpkeep(II)F

    move-result v3

    mul-float v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 124
    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_TreasuryModifier_MilitaryUpkeep(I)F

    move-result v3

    mul-float v2, v2, v3

    .line 125
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_CIV_PROVINCES_SHARE_PERC_OF_ALL:F

    mul-float v3, v3, v5

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarWeariness()F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_MilitaryUpkeep()F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfSupply()I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getSupply_Bonus(I)F

    move-result v5

    sub-float/2addr v3, v5

    mul-float v2, v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v2, v2, v3

    .line 127
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepDefensivePosition(I)F

    move-result v3

    sub-float/2addr v4, v3

    mul-float v2, v2, v4

    .line 121
    return v2
.end method

.method public final getMilitaryUpkeep_PlusMoveUnits(II)F
    .registers 5
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I

    .line 354
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_NumFromProvince(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(III)F

    move-result v0

    return v0
.end method

.method public final getMilitaryUpkeep_Total(I)F
    .registers 6
    .param p1, "nCivID"  # I

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "tempTotal":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 73
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(II)F

    move-result v2

    add-float/2addr v0, v2

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    .end local v1  # "i":I
    :cond_20
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_21
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 77
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProviP(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(II)F

    move-result v2

    add-float/2addr v0, v2

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 80
    .end local v1  # "i":I
    :cond_3f
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_40
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->moveUnitsSize()I

    move-result v2

    if-ge v1, v2, :cond_70

    .line 81
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getNumberOfUnits()I

    move-result v3

    invoke-virtual {p0, v2, v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(III)F

    move-result v2

    add-float/2addr v0, v2

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 84
    .end local v1  # "i":I
    :cond_70
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_71
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunderSize()I

    move-result v2

    if-ge v1, v2, :cond_a1

    .line 85
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunder(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getFromProvinceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunder(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_Plunder;->getNumOfUnits()I

    move-result v3

    invoke-virtual {p0, v2, v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(III)F

    move-result v2

    add-float/2addr v0, v2

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 88
    .end local v1  # "i":I
    :cond_a1
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    return v1
.end method

.method public final getMilitaryUpkeep_WithAllRecruitmentsInProcess(III)F
    .registers 10
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I
    .param p3, "nCivID"  # I

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "out":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 95
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmySize()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 96
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v3

    if-eq v3, p1, :cond_2f

    .line 97
    int-to-float v3, v0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v5

    invoke-virtual {p0, v4, v5, p3}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(III)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 95
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 101
    .end local v2  # "i":I
    :cond_32
    int-to-float v2, v0

    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(III)F

    move-result v3

    add-float/2addr v2, v3

    return v2
.end method

.method public final getMilitaryUpkeep_WithAllRecruitmentsInProcess_Disband(III)F
    .registers 10
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I
    .param p3, "nCivID"  # I

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "out":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 108
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmySize()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 109
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v3

    if-eq v3, p1, :cond_2f

    .line 110
    int-to-float v3, v0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getProvinceID()I

    move-result v4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy;->getArmy()I

    move-result v5

    invoke-virtual {p0, v4, v5, p3}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(III)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 108
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 114
    .end local v2  # "i":I
    :cond_32
    int-to-float v2, v0

    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitaryUpkeepP(III)F

    move-result v3

    sub-float/2addr v2, v3

    return v2
.end method

.method public final getMilitaryUpkeep_WithoutDefensivePosition(III)F
    .registers 11
    .param p1, "nProvinceID"  # I
    .param p2, "nArmy"  # I
    .param p3, "nCivID"  # I

    .line 131
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 132
    .local v0, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 134
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    int-to-float v2, p2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_MilitaryUpkeep(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_MIN:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_DEVELOPMENT:F

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_TECHNOLOGY_LEVEL:F

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    .line 135
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getMilitaryUpkeep(I)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    .line 136
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v3, v5, p3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getMilitaryUpkeep(II)F

    move-result v3

    mul-float v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 137
    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_TreasuryModifier_MilitaryUpkeep(I)F

    move-result v3

    mul-float v2, v2, v3

    .line 138
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMilitary:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Military;->UPKEEP_CIV_PROVINCES_SHARE_PERC_OF_ALL:F

    mul-float v3, v3, v5

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarWeariness()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_MilitaryUpkeep()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfSupply()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getSupply_Bonus(I)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v2, v2, v3

    .line 134
    return v2
.end method

.method public getPlayerName()Ljava/lang/String;
    .registers 2

    .line 533
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamFriends;->getPersonaName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProvIncomeAndExpenses_Total(I)F
    .registers 5
    .param p1, "nProvinceID"  # I

    .line 149
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeTaxation(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeProduction(I)F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    if-ltz v1, :cond_38

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvinceAdministrationCost(II)F

    move-result v1

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    sub-float/2addr v0, v1

    return v0
.end method

.method public final getProvIncomeProduction(I)F
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 689
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->taxIncome_Modifier(I)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeProduction(IIF)F

    move-result v0

    return v0
.end method

.method public final getProvIncomeProduction(IIF)F
    .registers 12
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "incomeModifer"  # F

    .line 431
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 432
    .local v0, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 434
    .local v1, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_f3

    .line 435
    nop

    .line 436
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v2

    int-to-float v2, v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncome:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;->EMPLOYMENT_PER_ECONOMY_INCOME_PRODUCTION:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->DEVELOPMENT_EMPLOYMENT_BONUS_PER_DEV:F

    .line 437
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->TECH_EMPLOYMENT_BONUS_PER_TECH_LEVEL:F

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    mul-float v2, v2, v5

    .line 438
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v5

    int-to-float v5, v5

    .line 436
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 440
    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_IncomeProductionBase(I)F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_IncomeProduction_PerDev(I)F

    move-result v6

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    mul-float v2, v2, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->BASE_PRODUCTION_EFFICIENCY:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PRODUCTION_EFFICIENCY_PER_TECH_LVL:F

    .line 442
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PRODUCTION_EFFICIENCY_PER_DEVELOPMENT:F

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    mul-float v2, v2, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PROV_STABILITY_BASE:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PROV_STABILITY_MODIFIER:F

    .line 445
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    mul-float v2, v2, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 446
    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_TreasuryModifier_Production(I)F

    move-result v5

    mul-float v2, v2, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    .line 448
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {v5, v6, p2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIncomeProduction(II)F

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getPort_IncomeProduction(I)F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_IncomeProduction()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v6

    if-eqz v6, :cond_c2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->CAPITAL_PRODUCTION_BONUS_MODIFIER:F

    :cond_c2
    add-float/2addr v5, v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWorkshop()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getWorkshop_IncomeProduction(I)F

    move-result v4

    add-float/2addr v5, v4

    mul-float v2, v2, v5

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->TAXATION_LEVEL_INFLUENCE_PRODUCTION:F

    sub-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->TAXATION_LEVEL_INFLUENCE_PRODUCTION:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 449
    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLvl()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    mul-float v2, v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->OCCUPIED_PROVINCE_INCOME_PRODUCTION_MODIFIER:F

    mul-float v2, v2, v3

    .line 435
    return v2

    .line 457
    :cond_f3
    nop

    .line 458
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v2

    int-to-float v2, v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncome:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;->EMPLOYMENT_PER_ECONOMY_INCOME_PRODUCTION:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->DEVELOPMENT_EMPLOYMENT_BONUS_PER_DEV:F

    .line 459
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->TECH_EMPLOYMENT_BONUS_PER_TECH_LEVEL:F

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    mul-float v2, v2, v5

    .line 460
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v5

    int-to-float v5, v5

    .line 458
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 462
    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_IncomeProductionBase(I)F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_IncomeProduction_PerDev(I)F

    move-result v6

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    mul-float v2, v2, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->BASE_PRODUCTION_EFFICIENCY:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PRODUCTION_EFFICIENCY_PER_TECH_LVL:F

    .line 464
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PRODUCTION_EFFICIENCY_PER_DEVELOPMENT:F

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    mul-float v2, v2, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PROV_STABILITY_BASE:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->PROV_STABILITY_MODIFIER:F

    .line 467
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    mul-float v2, v2, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 468
    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_TreasuryModifier_Production(I)F

    move-result v5

    mul-float v2, v2, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    .line 470
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {v5, v6, p2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIncomeProduction(II)F

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfPort()I

    move-result v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getPort_IncomeProduction(I)F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_IncomeProduction()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v6

    if-eqz v6, :cond_196

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->CAPITAL_PRODUCTION_BONUS_MODIFIER:F

    :cond_196
    add-float/2addr v5, v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfWorkshop()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getWorkshop_IncomeProduction(I)F

    move-result v4

    add-float/2addr v5, v4

    mul-float v2, v2, v5

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->TAXATION_LEVEL_INFLUENCE_PRODUCTION:F

    sub-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeProduction:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeProduction;->TAXATION_LEVEL_INFLUENCE_PRODUCTION:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 471
    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLvl()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    mul-float v2, v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v2, v2, v3

    .line 457
    return v2
.end method

.method public final getProvIncomeTaxation(I)F
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 153
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->taxIncome_Modifier(I)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvIncomeTaxation(IIF)F

    move-result v0

    return v0
.end method

.method public final getProvIncomeTaxation(IIF)F
    .registers 12
    .param p1, "nProvinceID"  # I
    .param p2, "nCivID"  # I
    .param p3, "incomeModifier"  # F

    .line 157
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 158
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getAdministration_Capital(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvinceAdministrationCost(II)F

    move-result v0

    return v0

    .line 161
    :cond_17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->wonderBuilt:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWonder:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Wonder;->INCOME_TAXATION:F

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 162
    :goto_2a
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvince_EmploymentPopulation(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 163
    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_IncomeTaxationBase(I)F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_IncomeTaxation_PerTechnology(I)F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v5

    mul-float v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->TECHNOLOGY_LEVEL_TAX_INCOME_MULTIPLIER:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    float-to-double v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->EMPLOYED_POPULATION_TAX_EXPONENT:F

    float-to-double v4, v4

    .line 162
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 165
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvUnemploymentPopulation(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 166
    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_IncomeTaxationBase(I)F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_IncomeTaxation_PerTechnology(I)F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v7

    mul-float v6, v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->TECHNOLOGY_LEVEL_TAX_INCOME_MULTIPLIER:F

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-double v4, v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->UNEMPLOYED_TAX_EXPONENT:F

    float-to-double v6, v6

    .line 165
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 168
    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_TreasuryModifier(I)F

    move-result v3

    mul-float v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->PROV_STABILITY_TAX_BASE:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->PROV_STABILITY_TAX_MODIFIER:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 169
    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 171
    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLvlOfMarket()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/BuildingsManager;->getMarket_IncomeTaxation(I)F

    move-result v4

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 172
    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_IncomeTaxation()F

    move-result v4

    add-float/2addr v3, v4

    .line 173
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v4

    if-eqz v4, :cond_f1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->CAPITAL_TAX_BONUS_MODIFIER:F

    :cond_f1
    add-float/2addr v3, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->PROV_HAPPINESS_TAX_BASE_PENALTY:F

    add-float/2addr v3, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncomeTaxation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_IncomeTaxation;->PROV_HAPPINESS_TAX_MODIFIER_PER_HAPPINESS:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 174
    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v4

    mul-float v1, v1, v4

    add-float/2addr v3, v1

    mul-float v2, v2, v3

    const v1, 0x3f333333  # 0.7f

    const v3, 0x3e99999a  # 0.3f

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 176
    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLvl()F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v4, v1

    mul-float v2, v2, v4

    mul-float v2, v2, p3

    const/high16 v1, 0x3f800000  # 1.0f

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 178
    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sanctionsImpact:F

    sub-float/2addr v1, v3

    mul-float v2, v2, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 161
    return v0
.end method

.method public final getProvUnemploymentPopulation(I)I
    .registers 4
    .param p1, "nProvinceID"  # I

    .line 416
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvince_EmploymentPopulation(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getProvinceAdministrationCost(II)F
    .registers 10
    .param p1, "nProvinceID"  # I
    .param p2, "nCapital"  # I

    .line 779
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 781
    .local v0, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMaxProvEconomy(I)F

    move-result v1

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_PER_ECONOMY:F

    mul-float v1, v1, v2

    .line 783
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_PER_POP_DEVELOPMENT_BASE:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_POP_PER_DEVELOPMENT_MODIFIER:F

    .line 784
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    float-to-double v1, v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_GROWTH_EXPONENT:F

    float-to-double v4, v4

    .line 781
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 786
    invoke-static {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Distance;->getDistanceFromCapital_PercOfMax(II)F

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_DISTANCE_DIVISOR_BASE:F

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_DISTANCE_DIVISOR_PER_STABILITY_MODIFIER:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    div-float/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 787
    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_AdministrationCost_Distance(I)F

    move-result v4

    mul-float v2, v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_HAPPINESS_ADJUSTMENT:F

    add-float/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_HAPPINESS_ADJUSTMENT:F

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v5

    mul-float v4, v4, v5

    sub-float/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_DISTANCE:F

    mul-float v2, v2, v4

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_TAXATION_BASE:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_TAXATION_MODIFIER:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 789
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLvl()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAdministration:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Administration;->ADMIN_COST_TAXATION_STABILITY_MODIFIER:F

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v5

    sub-float v5, v3, v5

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    mul-float v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 791
    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_TreasuryModifier_Administration(I)F

    move-result v2

    mul-float v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 792
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getAdministration(II)F

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_Administation()F

    move-result v4

    add-float/2addr v2, v4

    mul-float v1, v1, v2

    .line 794
    if-ne p1, p2, :cond_112

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_CAPITAL:F

    :cond_112
    mul-float v1, v1, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v1, v1, v2

    .line 781
    return v1
.end method

.method public final getProvince_EmploymentPopulation(I)I
    .registers 8
    .param p1, "nProvinceID"  # I

    .line 183
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 185
    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncome:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;->EMPLOYMENT_PER_ECONOMY_POPULATION_TAXATION:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncome:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;->EMPLOYMENT_DEV_MODIFIER:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 186
    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvIncome:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Income;->EMPLOYMENT_TECH_MODIFIER:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    .line 183
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final getResearchSpending(II)F
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "iBudget"  # I

    .line 681
    int-to-float v0, p2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingResearchB()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public final getUnemploymentPop(I)I
    .registers 5
    .param p1, "nCivID"  # I

    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 673
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getProvUnemploymentPopulation(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 672
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 676
    .end local v1  # "i":I
    :cond_20
    return v0
.end method

.method public final getVassalizationMoney(I)F
    .registers 5
    .param p1, "nVassalID"  # I

    .line 263
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getVassal_Tribute(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public final getWarReparations_Money(I)F
    .registers 4
    .param p1, "nCivID"  # I

    .line 63
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPeaceTreaty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PeaceTreaty;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PeaceTreaty;->PERCENTAGE_OF_INCOME_FOR_WAR_REPARATIONS:F

    mul-float v0, v0, v1

    return v0
.end method

.method public openCommunity(Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;)V
    .registers 3
    .param p1, "dialog"  # Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 284
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamFriends;->activateGameOverlay(Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;)V

    .line 285
    return-void
.end method

.method public openFriendsOverlay(Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;)V
    .registers 3
    .param p1, "dialog"  # Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 280
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamFriends;->activateGameOverlay(Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;)V

    .line 281
    return-void
.end method

.method public openProfile(Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;Lcom/codedisaster/steamworks/SteamID;)V
    .registers 4
    .param p1, "dialog"  # Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;
    .param p2, "steamID"  # Lcom/codedisaster/steamworks/SteamID;

    .line 542
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    invoke-virtual {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamFriends;->activateGameOverlayToUser(Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;Lcom/codedisaster/steamworks/SteamID;)V

    .line 543
    return-void
.end method

.method public openWeb(Ljava/lang/String;Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;)V
    .registers 4
    .param p1, "url"  # Ljava/lang/String;
    .param p2, "mode"  # Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    .line 546
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    invoke-virtual {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamFriends;->activateGameOverlayToWebPage(Ljava/lang/String;Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;)V

    .line 547
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 4
    .param p1, "status"  # Ljava/lang/String;

    .line 628
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamFriends;->setRichPresence(Ljava/lang/String;Ljava/lang/String;)Z

    .line 629
    return-void
.end method

.method public taxIncome_Modifier(I)F
    .registers 3
    .param p1, "nCivID"  # I

    .line 369
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 370
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    packed-switch v0, :pswitch_data_4c

    goto :goto_2b

    .line 380
    :pswitch_12  #0x4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDifficulty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_PLAYER_LEGENDARY:F

    return v0

    .line 378
    :pswitch_17  #0x3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDifficulty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_PLAYER_EXTREME:F

    return v0

    .line 376
    :pswitch_1c  #0x2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDifficulty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_PLAYER_HARD:F

    return v0

    .line 374
    :pswitch_21  #0x1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDifficulty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_PLAYER_NORMAL:F

    return v0

    .line 372
    :pswitch_26  #0x0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDifficulty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_PLAYER_BEGINNER:F

    return v0

    .line 386
    :cond_2b
    :goto_2b
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    packed-switch v0, :pswitch_data_5a

    .line 400
    const/high16 v0, 0x3f800000  # 1.0f

    return v0

    .line 396
    :pswitch_33  #0x4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDifficulty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_NON_PLAYER_LEGENDARY:F

    return v0

    .line 394
    :pswitch_38  #0x3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDifficulty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_NON_PLAYER_EXTREME:F

    return v0

    .line 392
    :pswitch_3d  #0x2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDifficulty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_NON_PLAYER_HARD:F

    return v0

    .line 390
    :pswitch_42  #0x1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDifficulty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_NON_PLAYER_NORMAL:F

    return v0

    .line 388
    :pswitch_47  #0x0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDifficulty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Difficulty;->TAX_INCOME_MODIFIER_NON_PLAYER_BEGINNER:F

    return v0

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_21  #00000001
        :pswitch_1c  #00000002
        :pswitch_17  #00000003
        :pswitch_12  #00000004
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_47  #00000000
        :pswitch_42  #00000001
        :pswitch_3d  #00000002
        :pswitch_38  #00000003
        :pswitch_33  #00000004
    .end packed-switch
.end method

.method public final updateCivs_Money()V
    .registers 7

    .line 605
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 606
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getBalance_UpdateBudgetPrepare(I)V

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 611
    .end local v0  # "i":I
    :cond_f
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_10
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 612
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 614
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-lez v2, :cond_37

    .line 615
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getBalanceCivId(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 616
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateLoansNextTurn()V

    .line 617
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateLoansFromCivNextTurn()V

    .line 611
    .end local v1  # "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 624
    .end local v0  # "i":I
    :cond_3a
    return-void
.end method

.method public final updateInflationPeakValueAllCivs()V
    .registers 6

    .line 574
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->inflationMaxIncomeAllCivs:I

    .line 576
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 577
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_56

    .line 578
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->inflationMaxIncomeAllCivs:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->inflationMaxIncomeAllCivs:I

    .line 580
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->LEAGUE_BUDGET:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->administrationCosts:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->LEAGUE_BUDGET:F

    .line 576
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 584
    .end local v0  # "i":I
    :cond_59
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->LEAGUE_BUDGET:F

    const v1, 0x3f666666  # 0.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->LEAGUE_BUDGET:F

    .line 586
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_65
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_b2

    .line 587
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_af

    .line 588
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeTaxation:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->incomeProduction:I

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->administrationCosts:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->LEAGUE_BUDGET:F

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000  # 10.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iLeague:I

    .line 586
    :cond_af
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 593
    .end local v0  # "i":I
    :cond_b2
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    if-nez v0, :cond_104

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PXSX:Z

    if-nez v0, :cond_104

    .line 594
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_bb
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_104

    .line 595
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getInflationPerc(I)F

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInflation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Inflation;->SEND_HIGH_INFLATION_MESS_IF_OVER:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_101

    .line 596
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_HighInflation;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-direct {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_HighInflation;-><init>(II)V

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 594
    :cond_101
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 600
    .end local v0  # "i":I
    :cond_104
    return-void
.end method

.method public final updatePlayableProvinces()V
    .registers 6

    .line 550
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->PLAYABLE_PROVINCES:I

    .line 552
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_31

    .line 553
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v2

    if-nez v2, :cond_2e

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v2

    if-gez v2, :cond_2e

    .line 554
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->PLAYABLE_PROVINCES:I

    add-int/2addr v4, v3

    iput v4, v2, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->PLAYABLE_PROVINCES:I

    .line 552
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 558
    .end local v0  # "i":I
    :cond_31
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    .line 560
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_36
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 561
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_51

    .line 562
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    add-int/2addr v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    .line 560
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 566
    .end local v0  # "i":I
    :cond_54
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    .line 567
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->updateMinRivals()V

    .line 568
    return-void
.end method

.method public updatePresence(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 632
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->uSF:Lcom/codedisaster/steamworks/SteamFriends;

    invoke-virtual {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamFriends;->setRichPresence(Ljava/lang/String;Ljava/lang/String;)Z

    .line 633
    return-void
.end method

.method public final updateProvinceStabilityAllProvinces()V
    .registers 6

    .line 693
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 694
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 696
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 697
    const/4 v2, 0x0

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    .line 693
    .end local v1  # "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 700
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_1b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 701
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 703
    .local v1, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v2

    if-nez v2, :cond_51

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v2

    if-gez v2, :cond_51

    .line 704
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvStability()V

    .line 706
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    if-lez v2, :cond_51

    .line 707
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    .line 700
    .end local v1  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 713
    .end local v0  # "i":I
    :cond_54
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_55
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_95

    .line 714
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 716
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_6b
    if-ltz v2, :cond_87

    .line 717
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAssimilateOrganized(I)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 718
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 716
    :cond_84
    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    .line 722
    .end local v2  # "j":I
    :cond_87
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setStabilityCiv(F)V

    .line 713
    .end local v1  # "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 724
    .end local v0  # "i":I
    :cond_95
    return-void
.end method

.method public final updatePrvStability()V
    .registers 7

    .line 641
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_PROVINCE_STABILITY:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_9
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 642
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 644
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 645
    const/4 v2, 0x0

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    .line 641
    .end local v1  # "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_PROVINCE_STABILITY:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 648
    .end local v0  # "i":I
    :cond_25
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_PROVINCE_STABILITY:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .restart local v0  # "i":I
    :goto_2e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_7e

    .line 649
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_37
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 650
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    .line 652
    .local v2, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v3

    if-nez v3, :cond_75

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v3

    if-gez v3, :cond_75

    .line 653
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvStability()V

    .line 655
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    .line 649
    .end local v2  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 648
    .end local v1  # "j":I
    :cond_78
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_PROVINCE_STABILITY:I

    add-int/2addr v0, v1

    goto :goto_2e

    .line 661
    .end local v0  # "i":I
    :cond_7e
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_PROVINCE_STABILITY:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .restart local v0  # "i":I
    :goto_87
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_a6

    .line 662
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 664
    .local v1, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setStabilityCiv(F)V

    .line 661
    .end local v1  # "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_PROVINCE_STABILITY:I

    add-int/2addr v0, v1

    goto :goto_87

    .line 666
    .end local v0  # "i":I
    :cond_a6
    return-void
.end method

.method public final updateSpendingOfCivID(II)V
    .registers 12
    .param p1, "nCivID"  # I
    .param p2, "iBudget"  # I

    .line 292
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 294
    .local v0, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    if-eqz v1, :cond_15

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PXSX:Z

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 295
    return-void

    .line 298
    :cond_15
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE_AI:Z

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-nez v1, :cond_20

    .line 299
    return-void

    .line 302
    :cond_20
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    if-ltz v1, :cond_ef

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_ef

    .line 303
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTechnology:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MIN_MONEY_REQUIRED_TO_ENABLE_RESEARCH:I

    int-to-long v3, v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_3d

    .line 304
    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingResearchB(F)V

    .line 307
    :cond_3d
    if-gtz p2, :cond_48

    .line 308
    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingGoodsB(F)V

    .line 309
    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingResearchB(F)V

    .line 310
    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingInvestmentsB(F)V

    .line 313
    :cond_48
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getMilitarySpending(II)I

    move-result v1

    .line 315
    .local v1, "tempMilitary":I
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiBudget:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;->BUDGET_MAX:I

    if-le v2, v4, :cond_66

    .line 316
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiBudget:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;->BUDGET_MAX:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingGoodsB(F)V

    .line 319
    :cond_66
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 321
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingResearchB()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    add-int/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiBudget:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;->BUDGET_MAX:I

    if-le v2, v4, :cond_ef

    .line 322
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiBudget:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;->BUDGET_MAX:I

    if-le v1, v2, :cond_91

    .line 323
    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingResearchB(F)V

    .line 324
    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingInvestmentsB(F)V

    .line 325
    return-void

    .line 328
    :cond_91
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingResearchB()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAiBudget:Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/AI/GV_AI_Budget;->BUDGET_MAX:I

    sub-int/2addr v2, v4

    .line 330
    .local v2, "overBudget":I
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingResearchB()F

    move-result v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 331
    .local v4, "tempBef":I
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingResearchB()F

    move-result v6

    int-to-float v7, v2

    const/high16 v8, 0x40000000  # 2.0f

    div-float/2addr v7, v8

    div-float/2addr v7, v3

    sub-float/2addr v6, v7

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingResearchB(F)V

    .line 333
    int-to-float v6, v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingResearchB()F

    move-result v7

    mul-float v7, v7, v3

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v2, v6

    .line 335
    int-to-float v6, v2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v7

    mul-float v7, v7, v3

    cmpg-float v6, v6, v7

    if-gez v6, :cond_da

    .line 336
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v5

    int-to-float v6, v2

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingInvestmentsB(F)V

    goto :goto_ef

    .line 338
    :cond_da
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    sub-int/2addr v2, v6

    .line 339
    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingInvestmentsB(F)V

    .line 341
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingResearchB()F

    move-result v5

    int-to-float v6, v2

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingResearchB(F)V

    .line 345
    .end local v1  # "tempMilitary":I
    .end local v2  # "overBudget":I
    .end local v4  # "tempBef":I
    :cond_ef
    :goto_ef
    return-void
.end method
