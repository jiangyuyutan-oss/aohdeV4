.class Lage/of/civilizations2/jakowski/lukasz/Render$1;
.super Ljava/lang/Object;
.source "Render.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Render$DrawMoveUnits;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Render;->updateDrawMoveUnits()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMoveUnits(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 341
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_45

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Render;->DISABLE_SEA_ARMIES:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_45

    .line 342
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnitsSize()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 344
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 348
    .end local v0  # "i":I
    :cond_45
    return-void
.end method

.method public drawMoveUnits_WithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 352
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3f

    .line 353
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnitsSize()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 355
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 359
    .end local v0  # "i":I
    :cond_3f
    return-void
.end method
