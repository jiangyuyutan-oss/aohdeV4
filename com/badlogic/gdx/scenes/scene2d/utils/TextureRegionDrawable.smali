.class public Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.source "TextureRegionDrawable.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;


# instance fields
.field private region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 3
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 2
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 40
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V
    .registers 3
    .param p1, "drawable"  # Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    .line 45
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 46
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .registers 12
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 50
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 51
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .registers 23
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "originX"  # F
    .param p5, "originY"  # F
    .param p6, "width"  # F
    .param p7, "height"  # F
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "rotation"  # F

    .line 55
    move-object v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 56
    return-void
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 3
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 59
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 60
    if-eqz p1, :cond_14

    .line 61
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setMinWidth(F)V

    .line 62
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setMinHeight(F)V

    .line 64
    :cond_14
    return-void
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 5
    .param p1, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v0, :cond_10

    .line 74
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    .local v0, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    goto :goto_17

    .line 76
    .end local v0  # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :cond_10
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 77
    .restart local v0  # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :goto_17
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 78
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->getMinWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->getMinHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 79
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 80
    .local v1, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->getLeftWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setLeftWidth(F)V

    .line 81
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->getRightWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setRightWidth(F)V

    .line 82
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->getTopHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setTopHeight(F)V

    .line 83
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->getBottomHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setBottomHeight(F)V

    .line 84
    return-object v1
.end method
