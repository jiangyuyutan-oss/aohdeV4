.class public Lcom/badlogic/gdx/scenes/scene2d/Actor;
.super Ljava/lang/Object;
.source "Actor.java"


# instance fields
.field private final actions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field final color:Lcom/badlogic/gdx/graphics/Color;

.field private debug:Z

.field height:F

.field private final listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field originX:F

.field originY:F

.field parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field rotation:F

.field scaleX:F

.field scaleY:F

.field private stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field private userObject:Ljava/lang/Object;

.field private visible:Z

.field width:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    .line 70
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 72
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method


# virtual methods
.method public act(F)V
    .registers 9
    .param p1, "delta"  # F

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 93
    .local v0, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_7

    return-void

    .line 94
    :cond_7
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 96
    :cond_18
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    :try_start_19
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_4a

    .line 97
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 98
    .local v2, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_48

    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_48

    .line 99
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 100
    .local v3, "current":Lcom/badlogic/gdx/scenes/scene2d/Action;
    if-ne v3, v2, :cond_38

    move v5, v1

    goto :goto_3c

    :cond_38
    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v5

    .line 101
    .local v5, "actionIndex":I
    :goto_3c
    const/4 v6, -0x1

    if-eq v5, v6, :cond_48

    .line 102
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 103
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_46} :catch_4c

    .line 104
    add-int/lit8 v1, v1, -0x1

    .line 96
    .end local v2  # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v3  # "current":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v5  # "actionIndex":I
    :cond_48
    add-int/2addr v1, v4

    goto :goto_19

    .line 111
    .end local v1  # "i":I
    :cond_4a
    nop

    .line 112
    return-void

    .line 108
    :catch_4c
    move-exception v1

    .line 109
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "context":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Actor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x80

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .registers 3
    .param p1, "action"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 260
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 264
    :cond_19
    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 245
    if-eqz p1, :cond_11

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->add(Ljava/lang/Object;)V

    .line 247
    :cond_10
    return v1

    .line 245
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 225
    if-eqz p1, :cond_13

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->add(Ljava/lang/Object;)V

    .line 228
    return v1

    .line 230
    :cond_11
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ancestorsVisible()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->ascendantsVisible()Z

    move-result v0

    return v0
.end method

.method public ascendantsVisible()Z
    .registers 3

    .line 384
    move-object v0, p0

    .line 386
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    return v1

    .line 387
    :cond_9
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 388
    if-nez v0, :cond_1

    .line 389
    const/4 v1, 0x1

    return v1
.end method

.method public clear()V
    .registers 1

    .line 295
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 296
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearListeners()V

    .line 297
    return-void
.end method

.method public clearActions()V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_17

    .line 283
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 282
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 284
    .end local v0  # "i":I
    :cond_17
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 285
    return-void
.end method

.method public clearListeners()V
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    .line 291
    return-void
.end method

.method public clipBegin()Z
    .registers 5

    .line 820
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipBegin(FFFF)Z

    move-result v0

    return v0
.end method

.method public clipBegin(FFFF)Z
    .registers 10
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F

    .line 829
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/4 v2, 0x0

    if-lez v1, :cond_31

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_b

    goto :goto_31

    .line 830
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 831
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-nez v0, :cond_10

    return v2

    .line 832
    :cond_10
    sget-object v1, Lcom/badlogic/gdx/math/Rectangle;->tmp:Lcom/badlogic/gdx/math/Rectangle;

    .line 833
    .local v1, "tableBounds":Lcom/badlogic/gdx/math/Rectangle;
    iput p1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 834
    iput p2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 835
    iput p3, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 836
    iput p4, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 837
    const-class v3, Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Rectangle;

    .line 838
    .local v3, "scissorBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 839
    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v2, 0x1

    return v2

    .line 840
    :cond_2d
    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 841
    return v2

    .line 829
    .end local v0  # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .end local v1  # "tableBounds":Lcom/badlogic/gdx/math/Rectangle;
    .end local v3  # "scissorBounds":Lcom/badlogic/gdx/math/Rectangle;
    :cond_31
    :goto_31
    return v2
.end method

.method public clipEnd()V
    .registers 2

    .line 846
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 847
    return-void
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2

    .line 979
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    .line 980
    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 3
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 85
    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 2
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 956
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 957
    return-void
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 13
    .param p1, "shapes"  # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 961
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->debug:Z

    if-nez v0, :cond_5

    return-void

    .line 962
    :cond_5
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 963
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 964
    :cond_17
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFF)V

    .line 965
    return-void
