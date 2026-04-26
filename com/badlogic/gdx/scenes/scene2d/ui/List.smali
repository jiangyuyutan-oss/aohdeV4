.class public Lcom/badlogic/gdx/scenes/scene2d/ui/List;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "List.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;"
    }
.end annotation


# instance fields
.field private alignment:I

.field private cullingArea:Lcom/badlogic/gdx/math/Rectangle;

.field itemHeight:F

.field final items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field private keyListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field overIndex:I

.field private prefHeight:F

.field private prefWidth:F

.field pressedIndex:I

.field selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<",
            "TT;>;"
        }
    .end annotation
.end field

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

.field typeToSelect:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .registers 4
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .line 67
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    .line 54
    const/16 v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->alignment:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->setRequired(Z)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    .line 72
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setSize(FF)V

    .line 74
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->keyListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 128
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 3
    .param p1, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 60
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 4
    .param p1, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "styleName"  # Ljava/lang/String;

    .line 64
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    .line 65
    return-void
.end method


# virtual methods
.method public clearItems()V
    .registers 2

    .line 372
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_7

    return-void

    .line 373
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 374
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    .line 375
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    .line 377
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    .line 378
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 33
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 200
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->validate()V

    .line 202
    invoke-virtual/range {p0 .. p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 204
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 205
    .local v9, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 206
    .local v10, "selectedDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 207
    .local v11, "fontColorSelected":Lcom/badlogic/gdx/graphics/Color;
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    .line 209
    .local v12, "fontColorUnselected":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    .line 210
    .local v13, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v13, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v13, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v13, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v13, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    move-object/from16 v7, p1

    invoke-interface {v7, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getX()F

    move-result v0

    .local v0, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getY()F

    move-result v20

    .local v20, "y":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getWidth()F

    move-result v1

    .local v1, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v21

    .line 213
    .local v21, "height":F
    move/from16 v2, v21

    .line 215
    .local v2, "itemY":F
    iget-object v3, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 216
    .local v6, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v6, :cond_58

    .line 217
    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    .line 218
    .local v3, "leftWidth":F
    add-float/2addr v0, v3

    .line 219
    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v4

    sub-float/2addr v2, v4

    .line 220
    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v4

    add-float/2addr v4, v3

    sub-float/2addr v1, v4

    move/from16 v22, v0

    move/from16 v23, v1

    goto :goto_5c

    .line 216
    .end local v3  # "leftWidth":F
    :cond_58
    move/from16 v22, v0

    move/from16 v23, v1

    .line 223
    .end local v0  # "x":F
    .end local v1  # "width":F
    .local v22, "x":F
    .local v23, "width":F
    :goto_5c
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v24

    .local v24, "textOffsetX":F
    sub-float v0, v23, v24

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v1

    sub-float v25, v0, v1

    .line 224
    .local v25, "textWidth":F
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    sub-float v26, v0, v1

    .line 226
    .local v26, "textOffsetY":F
    iget v0, v12, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v12, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v12, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, p2

    invoke-virtual {v9, v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 227
    const/4 v0, 0x0

    move v5, v0

    move/from16 v27, v2

    .end local v2  # "itemY":F
    .local v5, "i":I
    .local v27, "itemY":F
    :goto_83
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v0, :cond_145

    .line 228
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v0, :cond_b7

    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    sub-float v0, v27, v0

    iget-object v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a7

    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v27, v0

    if-ltz v0, :cond_a7

    goto :goto_b7

    .line 245
    :cond_a7
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v0, v27, v0

    if-gez v0, :cond_b2

    .line 246
    move-object v14, v6

    goto/16 :goto_148

    .line 245
    :cond_b2
    move/from16 v17, v5

    move-object v14, v6

    goto/16 :goto_13a

    .line 229
    :cond_b7
    :goto_b7
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 230
    .local v4, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->contains(Ljava/lang/Object;)Z

    move-result v28

    .line 231
    .local v28, "selected":Z
    const/4 v0, 0x0

    .line 232
    .local v0, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    if-ne v1, v5, :cond_d5

    iget-object v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_d5

    .line 233
    iget-object v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v29, v0

    goto :goto_fb

    .line 234
    :cond_d5
    if-eqz v28, :cond_e8

    .line 235
    move-object v0, v10

    .line 236
    iget v1, v11, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v11, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v14, v11, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v14, v14, p2

    invoke-virtual {v9, v1, v2, v3, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    move-object/from16 v29, v0

    goto :goto_fb

    .line 237
    :cond_e8
    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    if-ne v1, v5, :cond_f9

    iget-object v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_f9

    .line 238
    iget-object v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v29, v0

    goto :goto_fb

    .line 239
    :cond_f9
    move-object/from16 v29, v0

    .end local v0  # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .local v29, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_fb
    if-eqz v29, :cond_112

    add-float v0, v20, v27

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    sub-float v17, v0, v1

    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    move-object/from16 v14, v29

    move-object/from16 v15, p1

    move/from16 v16, v22

    move/from16 v18, v23

    move/from16 v19, v0

    invoke-interface/range {v14 .. v19}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 240
    :cond_112
    add-float v14, v22, v24

    add-float v0, v20, v27

    sub-float v15, v0, v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v5

    move-object/from16 v16, v4

    .end local v4  # "item":Ljava/lang/Object;, "TT;"
    .local v16, "item":Ljava/lang/Object;, "TT;"
    move/from16 v17, v5

    .end local v5  # "i":I
    .local v17, "i":I
    move v5, v14

    move-object v14, v6

    .end local v6  # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .local v14, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    move v6, v15

    move/from16 v7, v25

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->drawItem(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;ILjava/lang/Object;FFF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 241
    if-eqz v28, :cond_139

    .line 242
    iget v0, v12, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v12, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v12, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 245
    .end local v16  # "item":Ljava/lang/Object;, "TT;"
    .end local v28  # "selected":Z
    .end local v29  # "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_139
    nop

    .line 248
    :goto_13a
    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    sub-float v27, v27, v0

    .line 227
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v7, p1

    move-object v6, v14

    .end local v17  # "i":I
    .restart local v5  # "i":I
    goto/16 :goto_83

    .end local v14  # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v6  # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_145
    move/from16 v17, v5

    move-object v14, v6

    .line 250
    .end local v5  # "i":I
    .end local v6  # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v14  # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_148
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 11
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 254
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2e

    .line 255
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 256
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 257
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getWidth()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v7

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 259
    .end local v0  # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_2e
    return-void
.end method

.method protected drawItem(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;ILjava/lang/Object;FFF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 22
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p3, "index"  # I
    .param p5, "x"  # F
    .param p6, "y"  # F
    .param p7, "width"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            "ITT;FFF)",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    .local p4, "item":Ljava/lang/Object;, "TT;"
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 263
    .local v13, "string":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->alignment:I

    const/4 v11, 0x0

    const-string v12, "..."

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object v3, p1

    move-object v4, v13

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v2

    return-object v2
.end method

.method public getCullingArea()Lcom/badlogic/gdx/math/Rectangle;
    .registers 2

    .line 410
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public getItemAt(F)Ljava/lang/Object;
    .registers 4
    .param p1, "y"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result v0

    .line 321
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    return-object v1

    .line 322
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemHeight()F
    .registers 2

    .line 386
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    return v0
.end method

.method public getItemIndexAt(F)I
    .registers 6
    .param p1, "y"  # F

    .line 327
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v0

    .line 328
    .local v0, "height":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 329
    .local v1, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v1, :cond_19

    .line 330
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 331
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    sub-float/2addr p1, v2

    .line 333
    :cond_19
    sub-float v2, v0, p1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 334
    .local v2, "index":I
    if-ltz v2, :cond_29

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v2, v3, :cond_28

    goto :goto_29

    .line 335
    :cond_28
    return v2

    .line 334
    :cond_29
    :goto_29
    const/4 v3, -0x1

    return v3
.end method

.method public getItems()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .registers 2

    .line 424
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->keyListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    return-object v0
.end method

.method public getOverItem()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    goto :goto_f

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getPrefHeight()F
    .registers 2

    .line 395
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->validate()V

    .line 396
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    .line 390
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->validate()V

    .line 391
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    return v0
.end method

.method public getPressedItem()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    goto :goto_f

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getSelected()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .registers 5

    .line 292
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v0

    .line 293
    .local v0, "selected":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v1, :cond_c

    const/4 v1, -0x1

    goto :goto_17

    :cond_c
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->first()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    :goto_17
    return v1
.end method

.method public getSelection()Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<",
            "TT;>;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
    .registers 2

    .line 171
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    return-object v0
.end method

.method public layout()V
    .registers 8

    .line 175
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 176
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 178
    .local v1, "selectedDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    .line 179
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    .line 181
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 182
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v2

    .line 183
    .local v2, "layoutPool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;>;"
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 184
    .local v3, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_34
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_54

    .line 185
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 186
    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 188
    .end local v4  # "i":I
    :cond_54
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 189
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 190
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    .line 192
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 193
    .local v4, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v4, :cond_a1

    .line 194
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v6

    add-float/2addr v5, v6

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v6

    add-float/2addr v5, v6

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 195
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    .line 197
    :cond_a1
    return-void
.end method

.method public setAlignment(I)V
    .registers 2
    .param p1, "alignment"  # I

    .line 416
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->alignment:I

    .line 417
    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .registers 2
    .param p1, "cullingArea"  # Lcom/badlogic/gdx/math/Rectangle;

    .line 404
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 405
    return-void
.end method

.method public setItems(Lcom/badlogic/gdx/utils/Array;)V
    .registers 5
    .param p1, "newItems"  # Lcom/badlogic/gdx/utils/Array;

    .line 356
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    if-eqz p1, :cond_39

    .line 357
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v0

    .local v0, "oldPrefWidth":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v1

    .line 359
    .local v1, "oldPrefHeight":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    if-eq p1, v2, :cond_18

    .line 360
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 361
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 363
    :cond_18
    const/4 v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    .line 364
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    .line 365
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->validate()V

    .line 367
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidate()V

    .line 368
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_35

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_38

    :cond_35
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    .line 369
    :cond_38
    return-void

    .line 356
    .end local v0  # "oldPrefWidth":F
    .end local v1  # "oldPrefHeight":F
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newItems cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setItems([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 339
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    .local p1, "newItems":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_35

    .line 340
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v0

    .local v0, "oldPrefWidth":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v1

    .line 342
    .local v1, "oldPrefHeight":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 343
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;)V

    .line 344
    const/4 v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    .line 345
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    .line 346
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->validate()V

    .line 348
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidate()V

    .line 349
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_31

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_34

    :cond_31
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    .line 350
    :cond_34
    return-void

    .line 339
    .end local v0  # "oldPrefWidth":F
    .end local v1  # "oldPrefHeight":F
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newItems cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelected(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    goto :goto_2e

    .line 284
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->getRequired()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_29

    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    goto :goto_2e

    .line 287
    :cond_29
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    .line 288
    :goto_2e
    return-void
.end method

.method public setSelectedIndex(I)V
    .registers 5
    .param p1, "index"  # I

    .line 299
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1d

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v1, :cond_1d

    .line 301
    if-ne p1, v0, :cond_11

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    goto :goto_1c

    .line 304
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    .line 306
    :goto_1c
    return-void

    .line 300
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index must be >= -1 and < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<",
            "TT;>;)V"
        }
    .end annotation

    .line 271
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    .local p1, "selection":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    .line 272
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .registers 4
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .line 163
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    if-eqz p1, :cond_8

    .line 164
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .line 165
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    .line 166
    return-void

    .line 163
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTypeToSelect(Z)V
    .registers 2
    .param p1, "typeToSelect"  # Z

    .line 420
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->typeToSelect:Z

    .line 421
    return-void
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
