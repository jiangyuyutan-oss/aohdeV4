.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;"
    }
.end annotation


# static fields
.field private static final tmp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field private foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field iconSpacingLeft:F

.field iconSpacingRight:F

.field indentSpacing:F

.field private overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field paddingLeft:F

.field paddingRight:F

.field private prefHeight:F

.field private prefWidth:F

.field rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field final rootNodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation
.end field

.field final selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
            "TN;>;"
        }
    .end annotation
.end field

.field private sizeInvalid:Z

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

.field ySpacing:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->tmp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 3
    .param p1, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 60
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 4
    .param p1, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "styleName"  # Ljava/lang/String;

    .line 64
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .registers 4
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 67
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    .line 52
    const/high16 v0, 0x40800000  # 4.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    const/high16 v0, 0x40000000  # 2.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 68
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 81
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setMultiple(Z)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 83
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->initialize()V

    .line 84
    return-void
.end method

.method static collapseAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    .line 553
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_17

    .line 554
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 555
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 556
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 553
    .end local v2  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 558
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_17
    return-void
.end method

.method private computeSize()V
    .registers 4

    .line 211
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 212
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 214
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    invoke-direct {p0, v1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize(Lcom/badlogic/gdx/utils/Array;FF)V

    .line 215
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingRight:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 216
    return-void
.end method

.method private computeSize(Lcom/badlogic/gdx/utils/Array;FF)V
    .registers 13
    .param p2, "indent"  # F
    .param p3, "plusMinusWidth"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 220
    .local v0, "ySpacing":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    add-float/2addr v1, v2

    .line 221
    .local v1, "spacing":F
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_a
    if-ge v2, v3, :cond_6d

    .line 222
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 223
    .local v4, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    add-float v5, p2, p3

    .line 224
    .local v5, "rowWidth":F
    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 225
    .local v6, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v7, v6, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v7, :cond_29

    .line 226
    move-object v7, v6

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 227
    .local v7, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v8

    add-float/2addr v5, v8

    .line 228
    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v8

    iput v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 229
    .end local v7  # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    goto :goto_34

    .line 230
    :cond_29
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v7

    add-float/2addr v5, v7

    .line 231
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v7

    iput v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 233
    :goto_34
    iget-object v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v7, :cond_4e

    .line 234
    iget-object v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    add-float/2addr v7, v1

    add-float/2addr v5, v7

    .line 235
    iget v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    iget-object v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 237
    :cond_4e
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 238
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    iget v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    add-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 239
    iget-boolean v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v7, :cond_6a

    iget-object v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v8, p2

    invoke-direct {p0, v7, v8, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize(Lcom/badlogic/gdx/utils/Array;FF)V

    .line 221
    .end local v4  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v5  # "rowWidth":F
    .end local v6  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 241
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_6d
    return-void
.end method

.method private draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFLcom/badlogic/gdx/utils/Array;FF)V
    .registers 34
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "r"  # F
    .param p3, "g"  # F
    .param p4, "b"  # F
    .param p5, "a"  # F
    .param p7, "indent"  # F
    .param p8, "plusMinusWidth"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FFFF",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    .line 288
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p6, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p6

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getCullingArea()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v11

    .line 289
    .local v11, "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    const/4 v0, 0x0

    .local v0, "cullBottom":F
    const/4 v1, 0x0

    .line 290
    .local v1, "cullTop":F
    if-eqz v11, :cond_15

    .line 291
    iget v0, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 292
    iget v2, v11, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v1, v0, v2

    move v12, v0

    move v13, v1

    goto :goto_17

    .line 290
    :cond_15
    move v12, v0

    move v13, v1

    .line 294
    .end local v0  # "cullBottom":F
    .end local v1  # "cullTop":F
    .local v12, "cullBottom":F
    .local v13, "cullTop":F
    :goto_17
    iget-object v14, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 295
    .local v14, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getX()F

    move-result v15

    .local v15, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getY()F

    move-result v16

    .local v16, "y":F
    add-float v17, v15, p7

    .local v17, "expandX":F
    add-float v0, v17, p8

    iget v1, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    add-float v8, v0, v1

    .line 296
    .local v8, "iconX":F
    const/4 v0, 0x0

    .local v0, "i":I
    iget v7, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    move v6, v0

    .end local v0  # "i":I
    .local v6, "i":I
    .local v7, "n":I
    :goto_2d
    if-ge v6, v7, :cond_151

    .line 297
    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 298
    .local v5, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 299
    .local v4, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v18

    .local v18, "actorY":F
    iget v3, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 300
    .local v3, "height":F
    if-eqz v11, :cond_5b

    add-float v0, v18, v3

    cmpl-float v0, v0, v12

    if-ltz v0, :cond_4b

    cmpg-float v0, v18, v13

    if-gtz v0, :cond_4b

    goto :goto_5b

    .line 320
    :cond_4b
    cmpg-float v0, v18, v12

    if-gez v0, :cond_50

    .line 321
    return-void

    .line 320
    :cond_50
    move/from16 v23, v3

    move-object/from16 v24, v4

    move-object v10, v5

    move/from16 v20, v6

    move/from16 v21, v7

    goto/16 :goto_121

    .line 301
    :cond_5b
    :goto_5b
    iget-object v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v19, 0x40000000  # 2.0f

    if-eqz v0, :cond_94

    iget-object v0, v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_94

    .line 302
    iget-object v2, v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    add-float v0, v16, v18

    iget v1, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    div-float v1, v1, v19

    sub-float v20, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v21

    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float v22, v3, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v23, v3

    .end local v3  # "height":F
    .local v23, "height":F
    move-object/from16 v3, p1

    move-object/from16 v24, v4

    .end local v4  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .local v24, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    move v4, v15

    move-object v10, v5

    .end local v5  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .local v10, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    move/from16 v5, v20

    move/from16 v20, v6

    .end local v6  # "i":I
    .local v20, "i":I
    move/from16 v6, v21

    move/from16 v21, v7

    .end local v7  # "n":I
    .local v21, "n":I
    move/from16 v7, v22

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawSelection(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_c0

    .line 301
    .end local v10  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v20  # "i":I
    .end local v21  # "n":I
    .end local v23  # "height":F
    .end local v24  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v3  # "height":F
    .restart local v4  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v5  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .restart local v6  # "i":I
    .restart local v7  # "n":I
    :cond_94
    move/from16 v23, v3

    move-object/from16 v24, v4

    move-object v10, v5

    move/from16 v20, v6

    move/from16 v21, v7

    .line 303
    .end local v3  # "height":F
    .end local v4  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v5  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v6  # "i":I
    .end local v7  # "n":I
    .restart local v10  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .restart local v20  # "i":I
    .restart local v21  # "n":I
    .restart local v23  # "height":F
    .restart local v24  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-ne v10, v0, :cond_c0

    iget-object v0, v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_c0

    .line 304
    iget-object v2, v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    add-float v0, v16, v18

    iget v1, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    div-float v1, v1, v19

    sub-float v5, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v6

    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float v7, v23, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p1

    move v4, v15

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawOver(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 307
    :cond_c0
    :goto_c0
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_f9

    .line 308
    add-float v0, v16, v18

    iget-object v1, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v3, v23, v1

    div-float v3, v3, v19

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v0, v1

    .line 309
    .local v6, "iconY":F
    invoke-virtual/range {v24 .. v24}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    .line 310
    .local v7, "actorColor":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p5

    move-object/from16 v5, p1

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 311
    iget-object v2, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p1

    move v4, v8

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V

    .line 312
    invoke-interface/range {p1 .. p5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 315
    .end local v6  # "iconY":F
    .end local v7  # "actorColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_f9
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_121

    .line 316
    invoke-virtual {v9, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;F)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v6

    .line 317
    .local v6, "expandIcon":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    add-float v0, v16, v18

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v3, v23, v1

    div-float v3, v3, v19

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v0, v1

    .line 318
    .local v7, "iconY":F
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, p1

    move/from16 v4, v17

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V

    .line 319
    .end local v6  # "expandIcon":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v7  # "iconY":F
    nop

    .line 323
    :cond_121
    :goto_121
    iget-boolean v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_145

    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_145

    .line 324
    iget-object v6, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float v7, p7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v19, v8

    .end local v8  # "iconX":F
    .local v19, "iconX":F
    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFLcom/badlogic/gdx/utils/Array;FF)V

    goto :goto_147

    .line 323
    .end local v19  # "iconX":F
    .restart local v8  # "iconX":F
    :cond_145
    move/from16 v19, v8

    .line 296
    .end local v8  # "iconX":F
    .end local v10  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v18  # "actorY":F
    .end local v23  # "height":F
    .end local v24  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v19  # "iconX":F
    :goto_147
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v10, p6

    move/from16 v8, v19

    move/from16 v7, v21

    .end local v20  # "i":I
    .local v6, "i":I
    goto/16 :goto_2d

    .line 326
    .end local v6  # "i":I
    .end local v19  # "iconX":F
    .end local v21  # "n":I
    .restart local v8  # "iconX":F
    :cond_151
    return-void
.end method

.method static expandAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    .line 565
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_11

    .line 566
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandAll()V

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 567
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_11
    return-void
.end method

.method static findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z
    .registers 7
    .param p1, "values"  # Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array;",
            ")Z"
        }
    .end annotation

    .line 521
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .line 522
    .local v0, "expanded":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_4
    if-ge v1, v2, :cond_20

    .line 523
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 524
    .local v3, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-boolean v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 522
    .end local v3  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 526
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_20
    return v0
.end method

.method static findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .registers 6
    .param p1, "value"  # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;"
        }
    .end annotation

    .line 536
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_17

    .line 537
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 538
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    return-object v2

    .line 536
    .end local v2  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 540
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_17
    const/4 v0, 0x0

    .restart local v0  # "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v1  # "n":I
    :goto_1a
    if-ge v0, v1, :cond_2e

    .line 541
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 542
    .restart local v2  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v3

    .line 543
    .local v3, "found":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    if-eqz v3, :cond_2b

    return-object v3

    .line 540
    .end local v2  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .end local v3  # "found":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 545
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F
    .registers 10
    .param p2, "y"  # F
    .param p3, "rowY"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)F"
        }
    .end annotation

    .line 372
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_3b

    .line 373
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 374
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 375
    .local v3, "height":F
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getHeight()F

    move-result v4

    sub-float/2addr v4, v3

    sub-float/2addr p3, v4

    .line 376
    sub-float v4, p3, v3

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    sub-float/2addr v4, v5

    cmpl-float v4, p2, v4

    const/high16 v5, -0x40800000  # -1.0f

    if-ltz v4, :cond_25

    cmpg-float v4, p2, p3

    if-gez v4, :cond_25

    .line 377
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 378
    return v5

    .line 380
    :cond_25
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float/2addr v4, v3

    sub-float/2addr p3, v4

    .line 381
    iget-boolean v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v4, :cond_38

    .line 382
    iget-object v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v4, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F

    move-result p3

    .line 383
    cmpl-float v4, p3, v5

    if-nez v4, :cond_38

    return v5

    .line 372
    .end local v2  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v3  # "height":F
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 386
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_3b
    return p3
