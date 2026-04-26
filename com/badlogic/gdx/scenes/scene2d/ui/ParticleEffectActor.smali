.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "ParticleEffectActor.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private autoRemove:Z

.field protected isRunning:Z

.field protected lastDelta:F

.field protected ownsEffect:Z

.field private final particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

.field private resetOnStart:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 4
    .param p1, "particleFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imagesDir"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->ownsEffect:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .registers 4
    .param p1, "particleFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "atlas"  # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    .line 32
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->ownsEffect:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)V
    .registers 3
    .param p1, "particleEffect"  # Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
    .param p2, "resetOnStart"  # Z

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    .line 26
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->resetOnStart:Z

    .line 27
    return-void
.end method


# virtual methods
.method public act(F)V
    .registers 3
    .param p1, "delta"  # F

    .line 58
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 61
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->lastDelta:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->lastDelta:F

    .line 63
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->autoRemove:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 64
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->remove()Z

    .line 66
    :cond_17
    return-void
.end method

.method public allowCompletion()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    .line 114
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->isRunning:Z

    .line 110
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->ownsEffect:Z

    if-eqz v0, :cond_9

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->dispose()V

    .line 121
    :cond_9
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 6
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    .line 46
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->lastDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->lastDelta:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->update(F)V

    .line 48
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->lastDelta:F

    .line 50
    :cond_1d
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->isRunning:Z

    if-eqz v0, :cond_30

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->isComplete()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->isRunning:Z

    .line 54
    :cond_30
    return-void
.end method

.method public getEffect()Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    return-object v0
.end method

.method public isAutoRemove()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->autoRemove:Z

    return v0
.end method

.method public isResetOnStart()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->resetOnStart:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->isRunning:Z

    return v0
.end method

.method protected scaleChanged()V
    .registers 5

    .line 104
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->getScaleY()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->getScaleY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->scaleEffect(FFF)V

    .line 106
    return-void
.end method

.method public setAutoRemove(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;
    .registers 2
    .param p1, "autoRemove"  # Z

    .line 90
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->autoRemove:Z

    .line 91
    return-object p0
.end method

.method public setResetOnStart(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;
    .registers 2
    .param p1, "resetOnStart"  # Z

    .line 81
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->resetOnStart:Z

    .line 82
    return-object p0
.end method

.method public start()V
    .registers 3

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->isRunning:Z

    .line 70
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->resetOnStart:Z

    if-eqz v0, :cond_d

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->reset(Z)V

    .line 73
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->start()V

    .line 74
    return-void
.end method
