.class Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$6;
.super Ljava/lang/Object;
.source "PNM.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM$DPNAM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->uDPN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dPNA(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 415
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->uDPNA()V

    .line 417
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Render;->CIV_NAMES_START_DRAWING_NAMES_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_17

    .line 418
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPNJD(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_23

    .line 421
    :cond_17
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->DRAW_PROVINCE_NAMES_ALPHA:F

    const v1, 0x3d4ccccd  # 0.05f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_23

    .line 422
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->dPNJD(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 425
    :cond_23
    :goto_23
    return-void
.end method