.end method

.method private initialize()V
    .registers 2

    .line 87
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 138
    return-void
.end method

.method private layout(Lcom/badlogic/gdx/utils/Array;FFF)F
    .registers 14
    .param p2, "indent"  # F
    .param p3, "y"  # F
    .param p4, "plusMinusWidth"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FFF)F"
        }
    .end annotation

    .line 249
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 250
    .local v0, "ySpacing":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    .line 251
    .local v1, "iconSpacingLeft":F
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    add-float/2addr v2, v1

    .line 252
    .local v2, "spacing":F
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_a
    if-ge v3, v4, :cond_4a

    .line 253
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 254
    .local v5, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    add-float v6, p2, p4

    .line 255
    .local v6, "x":F
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v7, :cond_21

    .line 256
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    add-float/2addr v7, v2

    add-float/2addr v6, v7

    goto :goto_22

    .line 258
    :cond_21
    add-float/2addr v6, v1

    .line 259
    :goto_22
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v7, v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v7, :cond_2f

    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->pack()V

    .line 260
    :cond_2f
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getHeight()F

    move-result v7

    sub-float/2addr p3, v7

    .line 261
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v7, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 262
    sub-float/2addr p3, v0

    .line 263
    iget-boolean v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v7, :cond_47

    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v8, p2

    invoke-direct {p0, v7, v8, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->layout(Lcom/badlogic/gdx/utils/Array;FFF)F

    move-result p3

    .line 252
    .end local v5  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v6  # "x":F
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 265
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_4a
    return p3
.end method

.method private plusMinusWidth()F
    .registers 3

    .line 204
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 205
    .local v0, "width":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 206
    :cond_26
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 207
    :cond_38
    return v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 149
    return-void
.end method

.method public clearChildren(Z)V
    .registers 3
    .param p1, "unfocus"  # Z

    .line 192
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clearChildren(Z)V

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    .line 196
    return-void
.end method

.method public collapseAll()V
    .registers 2

    .line 549
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 550
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 14
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 269
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 270
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 271
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, p2

    .line 272
    .local v1, "a":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-interface {p1, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 273
    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v10

    move-object v2, p0

    move-object v3, p1

    move v7, v1

    invoke-direct/range {v2 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFLcom/badlogic/gdx/utils/Array;FF)V

    .line 274
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 275
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 11
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 279
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2e

    .line 280
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 281
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 282
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v7

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 284
    .end local v0  # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_2e
    return-void
.end method

.method protected drawExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V
    .registers 12
    .param p2, "expandIcon"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p4, "x"  # F
    .param p5, "y"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FF)V"
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 338
    return-void
.end method

.method protected drawIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V
    .registers 12
    .param p2, "icon"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p4, "x"  # F
    .param p5, "y"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FF)V"
        }
    .end annotation

    .line 341
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 342
    return-void
