.class Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;
.super Ljava/lang/Object;
.source "TutorialManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$TutStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->updateDrawTutorial(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    .line 3704
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lage/of/civilizations2/jakowski/lukasz/Z_Other/Tutorial_ActionType;)Z
    .registers 6
    .param p1, "actionType"  # Lage/of/civilizations2/jakowski/lukasz/Z_Other/Tutorial_ActionType;

    .line 3728
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/Tutorial_ActionType;->NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Z_Other/Tutorial_ActionType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2c

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v0, v2, :cond_2c

    .line 3729
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->STEP_ID:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->STEP_ID:I

    .line 3730
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    iget-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->IN_TUTORIAL:Z

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->updateDrawTutorial(Z)V

    .line 3732
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/View;->eGAMES:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 3734
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->IN_TUTORIAL:Z

    .line 3735
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->gameCanBeContinued:Z

    .line 3736
    return v3

    .line 3739
    :cond_2c
    return v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I

    .line 3707
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_ce

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v0, v1, :cond_ce

    .line 3710
    :try_start_12
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->access$200(Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvincemMore_Visible()Z

    move-result v1

    if-nez v1, :cond_3b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CivInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getVisibleM()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_3b

    :cond_34
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;)I

    move-result v1

    goto :goto_42

    :cond_3b
    :goto_3b
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    :goto_42
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->access$100(Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;->drawHoverWithoutAnim(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 3712
    const/4 v0, 0x0

    .line 3713
    .local v0, "tElemID":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 3715
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_98
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->access$300(Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->INNER_STEP:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_ca

    .line 3716
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->access$300(Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$102;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->INNER_STEP:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialBox;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialBox;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_c7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_c7} :catch_cd
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_c7} :catch_cb

    .line 3715
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .end local v0  # "tElemID":I
    .end local v1  # "i":I
    :cond_ca
    goto :goto_ce

    .line 3720
    :catch_cb
    move-exception v0

    goto :goto_ce

    .line 3718
    :catch_cd
    move-exception v0

    .line 3724
    :cond_ce
    :goto_ce
    return-void
.end method