.end method

.method public fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .registers 9
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/Event;

    .line 127
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 128
    :cond_d
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 131
    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 132
    .local v0, "ascendants":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Group;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 133
    .local v1, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :goto_1a
    if-eqz v1, :cond_22

    .line 134
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 135
    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_1a

    .line 140
    :cond_22
    :try_start_22
    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 141
    .local v2, "ascendantsArray":[Ljava/lang/Object;
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_28
    if-ltz v3, :cond_45

    .line 142
    aget-object v5, v2, v3

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 143
    .local v5, "currentTarget":Lcom/badlogic/gdx/scenes/scene2d/Group;
    invoke-virtual {v5, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 144
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v4
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_aa

    .line 164
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 165
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 144
    return v4

    .line 141
    .end local v5  # "currentTarget":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_28

    .line 148
    .end local v3  # "i":I
    :cond_45
    :try_start_45
    invoke-virtual {p0, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 149
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v3
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_aa

    .line 164
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 165
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 149
    return v3

    .line 152
    :cond_59
    const/4 v3, 0x0

    :try_start_5a
    invoke-virtual {p0, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 153
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getBubbles()Z

    move-result v4

    if-nez v4, :cond_6e

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v3
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_aa

    .line 164
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 165
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 153
    return v3

    .line 154
    :cond_6e
    :try_start_6e
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v3
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_aa

    .line 164
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 165
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 154
    return v3

    .line 157
    :cond_7f
    const/4 v4, 0x0

    .local v4, "i":I
    :try_start_80
    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v5, "n":I
    :goto_82
    if-ge v4, v5, :cond_9f

    .line 158
    aget-object v6, v2, v4

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 159
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v3
    :try_end_95
    .catchall {:try_start_80 .. :try_end_95} :catchall_aa

    .line 164
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 165
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 159
    return v3

    .line 157
    :cond_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    .line 162
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_9f
    :try_start_9f
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v3
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_aa

    .line 164
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 165
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 162
    return v3

    .line 164
    .end local v2  # "ascendantsArray":[Ljava/lang/Object;
    :catchall_aa
    move-exception v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 165
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    throw v2
.end method

.method public firstAscendant(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 334
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_10

    .line 335
    move-object v0, p0

    .line 337
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_3
    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    .line 338
    :cond_a
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 339
    if-nez v0, :cond_3

    .line 340
    const/4 v1, 0x0

    return-object v1

    .line 334
    .end local v0  # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActions()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getCaptureListeners()Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 767
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDebug()Z
    .registers 2

    .line 974
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->debug:Z

    return v0
.end method

.method public getHeight()F
    .registers 2

    .line 564
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    return v0
.end method

.method public getListeners()Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 773
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginX()F
    .registers 2

    .line 642
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    return v0
.end method

.method public getOriginY()F
    .registers 2

    .line 650
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    return v0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getRight()F
    .registers 3

    .line 581
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getRotation()F
    .registers 2

    .line 739
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 681
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 692
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    return v0
.end method

.method public getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method public getTop()F
    .registers 3

    .line 576
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()F
    .registers 2

    .line 553
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    return v0
.end method

.method public getX()F
    .registers 2

    .line 442
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    return v0
.end method

.method public getX(I)F
    .registers 5
    .param p1, "alignment"  # I

    .line 447
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 448
    .local v0, "x":F
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_a

    .line 449
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, v1

    goto :goto_14

    .line 450
    :cond_a
    and-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_14

    .line 451
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 452
    :cond_14
    :goto_14
    return v0
.end method

.method public getY()F
    .registers 2

    .line 479
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    return v0
.end method

.method public getY(I)F
    .registers 5
    .param p1, "alignment"  # I

    .line 506
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 507
    .local v0, "y":F
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_a

    .line 508
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, v1

    goto :goto_14

    .line 509
    :cond_a
    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_14

    .line 510
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 511
    :cond_14
    :goto_14
    return v0
.end method

.method public getZIndex()I
    .registers 4

    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 814
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    if-nez v0, :cond_6

    const/4 v1, -0x1

    return v1

    .line 815
    :cond_6
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    return v1
.end method

.method public hasActions()Z
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasKeyboardFocus()Z
    .registers 3

    .line 400
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 401
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-ne v1, p0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public hasParent()Z
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasScrollFocus()Z
    .registers 3

    .line 406
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 407
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-ne v1, p0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 7
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "touchable"  # Z

    .line 209
    const/4 v0, 0x0

    if-eqz p3, :cond_a

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-eq v1, v2, :cond_a

    return-object v0

    .line 210
    :cond_a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v1

    if-nez v1, :cond_11

    return-object v0

    .line 211
    :cond_11
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_27

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_27

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_27

    move-object v0, p0

    :cond_27
    return-object v0
.end method

.method public isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 4
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 323
    if-eqz p1, :cond_c

    .line 325
    :cond_2
    if-ne p1, p0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 326
    :cond_6
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 327
    if-nez p1, :cond_2

    .line 328
    const/4 v0, 0x0

    return v0

    .line 323
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 4
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 312
    if-eqz p1, :cond_d

    .line 313
    move-object v0, p0

    .line 315
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_3
    if-ne v0, p1, :cond_7

    const/4 v1, 0x1

    return v1

    .line 316
    :cond_7
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 317
    if-nez v0, :cond_3

    .line 318
    const/4 v1, 0x0

    return v1

    .line 312
    .end local v0  # "parent":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isTouchFocusListener()Z
    .registers 6

    .line 423
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 424
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 425
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v3, "n":I
    :goto_d
    if-ge v2, v3, :cond_20

    .line 426
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p0, :cond_1d

    const/4 v1, 0x1

    return v1

    .line 425
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 427
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_20
    return v1
.end method

.method public isTouchFocusTarget()Z
    .registers 6

    .line 413
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 414
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 415
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v3, "n":I
    :goto_d
    if-ge v2, v3, :cond_20

    .line 416
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p0, :cond_1d

    const/4 v1, 0x1

    return v1

    .line 415
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 417
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_20
    return v1
.end method

.method public isTouchable()Z
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 374
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    return v0
.end method

.method public localToActorCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "localCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 950
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 951
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4
    .param p1, "ascendant"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "localCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 939
    move-object v0, p0

    .line 941
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToParentCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 942
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 943
    if-ne v0, p1, :cond_9

    goto :goto_b

    .line 944
    :cond_9
    if-nez v0, :cond_1

    .line 945
    :goto_b
    return-object p2
.end method

.method public localToParentCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 15
    .param p1, "localCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 909
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    neg-float v0, v0

    .line 910
    .local v0, "rotation":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 911
    .local v1, "scaleX":F
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 912
    .local v2, "scaleY":F
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 913
    .local v3, "x":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 914
    .local v4, "y":F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_3a

    .line 915
    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v6, v1, v5

    if-nez v6, :cond_25

    cmpl-float v5, v2, v5

    if-nez v5, :cond_25

    .line 916
    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v5, v3

    iput v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 917
    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v4

    iput v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_6a

    .line 919
    :cond_25
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 920
    .local v5, "originX":F
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 921
    .local v6, "originY":F
    iget v7, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v7, v5

    mul-float/2addr v7, v1

    add-float/2addr v7, v5

    add-float/2addr v7, v3

    iput v7, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 922
    iget v7, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v6

    mul-float/2addr v7, v2

    add-float/2addr v7, v6

    add-float/2addr v7, v4

    iput v7, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 923
    .end local v5  # "originX":F
    .end local v6  # "originY":F
    goto :goto_6a

    .line 925
    :cond_3a
    const v5, 0x3c8efa35

    mul-float v6, v0, v5

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 926
    .local v6, "cos":F
    mul-float/2addr v5, v0

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 927
    .local v5, "sin":F
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 928
    .local v7, "originX":F
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 929
    .local v8, "originY":F
    iget v9, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v9, v7

    mul-float/2addr v9, v1

    .line 930
    .local v9, "tox":F
    iget v10, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v10, v8

    mul-float/2addr v10, v2

    .line 931
    .local v10, "toy":F
    mul-float v11, v9, v6

    mul-float v12, v10, v5

    add-float/2addr v11, v12

    add-float/2addr v11, v7

    add-float/2addr v11, v3

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 932
    neg-float v11, v5

    mul-float/2addr v11, v9

    mul-float v12, v10, v6

    add-float/2addr v11, v12

    add-float/2addr v11, v8

    add-float/2addr v11, v4

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 934
    .end local v5  # "sin":F
    .end local v6  # "cos":F
    .end local v7  # "originX":F
    .end local v8  # "originY":F
    .end local v9  # "tox":F
    .end local v10  # "toy":F
    :goto_6a
    return-object p1
.end method

.method public localToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4
    .param p1, "localCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 897
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 898
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-nez v0, :cond_5

    return-object p1

    .line 899
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1
.end method

.method public localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 3
    .param p1, "localCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 904
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public moveBy(FF)V
    .registers 5
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 545
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_9

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_16

    .line 546
    :cond_9
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 547
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 548
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 550
    :cond_16
    return-void
.end method

.method public notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z
    .registers 10
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/Event;
    .param p2, "capture"  # Z

    .line 176
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 178
    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 179
    .local v0, "listeners":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<Lcom/badlogic/gdx/scenes/scene2d/EventListener;>;"
    :goto_d
    iget v1, v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->size:I

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v1

    return v1

    .line 181
    :cond_16
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 182
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setCapture(Z)V

    .line 183
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 186
    :cond_27
    :try_start_27
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->size:I

    .local v2, "n":I
    :goto_2d
    if-ge v1, v2, :cond_41

    .line 188
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->handle()V

    .line 187
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 189
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_41
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_44} :catch_4a

    .line 193
    nop

    .line 195
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v1

    return v1

    .line 190
    :catch_4a
    move-exception v1

    .line 191
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "context":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Actor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x80

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 176
    .end local v0  # "listeners":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<Lcom/badlogic/gdx/scenes/scene2d/EventListener;>;"
    .end local v1  # "ex":Ljava/lang/RuntimeException;
    .end local v2  # "context":Ljava/lang/String;
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The event target cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 15
    .param p1, "parentCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 866
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 867
    .local v0, "rotation":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 868
    .local v1, "scaleX":F
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 869
    .local v2, "scaleY":F
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 870
    .local v3, "childX":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 871
    .local v4, "childY":F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_39

    .line 872
    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v6, v1, v5

    if-nez v6, :cond_24

    cmpl-float v5, v2, v5

    if-nez v5, :cond_24

    .line 873
    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v3

    iput v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 874
    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v5, v4

    iput v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_69

    .line 876
    :cond_24
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 877
    .local v5, "originX":F
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 878
    .local v6, "originY":F
    iget v7, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v7, v3

    sub-float/2addr v7, v5

    div-float/2addr v7, v1

    add-float/2addr v7, v5

    iput v7, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 879
    iget v7, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v4

    sub-float/2addr v7, v6

    div-float/2addr v7, v2

    add-float/2addr v7, v6

    iput v7, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 880
    .end local v5  # "originX":F
    .end local v6  # "originY":F
    goto :goto_69

    .line 882
    :cond_39
    const v5, 0x3c8efa35

    mul-float v6, v0, v5

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 883
    .local v6, "cos":F
    mul-float/2addr v5, v0

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 884
    .local v5, "sin":F
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 885
    .local v7, "originX":F
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 886
    .local v8, "originY":F
    iget v9, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v9, v3

    sub-float/2addr v9, v7

    .line 887
    .local v9, "tox":F
    iget v10, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v10, v4

    sub-float/2addr v10, v8

    .line 888
    .local v10, "toy":F
    mul-float v11, v9, v6

    mul-float v12, v10, v5

    add-float/2addr v11, v12

    div-float/2addr v11, v1

    add-float/2addr v11, v7

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 889
    neg-float v11, v5

    mul-float/2addr v11, v9

    mul-float v12, v10, v6

    add-float/2addr v11, v12

    div-float/2addr v11, v2

    add-float/2addr v11, v8

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 891
    .end local v5  # "sin":F
    .end local v6  # "cos":F
    .end local v7  # "originX":F
    .end local v8  # "originY":F
    .end local v9  # "tox":F
    .end local v10  # "toy":F
    :goto_69
    return-object p1
.end method

.method protected positionChanged()V
    .registers 1

    .line 586
    return-void
.end method

.method public remove()Z
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    return v0

    .line 218
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .registers 4
    .param p1, "action"  # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 268
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 269
    :cond_f
    return-void
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 251
    if-eqz p1, :cond_a

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0

    .line 251
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .registers 4
    .param p1, "listener"  # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 234
    if-eqz p1, :cond_a

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0

    .line 234
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotateBy(F)V
    .registers 4
    .param p1, "amountInDegrees"  # F

    .line 751
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_10

    .line 752
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    add-float/2addr v0, p1

    const/high16 v1, 0x43b40000  # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 753
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotationChanged()V

    .line 755
    :cond_10
    return-void
.end method

.method protected rotationChanged()V
    .registers 1

    .line 598
    return-void
.end method

.method public scaleBy(F)V
    .registers 3
    .param p1, "scale"  # F

    .line 722
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    .line 723
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 724
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 725
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    .line 727
    :cond_12
    return-void
.end method

.method public scaleBy(FF)V
    .registers 5
    .param p1, "scaleX"  # F
    .param p2, "scaleY"  # F

    .line 731
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_9

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_16

    .line 732
    :cond_9
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 733
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 734
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    .line 736
    :cond_16
    return-void
.end method

.method protected scaleChanged()V
    .registers 1

    .line 594
    return-void
.end method

.method public screenToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4
    .param p1, "screenCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 852
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 853
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-nez v0, :cond_5

    return-object p1

    .line 854
    :cond_5
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1
.end method

.method public setBounds(FFFF)V
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F

    .line 629
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_13

    .line 630
    :cond_c
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 631
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 632
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 634
    :cond_13
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_26

    .line 635
    :cond_1f
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 636
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 637
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 639
    :cond_26
    return-void
.end method

.method public setColor(FFFF)V
    .registers 6
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F
    .param p4, "a"  # F

    .line 762
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 763
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 758
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 759
    return-void
.end method

.method public setDebug(Z)V
    .registers 3
    .param p1, "enabled"  # Z

    .line 969
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->debug:Z

    .line 970
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    .line 971
    :cond_7
    return-void
.end method

.method public setHeight(F)V
    .registers 3
    .param p1, "height"  # F

    .line 568
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 569
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 570
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 572
    :cond_b
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"  # Ljava/lang/String;

    .line 780
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    .line 781
    return-void
.end method

.method public setOrigin(FF)V
    .registers 3
    .param p1, "originX"  # F
    .param p2, "originY"  # F

    .line 659
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 660
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 661
    return-void
.end method

.method public setOrigin(I)V
    .registers 5
    .param p1, "alignment"  # I

    .line 665
    and-int/lit8 v0, p1, 0x8

    const/high16 v1, 0x40000000  # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 666
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    goto :goto_18

    .line 667
    :cond_a
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_13

    .line 668
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    goto :goto_18

    .line 670
    :cond_13
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 672
    :goto_18
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1f

    .line 673
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    goto :goto_2d

    .line 674
    :cond_1f
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_28

    .line 675
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    goto :goto_2d

    .line 677
    :cond_28
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 678
    :goto_2d
    return-void
.end method

.method public setOriginX(F)V
    .registers 2
    .param p1, "originX"  # F

    .line 646
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 647
    return-void
.end method

.method public setOriginY(F)V
    .registers 2
    .param p1, "originY"  # F

    .line 654
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 655
    return-void
.end method

.method protected setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .registers 2
    .param p1, "parent"  # Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 356
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 357
    return-void
.end method

.method public setPosition(FF)V
    .registers 4
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 516
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_13

    .line 517
    :cond_c
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 518
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 519
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 521
    :cond_13
    return-void
.end method

.method public setPosition(FFI)V
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "alignment"  # I

    .line 526
    and-int/lit8 v0, p3, 0x10

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_a

    .line 527
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    sub-float/2addr p1, v0

    goto :goto_12

    .line 528
    :cond_a
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_12

    .line 529
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 531
    :cond_12
    :goto_12
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1a

    .line 532
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    sub-float/2addr p2, v0

    goto :goto_22

    .line 533
    :cond_1a
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_22

    .line 534
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    .line 536
    :cond_22
    :goto_22
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_35

    .line 537
    :cond_2e
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 538
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 539
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 541
    :cond_35
    return-void
.end method

.method public setRotation(F)V
    .registers 3
    .param p1, "degrees"  # F

    .line 743
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 744
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 745
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotationChanged()V

    .line 747
    :cond_b
    return-void
.end method

.method public setScale(F)V
    .registers 3
    .param p1, "scaleXY"  # F

    .line 704
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_13

    .line 705
    :cond_c
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 706
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 707
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    .line 709
    :cond_13
    return-void
.end method

.method public setScale(FF)V
    .registers 4
    .param p1, "scaleX"  # F
    .param p2, "scaleY"  # F

    .line 713
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_13

    .line 714
    :cond_c
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 715
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 716
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    .line 718
    :cond_13
    return-void
.end method

.method public setScaleX(F)V
    .registers 3
    .param p1, "scaleX"  # F

    .line 685
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 686
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 687
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    .line 689
    :cond_b
    return-void
.end method

.method public setScaleY(F)V
    .registers 3
    .param p1, "scaleY"  # F

    .line 696
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 697
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 698
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    .line 700
    :cond_b
    return-void
.end method

.method public setSize(FF)V
    .registers 4
    .param p1, "width"  # F
    .param p2, "height"  # F

    .line 602
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_13

    .line 603
    :cond_c
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 604
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 605
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 607
    :cond_13
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .registers 2
    .param p1, "stage"  # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 307
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 308
    return-void
.end method

.method public setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V
    .registers 2
    .param p1, "touchable"  # Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 370
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 371
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .registers 2
    .param p1, "userObject"  # Ljava/lang/Object;

    .line 437
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->userObject:Ljava/lang/Object;

    .line 438
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"  # Z

    .line 379
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    .line 380
    return-void
.end method

.method public setWidth(F)V
    .registers 3
    .param p1, "width"  # F

    .line 557
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 558
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 559
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 561
    :cond_b
    return-void
.end method

.method public setX(F)V
    .registers 3
    .param p1, "x"  # F

    .line 456
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 457
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 458
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 460
    :cond_b
    return-void
.end method

.method public setX(FI)V
    .registers 5
    .param p1, "x"  # F
    .param p2, "alignment"  # I

    .line 466
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_8

    .line 467
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    sub-float/2addr p1, v0

    goto :goto_12

    .line 468
    :cond_8
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_12

    .line 469
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 471
    :cond_12
    :goto_12
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1d

    .line 472
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 473
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 475
    :cond_1d
    return-void
.end method

.method public setY(F)V
    .registers 3
    .param p1, "y"  # F

    .line 483
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 484
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 485
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 487
    :cond_b
    return-void
.end method

.method public setY(FI)V
    .registers 5
    .param p1, "y"  # F
    .param p2, "alignment"  # I

    .line 493
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_8

    .line 494
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    sub-float/2addr p1, v0

    goto :goto_12

    .line 495
    :cond_8
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_12

    .line 496
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 498
    :cond_12
    :goto_12
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1d

    .line 499
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 500
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 502
    :cond_1d
    return-void
.end method

.method public setZIndex(I)Z
    .registers 7
    .param p1, "index"  # I

    .line 798
    if-ltz p1, :cond_29

    .line 799
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 800
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 801
    :cond_8
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 802
    .local v2, "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    return v1

    .line 803
    :cond_10
    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 804
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1e

    return v1

    .line 805
    :cond_1e
    invoke-virtual {v2, p0, v4}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_25

    return v1

    .line 806
    :cond_25
    invoke-virtual {v2, p1, p0}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 807
    return v4

    .line 798
    .end local v0  # "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    .end local v2  # "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZIndex cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sizeBy(F)V
    .registers 3
    .param p1, "size"  # F

    .line 611
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    .line 612
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 613
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 614
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 616
    :cond_12
    return-void
.end method

.method public sizeBy(FF)V
    .registers 5
    .param p1, "width"  # F
    .param p2, "height"  # F

    .line 620
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_9

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_16

    .line 621
    :cond_9
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 622
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 623
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 625
    :cond_16
    return-void
.end method

.method protected sizeChanged()V
    .registers 1

    .line 590
    return-void
.end method

.method public stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 3
    .param p1, "stageCoords"  # Lcom/badlogic/gdx/math/Vector2;

    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 860
    :cond_9
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 861
    return-object p1
.end method

.method public toBack()V
    .registers 2

    .line 790
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    .line 791
    return-void
.end method

.method public toFront()V
    .registers 2

    .line 785
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    .line 786
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 984
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    .line 985
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 986
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 987
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 988
    .local v1, "dotIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 990
    .end local v1  # "dotIndex":I
    :cond_1b
    return-object v0
.end method
