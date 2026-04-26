.class Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Buton_Diplomacy_Loan;
.source "Menu_InGame_DebtRelief.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief;IIIIIIII)V
    .registers 21
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief;
    .param p2, "i"  # I
    .param p3, "iCivA"  # I
    .param p4, "iMoneyPerTurn"  # I
    .param p5, "iMoney"  # I
    .param p6, "iTurnsLeft"  # I
    .param p7, "iPosX"  # I
    .param p8, "iPosY"  # I
    .param p9, "iWidth"  # I

    .line 98
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief;

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

    .line 99
    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief$4;->id:I

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 108
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief$4;->getCurr()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief;->repayLoanID:I

    .line 109
    return-void
.end method

.method public getCheckboxSt()Z
    .registers 3

    .line 123
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief$4;->getCurr()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief;->repayLoanID:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public getCurr()I
    .registers 2

    .line 118
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief$4;->id:I

    return v0
.end method

.method public getWidthE()I
    .registers 2

    .line 103
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public setCurr(I)V
    .registers 2
    .param p1, "nCurrent"  # I

    .line 113
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Debt/Menu_InGame_DebtRelief$4;->id:I

    .line 114
    return-void
.end method
