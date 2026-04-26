.class Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_RepayLoan$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Buton_Diplomacy_Loan;
.source "Menu_InGame_RepayLoan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_RepayLoan;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_RepayLoan;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_RepayLoan;IIIIIIII)V
    .registers 21
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_RepayLoan;
    .param p2, "i"  # I
    .param p3, "iCivA"  # I
    .param p4, "iMoneyPerTurn"  # I
    .param p5, "iMoney"  # I
    .param p6, "iTurnsLeft"  # I
    .param p7, "iPosX"  # I
    .param p8, "iPosY"  # I
    .param p9, "iWidth"  # I

    .line 81
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_RepayLoan$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_RepayLoan;

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
.method public getWidthE()I
    .registers 2

    .line 84
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_RepayLoan$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_RepayLoan;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_RepayLoan;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
