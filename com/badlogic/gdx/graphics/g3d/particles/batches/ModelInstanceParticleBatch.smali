.class public Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;
.super Ljava/lang/Object;
.source "ModelInstanceParticleBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;",
        ">;"
    }
.end annotation


# instance fields
.field bufferedParticlesCount:I

.field controllersRenderData:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->controllersRenderData:Lcom/badlogic/gdx/utils/Array;

    .line 34
    return-void
.end method


# virtual methods
.method public begin()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->controllersRenderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->bufferedParticlesCount:I

    .line 53
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;)V
    .registers 4
    .param p1, "data"  # Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->controllersRenderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 62
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->bufferedParticlesCount:I

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->bufferedParticlesCount:I

    .line 63
    return-void
.end method

.method public bridge synthetic draw(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V
    .registers 2

    .line 28
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->draw(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;)V

    return-void
.end method

.method public end()V
    .registers 1

    .line 57
    return-void
.end method

.method public getBufferedCount()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->bufferedParticlesCount:I

    return v0
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .registers 8
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

    .line 38
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;->controllersRenderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    .line 39
    .local v1, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .local v3, "count":I
    :goto_19
    if-ge v2, v3, :cond_29

    .line 40
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->modelInstanceChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v4, [Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 42
    .end local v1  # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;
    .end local v2  # "i":I
    .end local v3  # "count":I
    :cond_29
    goto :goto_6

    .line 43
    :cond_2a
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .registers 3
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "assetDependencyData"  # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 71
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .registers 3
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "assetDependencyData"  # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 67
    return-void
.end method
