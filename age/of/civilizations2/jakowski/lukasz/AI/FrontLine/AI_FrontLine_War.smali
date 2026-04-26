.class public Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;
.super Ljava/lang/Object;
.source "AI_FrontLine_War.java"


# instance fields
.field public i:I

.field public iFrontArmy:I

.field public iNeighboringProvincesLostScore:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "nCivID"  # I
    .param p2, "i"  # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->iFrontArmy:I

    .line 16
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    .line 17
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->getFrontLineArmy(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->iFrontArmy:I

    .line 18
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->getNeighboringProvincesLostScore(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->iNeighboringProvincesLostScore:I

    .line 19
    return-void
.end method


# virtual methods
.method public canRecruitArmy_FrontLine(I)Z
    .registers 7
    .param p1, "nCivID"  # I

    .line 43
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_18
    if-ltz v0, :cond_46

    .line 44
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_43

    .line 45
    return v1

    .line 43
    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 50
    .end local v0  # "j":I
    :cond_46
    const/4 v0, 0x0

    return v0
.end method

.method public final getEnemyRating(II)I
    .registers 5
    .param p1, "nCivID"  # I
    .param p2, "withCivID"  # I

    .line 28
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f900000  # 1.125f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getEnemyRegion_NumOfProvinces(I)I
    .registers 9
    .param p1, "nCivID"  # I

    .line 101
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v1

    .local v1, "j":I
    :goto_28
    if-ltz v1, :cond_94

    .line 102
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->getWithCivID(I)I

    move-result v4

    if-ne v2, v4, :cond_91

    .line 103
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion_NumOfProvinces()I

    move-result v0
    :try_end_90
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_90} :catch_96

    return v0

    .line 101
    :cond_91
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 109
    .end local v1  # "j":I
    :cond_94
    nop

    .line 111
    return v0

    .line 106
    :catch_96
    move-exception v1

    .line 107
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 108
    return v0
.end method

.method public final getEnemyRegion_NumOfRegions(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 116
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->getWithCivID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v0
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 117
    :catch_f
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 119
    const/4 v1, 0x1

    return v1
.end method

.method public final getEnemyRegion_Potential(I)I
    .registers 9
    .param p1, "nCivID"  # I

    .line 86
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v1

    .local v1, "j":I
    :goto_28
    if-ltz v1, :cond_94

    .line 87
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->getWithCivID(I)I

    move-result v4

    if-ne v2, v4, :cond_91

    .line 88
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotentialRegion()I

    move-result v0
    :try_end_90
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_90} :catch_96

    return v0

    .line 86
    :cond_91
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 94
    .end local v1  # "j":I
    :cond_94
    nop

    .line 96
    return v0

    .line 91
    :catch_96
    move-exception v1

    .line 92
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 93
    return v0
.end method

.method public final getFrontArmy(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->getFrontLineArmy(I)I

    move-result v0

    return v0
.end method

.method public final getFrontLineArmy(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 139
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->getFrontLineArmy(I)I

    move-result v0

    return v0
.end method

.method public final getFrontScore(I)I
    .registers 6
    .param p1, "nCivID"  # I

    .line 35
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->iNeighboringProvincesLostScore:I

    const/4 v1, 0x0

    add-int/2addr v0, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumberOfUnits()I

    move-result v2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->getWithCivID(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->getEnemyRating(II)I

    move-result v3

    if-ge v2, v3, :cond_1a

    const/16 v1, 0x14

    :cond_1a
    add-int/2addr v0, v1

    return v0
.end method

.method public final getImportance_OurRegion(I)I
    .registers 6
    .param p1, "nCivID"  # I

    .line 61
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotentialRegion()I

    move-result v0
    :try_end_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_27} :catch_28

    return v0

    .line 62
    :catch_28
    move-exception v1

    .line 63
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 64
    return v0
.end method

.method public final getImportance_Region_NumOfProvinces(I)I
    .registers 8
    .param p1, "nCivID"  # I

    .line 70
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v1

    .local v1, "j":I
    :goto_27
    if-ltz v1, :cond_93

    .line 71
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->getWithCivID(I)I

    move-result v3

    if-ne v2, v3, :cond_90

    .line 72
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion_NumOfProvinces()I

    move-result v0

    return v0

    .line 70
    :cond_90
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 75
    .end local v1  # "j":I
    :cond_93
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion_NumOfProvinces()I

    move-result v0
    :try_end_b9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_b9} :catch_ba

    return v0

    .line 76
    :catch_ba
    move-exception v1

    .line 77
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 78
    return v0
.end method

.method public final getNeighboringProvincesLostScore(I)I
    .registers 7
    .param p1, "nCivID"  # I

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "out":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_19
    if-ltz v1, :cond_48

    .line 129
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinceOfCivWasLost()I

    move-result v2

    if-lez v2, :cond_45

    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 128
    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 134
    .end local v1  # "j":I
    :cond_48
    return v0
.end method

.method public final getWithCivID(I)I
    .registers 4
    .param p1, "nCivID"  # I

    .line 24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lFrontLines:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_FrontLine_War;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/AI/FrontLine/AI_Frontline;->iWithCivID:I

    return v0
.end method