.end method

.method protected drawOver(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .registers 8
    .param p2, "over"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p4, "x"  # F
    .param p5, "y"  # F
    .param p6, "width"  # F
    .param p7, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FFFF)V"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    invoke-interface/range {p2 .. p7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 334
    return-void
.end method

.method protected drawSelection(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .registers 8
    .param p2, "selection"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p4, "x"  # F
    .param p5, "y"  # F
    .param p6, "width"  # F
    .param p7, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FFFF)V"
        }
    .end annotation

    .line 329
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    invoke-interface/range {p2 .. p7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 330
    return-void
.end method

.method public expandAll()V
    .registers 2

    .line 561
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->expandAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 562
    return-void
.end method

.method public findExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 507
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    .line 508
    return-void
.end method

.method public findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TN;"
        }
    .end annotation

    .line 531
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_9

    .line 532
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v0

    return-object v0

    .line 531
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClickListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
    .registers 2

    .line 571
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    return-object v0
.end method

.method protected getExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;F)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 7
    .param p2, "iconX"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;F)",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    const/4 v0, 0x0

    .line 350
    .local v0, "over":Z
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-ne p1, v1, :cond_40

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 351
    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_40

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    .line 352
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getMultiple()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v1

    if-nez v1, :cond_40

    .line 354
    :cond_23
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->tmp:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->screenToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 355
    .local v1, "mouseX":F
    cmpl-float v2, v1, v3

    if-ltz v2, :cond_40

    cmpg-float v2, v1, p2

    if-gez v2, :cond_40

    const/4 v0, 0x1

    .line 357
    .end local v1  # "mouseX":F
    :cond_40
    if-eqz v0, :cond_52

    .line 358
    iget-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_4f

    :cond_4b
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 359
    .local v1, "icon":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_4f
    if-eqz v1, :cond_52

    return-object v1

    .line 361
    .end local v1  # "icon":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_52
    iget-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_5f

    :cond_5b
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_5f
    return-object v1
