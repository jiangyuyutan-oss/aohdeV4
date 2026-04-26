.class public final Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;
.super Ljava/lang/Object;
.source "ParticleSystem.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;


# static fields
.field private static instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;


# instance fields
.field private batches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
            "*>;>;"
        }
    .end annotation
.end field

.field private effects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    .line 44
    return-void
.end method

.method public static get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    if-nez v0, :cond_b

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    .line 35
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;)V
    .registers 3
    .param p1, "effect"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
            "*>;)V"
        }
    .end annotation

    .line 47
    .local p1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public begin()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 92
    .local v1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->begin()V

    .end local v1  # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    goto :goto_6

    .line 93
    :cond_16
    return-void
.end method

.method public draw()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 98
    .local v1, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    .line 99
    .end local v1  # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    goto :goto_6

    .line 100
    :cond_16
    return-void
.end method

.method public end()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 105
    .local v1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->end()V

    .end local v1  # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    goto :goto_6

    .line 106
    :cond_16
    return-void
.end method

.method public getBatches()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
            "*>;>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 111
    .local v1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .end local v1  # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    goto :goto_6

    .line 112
    :cond_16
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;)V
    .registers 4
    .param p1, "effect"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 56
    return-void
.end method

.method public removeAll()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 61
    return-void
.end method

.method public update()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 66
    .local v1, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update()V

    .line 67
    .end local v1  # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    goto :goto_6

    .line 68
    :cond_16
    return-void
.end method

.method public update(F)V
    .registers 4
    .param p1, "deltaTime"  # F

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 79
    .local v1, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update(F)V

    .line 80
    .end local v1  # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    goto :goto_6

    .line 81
    :cond_16
    return-void
.end method

.method public updateAndDraw()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 72
    .local v1, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update()V

    .line 73
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    .line 74
    .end local v1  # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    goto :goto_6

    .line 75
    :cond_19
    return-void
.end method

.method public updateAndDraw(F)V
    .registers 4
    .param p1, "deltaTime"  # F

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 84
    .local v1, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update(F)V

    .line 85
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    .line 86
    .end local v1  # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    goto :goto_6

    .line 87
    :cond_19
    return-void
.end method
