.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/InputListener;"
    }
.end annotation


# static fields
.field static tmp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field always:Z

.field final container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation
.end field

.field instant:Z

.field private final manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

.field targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->tmp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    .local p1, "contents":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->getInstance()Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;)V
    .registers 5
    .param p2, "manager"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;",
            ")V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    .local p1, "contents":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 54
    return-void
.end method

.method private setContainerPosition(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V
    .registers 13
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 98
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 99
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 100
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-nez v0, :cond_9

    return-void

    .line 102
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->pack()V

    .line 103
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->offsetX:F

    .local v1, "offsetX":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->offsetY:F

    .local v2, "offsetY":F
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->edgeDistance:F

    .line 104
    .local v3, "dist":F
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->tmp:Lcom/badlogic/gdx/math/Vector2;

    add-float v5, p2, v1

    sub-float v6, p3, v2

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 105
    .local v4, "point":Lcom/badlogic/gdx/math/Vector2;
    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_43

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->tmp:Lcom/badlogic/gdx/math/Vector2;

    add-float v6, p2, v1

    add-float v7, p3, v2

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 106
    :cond_43
    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_4b

    iput v3, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 107
    :cond_4b
    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v6

    sub-float/2addr v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6b

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v5

    sub-float/2addr v5, v3

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 108
    :cond_6b
    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v6

    sub-float/2addr v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8b

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v5

    sub-float/2addr v5, v3

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 109
    :cond_8b
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget v6, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setPosition(FF)V

    .line 111
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v8

    div-float/2addr v8, v7

    invoke-virtual {v5, v6, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 112
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 113
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget v6, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setOrigin(FF)V

    .line 114
    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 8
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "fromActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 117
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    const/4 v0, -0x1

    if-eq p4, v0, :cond_4

    return-void

    .line 118
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 119
    :cond_d
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 120
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz p5, :cond_1a

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    .line 121
    :cond_1a
    invoke-direct {p0, v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->setContainerPosition(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V

    .line 122
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->enter(Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;)V

    .line 123
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 7
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "toActor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 126
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    if-eqz p5, :cond_d

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 127
    :cond_d
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->hide()V

    .line 128
    return-void
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object v0
.end method

.method public getManager()Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;
    .registers 2

    .line 57
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    return-object v0
.end method

.method public hide()V
    .registers 2

    .line 131
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->hide(Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;)V

    .line 132
    return-void
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .registers 5
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 92
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 93
    :cond_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->setContainerPosition(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    .local p1, "contents":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 66
    return-void
.end method

.method public setAlways(Z)V
    .registers 2
    .param p1, "always"  # Z

    .line 79
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->always:Z

    .line 80
    return-void
.end method

.method public setInstant(Z)V
    .registers 2
    .param p1, "instant"  # Z

    .line 74
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->instant:Z

    .line 75
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 8
    .param p1, "event"  # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "pointer"  # I
    .param p5, "button"  # I

    .line 83
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->instant:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->toFront()V

    .line 85
    return v1

    .line 87
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;)V

    .line 88
    return v1
.end method
