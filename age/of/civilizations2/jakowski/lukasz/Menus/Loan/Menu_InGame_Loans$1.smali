.class Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Buton_Diplomacy_Loan;
.source "Menu_InGame_Loans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;IIIIIIII)V
    .registers 21
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;
    .param p2, "i"  # I
    .param p3, "iCivA"  # I
    .param p4, "iMoneyPerTurn"  # I
    .param p5, "iMoney"  # I
    .param p6, "iTurnsLeft"  # I
    .param p7, "iPosX"  # I
    .param p8, "iPosY"  # I
    .param p9, "iWidth"  # I

    .line 69
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Buton_Diplomacy_Loan;-><init>(IIIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 77
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_RepayLoan(II)V

    .line 78
    return-void
.end method

.method public actionElemPPM()V
    .registers 7

    .line 83
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;->id:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getLoan(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;->iGoldPerTurn:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;->id:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getLoan(I)Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Loan_GameData;->iTurnsLeft:I

    mul-int v0, v0, v1

    .line 85
    .local v0, "iLoanValue":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_7f

    .line 86
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;->id:I

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Loans;->repayLoan(II)V

    .line 87
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Loans(I)V

    .line 89
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "LoanRepaid"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->getCurrDate()Ljava/lang/String;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->infoDiplomacy:I

    invoke-virtual {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGameTopAll(I)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7f} :catch_80

    .line 95
    .end local v0  # "iLoanValue":I
    :cond_7f
    goto :goto_81

    .line 93
    :catch_80
    move-exception v0

    .line 96
    :goto_81
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 72
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_Loans;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
