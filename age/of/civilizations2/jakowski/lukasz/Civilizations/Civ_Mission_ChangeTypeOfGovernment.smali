.class public Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;
.super Ljava/lang/Object;
.source "Civ_Mission_ChangeTypeOfGovernment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iCost:I

.field public iToIdeologyID:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "iToIdeologyID"  # I
    .param p2, "nCivID"  # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;->iToIdeologyID:I

    .line 25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getChangeGovernmentCost(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;->iCost:I

    .line 27
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;->action(I)Z

    .line 28
    return-void
.end method


# virtual methods
.method public final action(I)Z
    .registers 10
    .param p1, "nCivID"  # I

    .line 31
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;->iCost:I

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-ltz v6, :cond_30

    .line 32
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;->iToIdeologyID:I

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->canBeAdded(II)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 33
    return v5

    .line 36
    :cond_1e
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;->iToIdeologyID:I

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->changeGovernmentType(II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 37
    return v5

    .line 40
    :cond_27
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getChangeGovernmentCost(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;->iCost:I

    .line 41
    return v4

    .line 45
    :cond_30
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Loans;->canTakeMoreLoans(I)Z

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Loans;->takeLoan_MaxValue(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;->iCost:I

    int-to-long v6, v2

    cmp-long v3, v0, v6

    if-ltz v3, :cond_75

    .line 46
    int-to-long v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvLoan:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Loan;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Loan;->LOAN_MIN_DURATION:I

    invoke-static {p1, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Loans;->takeLoan(III)V

    .line 48
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;->iToIdeologyID:I

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->canBeAdded(II)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 49
    return v5

    .line 52
    :cond_6c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Civ_Mission_ChangeTypeOfGovernment;->iToIdeologyID:I

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->changeGovernmentType(II)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 53
    return v5

    .line 58
    :cond_75
    return v4
.end method