.end method

.method public getIndentSpacing()F
    .registers 2

    .line 477
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    return v0
.end method

.method public getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .registers 4
    .param p1, "y"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TN;"
        }
    .end annotation

    .line 366
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 367
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getNodes()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getOverNode()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 445
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getOverValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPrefHeight()F
    .registers 2

    .line 502
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 503
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    .line 497
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 498
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    return v0
.end method

.method public getRootNodes()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    .line 421
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getSelectedNode()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getSelectedValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 411
    .local v0, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public getSelection()Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
            "TN;>;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;
    .registers 2

    .line 415
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    return-object v0
.end method

.method public getYSpacing()F
    .registers 2

    .line 486
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    return v0
.end method

.method public insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .registers 7
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 153
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_2e

    .line 156
    :cond_e
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 157
    .local v0, "existingIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2e

    .line 158
    if-ne v0, p1, :cond_1a

    return-void

    .line 159
    :cond_1a
    if-ge v0, p1, :cond_1e

    add-int/lit8 p1, p1, -0x1

    .line 160
    :cond_1e
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 161
    iget-object v3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v3

    .line 162
    .local v3, "actorIndex":I
    if-eq v3, v2, :cond_2e

    invoke-virtual {p2, p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    .line 166
    .end local v0  # "existingIndex":I
    .end local v3  # "actorIndex":I
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 169
    if-nez p1, :cond_37

    .line 170
    const/4 v0, 0x0

    .local v0, "actorIndex":I
    goto :goto_65

    .line 171
    .end local v0  # "actorIndex":I
    :cond_37
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_4f

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v0

    .restart local v0  # "actorIndex":I
    goto :goto_65

    .line 174
    .end local v0  # "actorIndex":I
    :cond_4f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 175
    .local v0, "before":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->countActors()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .line 177
    .local v0, "actorIndex":I
    :goto_65
    invoke-virtual {p2, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    .line 178
    return-void
.end method

.method public invalidate()V
    .registers 2

    .line 199
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 201
    return-void
.end method

.method public layout()V
    .registers 6

    .line 244
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 245
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->layout(Lcom/badlogic/gdx/utils/Array;FFF)F

    .line 246
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 181
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v0, :cond_a

    .line 182
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 183
    return-void

    .line 185
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 186
    :cond_14
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v0

    .line 187
    .local v0, "actorIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    invoke-virtual {p1, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    .line 188
    :cond_20
    return-void
.end method

.method public restoreExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 511
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_19

    .line 512
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    .line 513
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-eqz v2, :cond_16

    .line 514
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 515
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandTo()V

    .line 511
    .end local v2  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 518
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_19
    return-void
.end method

.method selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V
    .registers 8
    .param p2, "low"  # F
    .param p3, "high"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    .line 390
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_38

    .line 391
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 392
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_16

    goto :goto_38

    .line 393
    :cond_16
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_35

    .line 394
    :cond_1d
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    cmpg-float v3, v3, p3

    if-gtz v3, :cond_2c

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->add(Ljava/lang/Object;)V

    .line 395
    :cond_2c
    iget-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v3, :cond_35

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v3, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V

    .line 390
    .end local v2  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 397
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_38
    :goto_38
    return-void
.end method

.method public setIconSpacing(FF)V
    .registers 3
    .param p1, "left"  # F
    .param p2, "right"  # F

    .line 492
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    .line 493
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    .line 494
    return-void
.end method

.method public setIndentSpacing(F)V
    .registers 2
    .param p1, "indentSpacing"  # F

    .line 472
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    .line 473
    return-void
.end method

.method public setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 456
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "overNode":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 457
    return-void
.end method

.method public setPadding(F)V
    .registers 2
    .param p1, "padding"  # F

    .line 461
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    .line 462
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingRight:F

    .line 463
    return-void
.end method

.method public setPadding(FF)V
    .registers 3
    .param p1, "left"  # F
    .param p2, "right"  # F

    .line 467
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    .line 468
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingRight:F

    .line 469
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .registers 4
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 141
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 144
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    .line 145
    :cond_f
    return-void
.end method

.method public setYSpacing(F)V
    .registers 2
    .param p1, "ySpacing"  # F

    .line 482
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 483
    return-void
.end method

.method public updateRootNodes()V
    .registers 6

    .line 434
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_5
    if-ge v0, v1, :cond_1e

    .line 435
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 436
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v3

    .line 437
    .local v3, "actorIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    invoke-virtual {v2, p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    .line 434
    .end local v2  # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v3  # "actorIndex":I
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 439
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_1e
    const/4 v0, 0x0

    .restart local v0  # "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v1  # "n":I
    const/4 v2, 0x0

    .local v2, "actorIndex":I
    :goto_24
    if-ge v0, v1, :cond_36

    .line 440
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 441
    .end local v0  # "i":I
    .end local v1  # "n":I
    .end local v2  # "actorIndex":I
    :cond_36
    return-void
.end method
