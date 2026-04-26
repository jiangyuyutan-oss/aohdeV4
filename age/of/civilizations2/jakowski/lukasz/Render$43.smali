.class Lage/of/civilizations2/jakowski/lukasz/Render$43;
.super Ljava/lang/Object;
.source "Render.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Render$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Render;->updateRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRenderer(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2120
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/RenderProvince;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2121
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/RenderProvince;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2123
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Render;->DISABLE_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_19

    .line 2124
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/RenderProvince;->drawLandProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2126
    :cond_19
    return-void
.end method

.method public drawRendererMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2136
    return-void
.end method

.method public drawRendererWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2131
    return-void
.end method
