.class Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan$2;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame_Gold;
.source "Menu_InGame_TakeLoan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;Ljava/lang/String;IIIIIIIF)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "iMin"  # I
    .param p8, "iMax"  # I
    .param p9, "iCurrent"  # I
    .param p10, "FONT_SCALE"  # F

    .line 108
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame_Gold;-><init>(Ljava/lang/String;IIIIIIIF)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 9
    .param p1, "iID"  # I

    .line 122
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v5

    invoke-static {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Loans;->takeLoan_InterestRate(III)F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 123
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v5

    invoke-static {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Loans;->takeLoan_InterestRate(III)F

    move-result v2

    mul-float v1, v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setMin(I)V

    .line 124
    return-void
.end method

.method public getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .registers 6

    .line 117
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f266666  # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public getWidthE()I
    .registers 3

    .line 111
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Loan/Menu_InGame_TakeLoan;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method
