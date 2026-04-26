.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "ParticleEffectLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;",
        ">;"
    }
.end annotation


# instance fields
.field protected items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .registers 3
    .param p1, "resolver"  # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 46
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 43
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    .line 47
    return-void
.end method

.method private find(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/utils/Array<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 138
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<*>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v1

    .line 140
    .end local v1  # "object":Ljava/lang/Object;
    :cond_19
    goto :goto_4

    .line 141
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .registers 4

    .line 41
    check-cast p3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)Lcom/badlogic/gdx/utils/Array;
    .registers 13
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 56
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 57
    .local v1, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;"
    const/4 v2, 0x0

    .line 58
    .local v2, "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v3

    .line 59
    :try_start_11
    new-instance v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Entry;-><init>()V

    .line 60
    .local v4, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    iput-object p1, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    .line 61
    iput-object v1, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    .line 62
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getAssets()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    move-object v2, v5

    .line 64
    .end local v4  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_81

    .line 66
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 67
    .local v3, "descriptors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    .line 70
    .local v5, "assetData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData<*>;"
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-nez v6, :cond_60

    .line 71
    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    .line 74
    :cond_60
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    const-class v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    if-ne v6, v7, :cond_73

    .line 75
    new-instance v6, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    invoke-direct {v6, v7, v8, p3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_7f

    .line 77
    :cond_73
    new-instance v6, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 78
    .end local v5  # "assetData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData<*>;"
    :goto_7f
    goto :goto_2e

    .line 80
    :cond_80
    return-object v3

    .line 64
    .end local v3  # "descriptors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    :catchall_81
    move-exception v4

    :try_start_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v4
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .registers 5

    .line 41
    check-cast p4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)V
    .registers 5
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;

    .line 51
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    .registers 10
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "effectData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 115
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_2b

    .line 116
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 117
    .local v3, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    iget-object v4, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 118
    iget-object v4, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    move-object v0, v4

    .line 119
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 120
    goto :goto_2b

    .line 115
    .end local v3  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;>;"
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 123
    .end local v2  # "i":I
    :cond_2b
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_5d

    .line 125
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->resource:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 126
    if-eqz p4, :cond_58

    .line 127
    iget-object v1, p4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    if-eqz v1, :cond_4f

    .line 128
    iget-object v1, p4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 129
    .local v2, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v2, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 130
    .end local v2  # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    goto :goto_3f

    .line 132
    :cond_4f
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->resource:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    iget-object v2, p4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->setBatch(Lcom/badlogic/gdx/utils/Array;)V

    .line 134
    :cond_58
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->resource:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    return-object v1

    .line 123
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v2
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .registers 5

    .line 41
    check-cast p4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectLoadParameter;)Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    move-result-object p1

    return-object p1
.end method

.method public save(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;)V
    .registers 10
    .param p1, "effect"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    .param p2, "parameter"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;-><init>(Ljava/lang/Object;)V

    .line 89
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;, "Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;"
    iget-object v1, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 92
    iget-object v1, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    if-eqz v1, :cond_48

    .line 93
    iget-object v1, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 94
    .local v2, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    const/4 v3, 0x0

    .line 95
    .local v3, "save":Z
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->getControllers()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 96
    .local v5, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->isCompatible(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 97
    const/4 v3, 0x1

    .line 98
    goto :goto_40

    .line 100
    .end local v5  # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_3f
    goto :goto_29

    .line 102
    :cond_40
    :goto_40
    if-eqz v3, :cond_47

    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-interface {v2, v4, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 103
    .end local v2  # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    .end local v3  # "save":Z
    :cond_47
    goto :goto_14

    .line 107
    :cond_48
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 108
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader$ParticleEffectSaveParameter;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 109
    return-void
.end method
