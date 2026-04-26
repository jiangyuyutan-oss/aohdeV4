.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;"
    }
.end annotation


# instance fields
.field private actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private align:I

.field private background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private clip:Z

.field private fillX:F

.field private fillY:F

.field private maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private round:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 22
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 23
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 24
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 25
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    .line 34
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTransform(Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 41
    return-void
.end method


# virtual methods
.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 4
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5
    .param p1, "actorAfter"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5
    .param p1, "index"  # I
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5
    .param p1, "actorBefore"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .param p1, "align"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 569
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 570
    return-object p0
.end method

.method public background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .param p1, "background"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 100
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 595
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 596
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 597
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 575
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 576
    return-object p0
.end method

.method public clip()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 720
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setClip(Z)V

    .line 721
    return-object p0
.end method

.method public clip(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .param p1, "enabled"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 725
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setClip(Z)V

    .line 726
    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 8
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 44
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->validate()V

    .line 45
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 46
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 48
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v0, :cond_4f

    .line 49
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .local v0, "padLeft":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 51
    .local v1, "padBottom":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 52
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 51
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 54
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 55
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipEnd()V

    .line 57
    .end local v0  # "padLeft":F
    .end local v1  # "padBottom":F
    :cond_4e
    goto :goto_52

    .line 58
    :cond_4f
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 59
    :goto_52
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto :goto_64

    .line 61
    :cond_56
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getY()F

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 64
    :goto_64
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .registers 16
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F
    .param p3, "x"  # F
    .param p4, "y"  # F

    .line 69
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 70
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 71
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 72
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v10

    move-object v6, p1

    move v7, p3

    move v8, p4

    invoke-interface/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 73
    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 7
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 750
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->validate()V

    .line 751
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 752
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 753
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v0, :cond_5b

    .line 754
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 755
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .local v0, "padLeft":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 756
    .local v1, "padBottom":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v2, :cond_35

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v2

    goto :goto_51

    .line 757
    :cond_35
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 758
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 757
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v2

    :goto_51
    nop

    .line 759
    .local v2, "draw":Z
    if-eqz v2, :cond_5a

    .line 760
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 761
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipEnd()V

    .line 763
    .end local v0  # "padLeft":F
    .end local v1  # "padBottom":F
    .end local v2  # "draw":Z
    :cond_5a
    goto :goto_5e

    .line 764
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 765
    :goto_5e
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_65

    .line 767
    :cond_62
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 768
    :goto_65
    return-void
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 529
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 530
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 531
    return-object p0
.end method

.method public fill(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "x"  # F
    .param p2, "y"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 548
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 549
    return-object p0
.end method

.method public fill(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 5
    .param p1, "fill"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 561
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 562
    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 563
    return-object p0
.end method

.method public fill(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 6
    .param p1, "x"  # Z
    .param p2, "y"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 554
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 555
    if-eqz p2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 556
    return-object p0
.end method

.method public fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 536
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 537
    return-object p0
.end method

.method public fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 542
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 543
    return-object p0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getAlign()I
    .registers 2

    .line 710
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 104
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getClip()Z
    .registers 2

    .line 738
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    return v0
.end method

.method public getFillX()F
    .registers 2

    .line 702
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    return v0
.end method

.method public getFillY()F
    .registers 2

    .line 706
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    return v0
.end method

.method public getMaxHeight()F
    .registers 4

    .line 654
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 655
    .local v0, "v":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1b

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 656
    :cond_1b
    return v0
.end method

.method public getMaxHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 650
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMaxWidth()F
    .registers 4

    .line 644
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 645
    .local v0, "v":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1b

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 646
    :cond_1b
    return v0
.end method

.method public getMaxWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 640
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinHeight()F
    .registers 3

    .line 616
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getMinHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 612
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinWidth()F
    .registers 3

    .line 608
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadBottom()F
    .registers 2

    .line 680
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 676
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .registers 2

    .line 672
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 668
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .registers 2

    .line 688
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 684
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .registers 2

    .line 664
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 660
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .registers 3

    .line 693
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .registers 3

    .line 698
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .registers 5

    .line 634
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 635
    .local v0, "v":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 636
    :cond_16
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getMinHeight()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public getPrefHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 630
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPrefWidth()F
    .registers 5

    .line 624
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 625
    .local v0, "v":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 626
    :cond_16
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getMinWidth()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public getPrefWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 620
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 286
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 287
    return-object p0
.end method

.method public height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "height"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_9

    .line 278
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 279
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 280
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 281
    return-object p0

    .line 277
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 7
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "touchable"  # Z

    .line 742
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v0, :cond_2a

    .line 743
    const/4 v0, 0x0

    if-eqz p3, :cond_10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_10

    return-object v0

    .line 744
    :cond_10
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_29

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_29

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_29

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2a

    :cond_29
    return-object v0

    .line 746
    :cond_2a
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public layout()V
    .registers 18

    .line 108
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v1, :cond_7

    return-void

    .line 110
    :cond_7
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .local v1, "padLeft":F
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    .line 111
    .local v2, "padBottom":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 112
    .local v3, "containerWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v4

    sub-float/2addr v4, v2

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    sub-float/2addr v4, v5

    .line 113
    .local v4, "containerHeight":F
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    .local v5, "minWidth":F
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v6

    .line 114
    .local v6, "minHeight":F
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    .local v7, "prefWidth":F
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    .line 115
    .local v8, "prefHeight":F
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    .local v9, "maxWidth":F
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v10

    .line 118
    .local v10, "maxHeight":F
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_66

    .line 119
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    mul-float/2addr v11, v3

    .local v11, "width":F
    goto :goto_6a

    .line 121
    .end local v11  # "width":F
    :cond_66
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 122
    .restart local v11  # "width":F
    :goto_6a
    cmpg-float v13, v11, v5

    if-gez v13, :cond_6f

    move v11, v5

    .line 123
    :cond_6f
    cmpl-float v13, v9, v12

    if-lez v13, :cond_78

    cmpl-float v13, v11, v9

    if-lez v13, :cond_78

    move v11, v9

    .line 126
    :cond_78
    iget v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    cmpl-float v13, v13, v12

    if-lez v13, :cond_82

    .line 127
    iget v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    mul-float/2addr v13, v4

    .local v13, "height":F
    goto :goto_86

    .line 129
    .end local v13  # "height":F
    :cond_82
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 130
    .restart local v13  # "height":F
    :goto_86
    cmpg-float v14, v13, v6

    if-gez v14, :cond_8b

    move v13, v6

    .line 131
    :cond_8b
    cmpl-float v12, v10, v12

    if-lez v12, :cond_94

    cmpl-float v12, v13, v10

    if-lez v12, :cond_94

    move v13, v10

    .line 133
    :cond_94
    move v12, v1

    .line 134
    .local v12, "x":F
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v14, v14, 0x10

    const/high16 v15, 0x40000000  # 2.0f

    if-eqz v14, :cond_a1

    .line 135
    sub-float v14, v3, v11

    add-float/2addr v12, v14

    goto :goto_ab

    .line 136
    :cond_a1
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v14, v14, 0x8

    if-nez v14, :cond_ab

    .line 137
    sub-float v14, v3, v11

    div-float/2addr v14, v15

    add-float/2addr v12, v14

    .line 139
    :cond_ab
    :goto_ab
    move v14, v2

    .line 140
    .local v14, "y":F
    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_b6

    .line 141
    sub-float v15, v4, v13

    add-float/2addr v14, v15

    goto :goto_c3

    .line 142
    :cond_b6
    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v15, v15, 0x4

    if-nez v15, :cond_c3

    .line 143
    sub-float v15, v4, v13

    const/high16 v16, 0x40000000  # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    .line 145
    :cond_c3
    :goto_c3
    iget-boolean v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    if-eqz v15, :cond_db

    .line 146
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v12, v15

    .line 147
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v14, v15

    .line 148
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v11, v15

    .line 149
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v13, v15

    .line 152
    :cond_db
    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v15, v12, v14, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 153
    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v15, v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_ed

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 154
    :cond_ed
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 588
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 589
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 590
    return-object p0
.end method

.method public maxHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "maxHeight"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 439
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 440
    return-object p0
.end method

.method public maxHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "maxHeight"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_5

    .line 417
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 418
    return-object p0

    .line 416
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "size"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 423
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 424
    return-object p0
.end method

.method public maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 5
    .param p1, "width"  # F
    .param p2, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 430
    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "size"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 394
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_7

    .line 395
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 396
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 397
    return-object p0

    .line 394
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 5
    .param p1, "width"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 402
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_11

    .line 403
    if-eqz p2, :cond_9

    .line 404
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 405
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 406
    return-object p0

    .line 403
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "maxWidth"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 434
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 435
    return-object p0
.end method

.method public maxWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "maxWidth"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_5

    .line 411
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 412
    return-object p0

    .line 410
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "minHeight"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 338
    return-object p0
.end method

.method public minHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "minHeight"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 314
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_5

    .line 315
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 316
    return-object p0

    .line 314
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "size"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 322
    return-object p0
.end method

.method public minSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 5
    .param p1, "width"  # F
    .param p2, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 328
    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "size"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_7

    .line 293
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 294
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 295
    return-object p0

    .line 292
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 5
    .param p1, "width"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_11

    .line 301
    if-eqz p2, :cond_9

    .line 302
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 303
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 304
    return-object p0

    .line 301
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "minWidth"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 333
    return-object p0
.end method

.method public minWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "minWidth"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_5

    .line 309
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 310
    return-object p0

    .line 308
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "pad"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 491
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    .line 492
    .local v0, "value":Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 493
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 494
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 495
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 496
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 6
    .param p1, "top"  # F
    .param p2, "left"  # F
    .param p3, "bottom"  # F
    .param p4, "right"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 500
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 501
    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 502
    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 503
    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 504
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "pad"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 445
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_b

    .line 446
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 447
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 448
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 449
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 450
    return-object p0

    .line 445
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 7
    .param p1, "top"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 454
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_29

    .line 455
    if-eqz p2, :cond_21

    .line 456
    if-eqz p3, :cond_19

    .line 457
    if-eqz p4, :cond_11

    .line 458
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 459
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 460
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 461
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 462
    return-object p0

    .line 457
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "padBottom"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 518
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 519
    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "padBottom"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 478
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_5

    .line 479
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 480
    return-object p0

    .line 478
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "padLeft"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 513
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 514
    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "padLeft"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 472
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_5

    .line 473
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 474
    return-object p0

    .line 472
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "padRight"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 523
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 524
    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "padRight"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 484
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_5

    .line 485
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 486
    return-object p0

    .line 484
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "padTop"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 508
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 509
    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "padTop"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 466
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_5

    .line 467
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 468
    return-object p0

    .line 466
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "prefHeight"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 388
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 389
    return-object p0
.end method

.method public prefHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "prefHeight"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_5

    .line 366
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 367
    return-object p0

    .line 365
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "size"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 379
    return-object p0
.end method

.method public prefSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 5
    .param p1, "width"  # F
    .param p2, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 373
    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "size"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_7

    .line 344
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 345
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 346
    return-object p0

    .line 343
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 5
    .param p1, "width"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 351
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_11

    .line 352
    if-eqz p2, :cond_9

    .line 353
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 354
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 355
    return-object p0

    .line 352
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "prefWidth"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 384
    return-object p0
.end method

.method public prefWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "prefWidth"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_5

    .line 360
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 361
    return-object p0

    .line 359
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 4
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 204
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_e

    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 206
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 207
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .registers 5
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "unfocus"  # Z

    .line 211
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_10

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 213
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 214
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    return v0

    .line 211
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 5
    .param p1, "index"  # I
    .param p2, "unfocus"  # Z

    .line 218
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 219
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v0, v1, :cond_b

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 220
    :cond_b
    return-object v0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 602
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 603
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 604
    return-object p0
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    if-eq p1, p0, :cond_18

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne p1, v0, :cond_7

    return-void

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 166
    :cond_10
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 167
    if-eqz p1, :cond_17

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 168
    :cond_17
    return-void

    .line 163
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be the Container."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 3
    .param p1, "background"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 78
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Z)V

    .line 79
    return-void
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Z)V
    .registers 7
    .param p1, "background"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "adjustPadding"  # Z

    .line 86
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_5

    return-void

    .line 87
    :cond_5
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 88
    if-eqz p2, :cond_27

    .line 89
    if-nez p1, :cond_11

    .line 90
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    goto :goto_24

    .line 92
    :cond_11
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v1

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 93
    :goto_24
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->invalidate()V

    .line 95
    :cond_27
    return-void
.end method

.method public setClip(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 732
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    .line 733
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTransform(Z)V

    .line 734
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->invalidate()V

    .line 735
    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .registers 4
    .param p1, "cullingArea"  # Lcom/badlogic/gdx/math/Rectangle;

    .line 157
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 158
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 159
    :cond_1e
    return-void
.end method

.method public setRound(Z)V
    .registers 2
    .param p1, "round"  # Z

    .line 715
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    .line 716
    return-void
.end method

.method public size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "size"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 251
    return-object p0
.end method

.method public size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 5
    .param p1, "width"  # F
    .param p2, "height"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 256
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 257
    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "size"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_f

    .line 226
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 227
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 228
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 229
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 230
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 231
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 232
    return-object p0

    .line 225
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 5
    .param p1, "width"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_19

    .line 238
    if-eqz p2, :cond_11

    .line 239
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 240
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 241
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 242
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 243
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 244
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 245
    return-object p0

    .line 238
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 581
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 582
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 583
    return-object p0
.end method

.method public width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 3
    .param p1, "width"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 272
    return-object p0
.end method

.method public width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 4
    .param p1, "width"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_9

    .line 263
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 264
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 265
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 266
    return-object p0

    .line 262
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
