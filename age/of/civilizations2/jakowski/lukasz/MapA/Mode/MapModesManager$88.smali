.class Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$88;
.super Ljava/lang/Object;
.source "MapModesManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    .line 4871
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$88;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRenderer(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 4874
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/RenderProvince;->drawProvincesInGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 4876
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 4877
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawHighlightProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 4879
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->updateHighlitghtProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 4880
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/RenderProvince;->drawProvincesBorder_RegionsMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 4881
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawActiveProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 4883
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Render$DrawMoveUnits;

    invoke-interface {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Render$DrawMoveUnits;->drawMoveUnits(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 4884
    return-void
.end method

.method public drawRendererMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 4904
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->drawInGame_MapDetails()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4905
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawCities_OnlyCapitals(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 4907
    :cond_d
    return-void
.end method

.method public drawRendererWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 4888
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Render$DrawMoveUnits;

    invoke-interface {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Render$DrawMoveUnits;->drawMoveUnits_WithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 4890
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->drawInGame_WithoutScale_MapDetails()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4891
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Render;->DISABLE_CITIES:Z

    if-nez v0, :cond_32

    .line 4892
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawCities_OnlyCapitals(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_32

    .line 4896
    :cond_1f
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Render;->DISABLE_CITIES:Z

    if-nez v0, :cond_32

    .line 4897
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawCities_OnlyCapitals_Images(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 4900
    :cond_32
    :goto_32
    return-void
.end method
