.class Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Core/Core$DrawMoveUnitsArmy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Core/Core;->updateDrawMoveUnitsArmy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Core/Core;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 12604
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMoveUnitsArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 21
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 12607
    move-object/from16 v0, p0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v1

    if-eqz v1, :cond_43f

    .line 12608
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnitsSize()I

    move-result v2

    if-ge v1, v2, :cond_43f

    .line 12609
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProv()Z

    move-result v2

    if-nez v2, :cond_4b

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProv()Z

    move-result v2

    if-eqz v2, :cond_43b

    .line 12610
    :cond_4b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getCivID(I)I

    move-result v3

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v2, :cond_25a

    .line 12611
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12612
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v2

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v2

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12613
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v5

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v6

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v8

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v8

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12614
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getMoveUnits_Line()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;->getMovingPercentage()F

    move-result v6

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    float-to-int v5, v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12615
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v2

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12616
    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v5

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v8

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12617
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v8

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v7

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v9

    invoke-virtual {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12618
    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getMoveUnits_Line()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;->getMovingPercentage()F

    move-result v7

    mul-float v5, v5, v7

    div-float/2addr v5, v3

    float-to-int v3, v5

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 12620
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v7, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12621
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getCivID(I)I

    move-result v8

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getNumberOfUnits()I

    move-result v9

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getUnitsWidth()I

    move-result v10

    .line 12611
    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvinceArmyWithFlag_Attack(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    goto/16 :goto_43b

    .line 12624
    :cond_25a
    iget-object v11, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12625
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v2

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12626
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeX()I

    move-result v5

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPX()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12627
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getMoveUnits_Line()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;->getMovingPercentage()F

    move-result v5

    mul-float v4, v4, v5

    div-float/2addr v4, v3

    float-to-int v4, v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v13, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12628
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12629
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getFromProviID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12630
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v5

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getToProvID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShPY()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12631
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getMoveUnits_Line()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/Line/MoveUnits_Line;->getMovingPercentage()F

    move-result v5

    mul-float v4, v4, v5

    div-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    .line 12633
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    .line 12634
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getCivID(I)I

    move-result v15

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getNumberOfUnits()I

    move-result v16

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->getUnitsWidth()I

    move-result v17

    .line 12624
    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProvArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    .line 12608
    :cond_43b
    :goto_43b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 12639
    .end local v1  # "i":I
    :cond_43f
    return-void
.end method
