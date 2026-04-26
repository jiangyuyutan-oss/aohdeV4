.class public abstract Lcom/badlogic/gdx/scenes/scene2d/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# instance fields
.field protected actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private pool:Lcom/badlogic/gdx/utils/Pool;

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract act(F)Z
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getPool()Lcom/badlogic/gdx/utils/Pool;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-object v0
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 91
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 92
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 93
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 94
    return-void
.end method

.method public restart()V
    .registers 1

    .line 43
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 3
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 57
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 59
    :cond_9
    if-nez p1, :cond_17

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    if-eqz v0, :cond_17

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 65
    :cond_17
    return-void
.end method

.method public setPool(Lcom/badlogic/gdx/utils/Pool;)V
    .registers 2
    .param p1, "pool"  # Lcom/badlogic/gdx/utils/Pool;

    .line 104
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 105
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 2
    .param p1, "target"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 75
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 110
    .local v1, "dotIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_17
    const-string v2, "Action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_2a
    return-object v0
.end method
