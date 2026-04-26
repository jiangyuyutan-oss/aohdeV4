.class public Lcom/badlogic/gdx/assets/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    }
.end annotation


# instance fields
.field final assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final assets:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field final executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

.field final injected:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

.field final loadQueue:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field loaded:I

.field final loaders:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field log:Lcom/badlogic/gdx/utils/Logger;

.field peakTasks:I

.field final resolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

.field final tasks:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetLoadingTask;",
            ">;"
        }
    .end annotation
.end field

.field toLoad:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 92
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .registers 3
    .param p1, "resolver"  # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;Z)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;Z)V
    .registers 7
    .param p1, "resolver"  # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .param p2, "defaultLoaders"  # Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 72
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 73
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->injected:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    .line 80
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    .line 88
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    const/4 v1, 0x0

    const-string v2, "AssetManager"

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    .line 104
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->resolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 105
    if-eqz p2, :cond_f2

    .line 106
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 107
    const-class v0, Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/MusicLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 108
    const-class v0, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 109
    const-class v0, Lcom/badlogic/gdx/audio/Sound;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/SoundLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/SoundLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 110
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 111
    const-class v0, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/TextureLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 112
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/SkinLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 113
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 114
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 116
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 117
    const-class v0, Lcom/badlogic/gdx/utils/I18NBundle;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 118
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/Model;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;

    new-instance v3, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-direct {v1, v3, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    const-string v3, ".g3dj"

    invoke-virtual {p0, v0, v3, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 119
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/Model;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;

    new-instance v3, Lcom/badlogic/gdx/utils/UBJsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/UBJsonReader;-><init>()V

    invoke-direct {v1, v3, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    const-string v3, ".g3db"

    invoke-virtual {p0, v0, v3, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 120
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/Model;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    const-string v3, ".obj"

    invoke-virtual {p0, v0, v3, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 121
    const-class v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 122
    const-class v0, Lcom/badlogic/gdx/graphics/Cubemap;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 124
    :cond_f2
    new-instance v0, Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    .line 125
    return-void
.end method

.method private addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .registers 6
    .param p1, "assetDesc"  # Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 548
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object v1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object v0

    .line 549
    .local v0, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    if-eqz v0, :cond_1d

    .line 550
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/badlogic/gdx/assets/AssetLoadingTask;-><init>(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/assets/AssetDescriptor;Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/utils/async/AsyncExecutor;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 551
    iget v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    .line 552
    return-void

    .line 549
    :cond_1d
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No loader for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleTaskError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "t"  # Ljava/lang/Throwable;

    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Error loading asset."

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 634
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 635
    .local v0, "task":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 638
    .local v1, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-boolean v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    if-eqz v2, :cond_39

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    if-eqz v2, :cond_39

    .line 639
    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 640
    .local v3, "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v4, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    .end local v3  # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    goto :goto_27

    .line 644
    :cond_39
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 647
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

    if-eqz v2, :cond_48

    .line 648
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

    invoke-interface {v2, v1, p1}, Lcom/badlogic/gdx/assets/AssetErrorListener;->error(Lcom/badlogic/gdx/assets/AssetDescriptor;Ljava/lang/Throwable;)V

    .line 651
    return-void

    .line 650
    :cond_48
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 631
    .end local v0  # "task":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    .end local v1  # "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :cond_4e
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private incrementRefCountedDependencies(Ljava/lang/String;)V
    .registers 8
    .param p1, "parent"  # Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 616
    .local v0, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-nez v0, :cond_b

    return-void

    .line 618
    :cond_b
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 619
    .local v2, "dependency":Ljava/lang/String;
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 620
    .local v3, "type":Ljava/lang/Class;
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    .line 621
    .local v4, "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    iget v5, v4, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    .line 622
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V

    .line 623
    .end local v2  # "dependency":Ljava/lang/String;
    .end local v3  # "type":Ljava/lang/Class;
    .end local v4  # "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    goto :goto_f

    .line 624
    :cond_3b
    return-void
.end method

.method private declared-synchronized injectDependency(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .registers 7
    .param p1, "parentAssetFilename"  # Ljava/lang/String;
    .param p2, "dependendAssetDesc"  # Lcom/badlogic/gdx/assets/AssetDescriptor;

    monitor-enter p0

    .line 503
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 504
    .local v0, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-nez v0, :cond_16

    .line 505
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v0, v1

    .line 506
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_16
    iget-object v1, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 511
    iget-object v1, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 512
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency already loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 514
    .local v1, "type":Ljava/lang/Class;
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v3, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    .line 515
    .local v2, "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    iget v3, v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    .line 516
    iget-object v3, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V

    .line 517
    .end local v1  # "type":Ljava/lang/Class;
    .end local v2  # "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    goto :goto_7c

    .line 519
    :cond_61
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading dependency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/assets/AssetManager;->addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_7e

    .line 522
    :goto_7c
    monitor-exit p0

    return-void

    .line 502
    .end local v0  # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local p1  # "parentAssetFilename":Ljava/lang/String;
    .end local p2  # "dependendAssetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private nextTask()V
    .registers 7

    .line 527
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 530
    .local v0, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 531
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 533
    .local v1, "type":Ljava/lang/Class;
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    .line 534
    .local v2, "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    iget v3, v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    .line 535
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V

    .line 536
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz v3, :cond_63

    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz v3, :cond_63

    .line 537
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v5, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {v3, p0, v4, v5}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V

    .line 538
    :cond_63
    iget v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 539
    .end local v1  # "type":Ljava/lang/Class;
    .end local v2  # "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    goto :goto_85

    .line 541
    :cond_6a
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 542
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V

    .line 544
    :goto_85
    return-void
.end method

.method private updateTask()Z
    .registers 10

    .line 573
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 575
    .local v0, "task":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    const/4 v1, 0x1

    .line 577
    .local v1, "complete":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_b
    iget-boolean v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    if-nez v4, :cond_18

    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->update()Z

    move-result v4
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_13} :catch_1b

    if-eqz v4, :cond_16

    goto :goto_18

    :cond_16
    move v4, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v4, v3

    :goto_19
    move v1, v4

    .line 581
    goto :goto_23

    .line 578
    :catch_1b
    move-exception v4

    .line 579
    .local v4, "ex":Ljava/lang/RuntimeException;
    iput-boolean v3, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    .line 580
    iget-object v5, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {p0, v5, v4}, Lcom/badlogic/gdx/assets/AssetManager;->taskFailed(Lcom/badlogic/gdx/assets/AssetDescriptor;Ljava/lang/RuntimeException;)V

    .line 584
    .end local v4  # "ex":Ljava/lang/RuntimeException;
    :goto_23
    if-eqz v1, :cond_9a

    .line 586
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v4, v3, :cond_32

    .line 587
    iget v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 588
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    .line 590
    :cond_32
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    .line 592
    iget-boolean v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    if-eqz v2, :cond_3c

    return v3

    .line 594
    :cond_3c
    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object v5, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    invoke-virtual {p0, v2, v4, v5}, Lcom/badlogic/gdx/assets/AssetManager;->addAsset(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 597
    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz v2, :cond_68

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz v2, :cond_68

    .line 598
    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v5, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {v2, p0, v4, v5}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V

    .line 600
    :cond_68
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v4

    .line 601
    .local v4, "endTime":J
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->startTime:J

    sub-long v7, v4, v7

    long-to-float v7, v7

    const v8, 0x49742400  # 1000000.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 603
    return v3

    .line 605
    .end local v4  # "endTime":J
    :cond_9a
    return v2
.end method


# virtual methods
.method protected addAsset(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .param p1, "fileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 557
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "asset":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 561
    .local v0, "typeToAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    if-nez v0, :cond_1a

    .line 562
    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    move-object v0, v1

    .line 563
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p2, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_1a
    new-instance v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    invoke-direct {v1}, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;-><init>()V

    .line 566
    .local v1, "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    iput-object p3, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->object:Ljava/lang/Object;

    .line 567
    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void
.end method

.method public declared-synchronized clear()V
    .registers 10

    monitor-enter p0

    .line 710
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 711
    :goto_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6

    .line 714
    :cond_d
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    .line 715
    .local v0, "dependencyCount":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<Ljava/lang/String;>;"
    :goto_12
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const/4 v2, 0x0

    if-lez v1, :cond_72

    .line 717
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->clear()V

    .line 718
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    .line 719
    .local v1, "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 720
    .local v4, "asset":Ljava/lang/String;
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Array;

    .line 721
    .local v5, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-nez v5, :cond_41

    goto :goto_2a

    .line 722
    :cond_41
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v6

    :goto_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 723
    .local v7, "dependency":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v0, v7, v2, v8}, Lcom/badlogic/gdx/utils/ObjectIntMap;->getAndIncrement(Ljava/lang/Object;II)I

    goto :goto_45

    .line 724
    .end local v4  # "asset":Ljava/lang/String;
    .end local v5  # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v7  # "dependency":Ljava/lang/String;
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_56
    goto :goto_2a

    .line 727
    :cond_57
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :cond_5b
    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 728
    .restart local v4  # "asset":Ljava/lang/String;
    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v5

    if-nez v5, :cond_5b

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_5b

    .line 729
    .end local v1  # "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v4  # "asset":Ljava/lang/String;
    :cond_71
    goto :goto_12

    .line 731
    :cond_72
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 732
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 733
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 734
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 735
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 736
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    .line 737
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 738
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V
    :try_end_91
    .catchall {:try_start_1 .. :try_end_91} :catchall_93

    .line 739
    monitor-exit p0

    return-void

    .line 709
    .end local v0  # "dependencyCount":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<Ljava/lang/String;>;"
    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .registers 5
    .param p1, "fileName"  # Ljava/lang/String;

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_3e

    if-eqz v0, :cond_1c

    monitor-exit p0

    return v1

    .line 200
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_1c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    :try_start_1d
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_38

    .line 201
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_3e

    if-eqz v2, :cond_35

    monitor-exit p0

    return v1

    .line 200
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 203
    .end local v0  # "i":I
    :cond_38
    :try_start_38
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return v0

    .line 197
    .end local p1  # "fileName":Ljava/lang/String;
    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized contains(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 7
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "type"  # Ljava/lang/Class;

    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    if-lez v0, :cond_20

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 210
    .local v0, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    if-ne v2, p2, :cond_20

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_46

    if-eqz v2, :cond_20

    monitor-exit p0

    return v1

    .line 213
    .end local v0  # "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    :try_start_21
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_40

    .line 214
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 215
    .local v2, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    if-ne v3, p2, :cond_3d

    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_46

    if-eqz v3, :cond_3d

    monitor-exit p0

    return v1

    .line 213
    .end local v2  # "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 218
    .end local v0  # "i":I
    :cond_40
    :try_start_40
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_46

    monitor-exit p0

    return v0

    .line 207
    .end local p1  # "fileName":Ljava/lang/String;
    .end local p2  # "type":Ljava/lang/Class;
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized containsAsset(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .local p1, "asset":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 290
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_39

    .line 291
    .local v0, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_12

    monitor-exit p0

    return v1

    .line 292
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    .line 293
    .local v3, "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    iget-object v4, v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->object:Ljava/lang/Object;

    if-eq v4, p1, :cond_34

    iget-object v4, v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->object:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_39

    if-eqz v4, :cond_33

    goto :goto_34

    .end local v3  # "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    :cond_33
    goto :goto_1a

    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .restart local v3  # "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    :cond_34
    :goto_34
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 294
    .end local v3  # "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    :cond_37
    monitor-exit p0

    return v1

    .line 289
    .end local v0  # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    .end local p1  # "asset":Ljava/lang/Object;, "TT;"
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dispose()V
    .registers 3

    monitor-enter p0

    .line 703
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Disposing."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->clear()V

    .line 705
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->dispose()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 706
    monitor-exit p0

    return-void

    .line 702
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finishLoading()V
    .registers 3

    .line 456
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Waiting for loading to complete..."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 457
    :goto_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v0

    if-nez v0, :cond_11

    .line 458
    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_7

    .line 459
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Loading complete."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public finishLoadingAsset(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;
    .registers 3
    .param p1, "assetDesc"  # Lcom/badlogic/gdx/assets/AssetDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ")TT;"
        }
    .end annotation

    .line 465
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->finishLoadingAsset(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public finishLoadingAsset(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "fileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for asset to be loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 473
    :goto_18
    monitor-enter p0

    .line 474
    :try_start_19
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 475
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz v0, :cond_51

    .line 476
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 477
    .local v1, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    if-eqz v1, :cond_51

    .line 478
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    .line 479
    .local v2, "assetContainer":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    if-eqz v2, :cond_51

    .line 480
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 481
    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->object:Ljava/lang/Object;

    monitor-exit p0

    return-object v3

    .line 485
    .end local v1  # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    .end local v2  # "assetContainer":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    :cond_51
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    .line 486
    nop

    .end local v0  # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_19 .. :try_end_56} :catchall_5a

    .line 487
    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_18

    .line 486
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method public declared-synchronized get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/assets/AssetDescriptor<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p1, "assetDescriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;, "Lcom/badlogic/gdx/assets/AssetDescriptor<TT;>;"
    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 182
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "assetDescriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;, "Lcom/badlogic/gdx/assets/AssetDescriptor<TT;>;"
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "fileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 137
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 137
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "fileName":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "fileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 145
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 145
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "fileName":Ljava/lang/String;
    .end local p2  # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 8
    .param p1, "fileName"  # Ljava/lang/String;
    .param p3, "required"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 170
    .local v0, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    if-eqz v0, :cond_17

    .line 171
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    .line 172
    .local v1, "assetContainer":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->object:Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_35

    monitor-exit p0

    return-object v2

    .line 174
    .end local v1  # "assetContainer":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_17
    if-nez p3, :cond_1c

    .line 175
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 174
    :cond_1c
    :try_start_1c
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset not loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_35

    .line 168
    .end local v0  # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    .end local p1  # "fileName":Ljava/lang/String;
    .end local p2  # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p3  # "required":Z
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 7
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "required"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 153
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz v0, :cond_21

    .line 154
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 155
    .local v1, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    if-eqz v1, :cond_21

    .line 156
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    .line 157
    .local v2, "assetContainer":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    if-eqz v2, :cond_21

    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->object:Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_3f

    monitor-exit p0

    return-object v3

    .line 160
    .end local v1  # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    .end local v2  # "assetContainer":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_21
    if-nez p2, :cond_26

    .line 161
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 160
    :cond_26
    :try_start_26
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset not loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_3f

    .line 151
    .end local v0  # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1  # "fileName":Ljava/lang/String;
    .end local p2  # "required":Z
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAll(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "out":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 189
    .local v0, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    if-eqz v0, :cond_25

    .line 190
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    .line 191
    .local v2, "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->object:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_27

    .end local v2  # "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    goto :goto_13

    .line 193
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_25
    monitor-exit p0

    return-object p2

    .line 187
    .end local v0  # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    .end local p1  # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2  # "out":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .local p1, "asset":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 300
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 301
    .local v1, "assetType":Ljava/lang/Class;
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 302
    .local v2, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 303
    .local v4, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    iget-object v5, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->object:Ljava/lang/Object;

    .line 304
    .local v5, "object":Ljava/lang/Object;
    if-eq v5, p1, :cond_3f

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_3f

    .line 305
    .end local v4  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    .end local v5  # "object":Ljava/lang/Object;
    :cond_3e
    goto :goto_23

    .line 304
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .restart local v4  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    .restart local v5  # "object":Ljava/lang/Object;
    :cond_3f
    :goto_3f
    iget-object v0, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_49

    monitor-exit p0

    return-object v0

    .line 306
    .end local v1  # "assetType":Ljava/lang/Class;
    .end local v2  # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    .end local v4  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    .end local v5  # "object":Ljava/lang/Object;
    :cond_45
    goto :goto_b

    .line 307
    :cond_46
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 299
    .end local p1  # "asset":Ljava/lang/Object;, "TT;"
    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAssetNames()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 795
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 795
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAssetType(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "fileName"  # Ljava/lang/String;

    monitor-enter p0

    .line 805
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 805
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "fileName":Ljava/lang/String;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDependencies(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .registers 3
    .param p1, "fileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 800
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 800
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "fileName":Ljava/lang/String;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDiagnostics()Ljava/lang/String;
    .registers 10

    monitor-enter p0

    .line 768
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 769
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 770
    .local v2, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/Class;>;"
    iget-object v3, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 771
    .local v3, "fileName":Ljava/lang/String;
    iget-object v4, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    .line 773
    .local v4, "type":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2d

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 774
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-static {v4}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const-string v5, ", refs: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget v5, v5, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Array;

    .line 781
    .local v5, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-eqz v5, :cond_82

    .line 782
    const-string v6, ", deps: ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v6

    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 784
    .local v7, "dep":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 786
    nop

    .end local v7  # "dep":Ljava/lang/String;
    goto :goto_67

    .line 787
    :cond_7d
    const/16 v6, 0x5d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    .end local v2  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/Class;>;"
    .end local v3  # "fileName":Ljava/lang/String;
    .end local v4  # "type":Ljava/lang/Class;
    .end local v5  # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :cond_82
    goto :goto_e

    .line 790
    :cond_83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_89

    monitor-exit p0

    return-object v1

    .line 767
    .end local v0  # "buffer":Ljava/lang/StringBuilder;
    :catchall_89
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFileHandleResolver()Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->resolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    return-object v0
.end method

.method public declared-synchronized getLoadedAssets()I
    .registers 2

    monitor-enter p0

    .line 676
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 676
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoader(Ljava/lang/Class;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;"
        }
    .end annotation

    .line 335
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object v0

    return-object v0
.end method

.method public getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .registers 9
    .param p2, "fileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;"
        }
    .end annotation

    .line 344
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 345
    .local v0, "loaders":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    if-eqz v0, :cond_54

    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_10

    goto :goto_54

    .line 346
    :cond_10
    if-nez p2, :cond_1b

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    return-object v1

    .line 347
    :cond_1b
    const/4 v1, 0x0

    .line 348
    .local v1, "result":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    const/4 v2, -0x1

    .line 349
    .local v2, "length":I
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 350
    .local v4, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    iget-object v5, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_52

    iget-object v5, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 351
    iget-object v5, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    .line 352
    iget-object v5, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 354
    .end local v4  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    :cond_52
    goto :goto_25

    .line 355
    :cond_53
    return-object v1

    .line 345
    .end local v1  # "result":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .end local v2  # "length":I
    :cond_54
    :goto_54
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLogger()Lcom/badlogic/gdx/utils/Logger;
    .registers 2

    .line 743
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    return-object v0
.end method

.method public declared-synchronized getProgress()F
    .registers 5

    monitor-enter p0

    .line 686
    :try_start_1
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_9

    monitor-exit p0

    return v1

    .line 687
    :cond_9
    :try_start_9
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    int-to-float v0, v0

    .line 688
    .local v0, "fractionalLoaded":F
    iget v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    if-lez v2, :cond_1d

    .line 689
    iget v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 691
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_1d
    iget v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_28

    monitor-exit p0

    return v1

    .line 685
    .end local v0  # "fractionalLoaded":F
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueuedAssets()I
    .registers 3

    monitor-enter p0

    .line 681
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 681
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReferenceCount(Ljava/lang/String;)I
    .registers 6
    .param p1, "fileName"  # Ljava/lang/String;

    monitor-enter p0

    .line 753
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 754
    .local v0, "type":Ljava/lang/Class;
    if-eqz v0, :cond_1d

    .line 755
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget v1, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_36

    monitor-exit p0

    return v1

    .line 754
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_1d
    :try_start_1d
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset not loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_36

    .line 752
    .end local v0  # "type":Ljava/lang/Class;
    .end local p1  # "fileName":Ljava/lang/String;
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized injectDependencies(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V
    .registers 7
    .param p1, "parentAssetFilename"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;)V"
        }
    .end annotation

    .local p2, "dependendAssetDescs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->injected:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 493
    .local v0, "injected":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 494
    .local v2, "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_7

    .line 495
    :cond_1c
    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->injectDependency(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V

    .line 497
    .end local v2  # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    goto :goto_7

    .line 498
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_25
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->clear(I)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 499
    monitor-exit p0

    return-void

    .line 491
    .end local v0  # "injected":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<Ljava/lang/String;>;"
    .end local p1  # "parentAssetFilename":Ljava/lang/String;
    .end local p2  # "dependendAssetDescs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isFinished()Z
    .registers 2

    monitor-enter p0

    .line 451
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    .line 451
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoaded(Lcom/badlogic/gdx/assets/AssetDescriptor;)Z
    .registers 3
    .param p1, "assetDesc"  # Lcom/badlogic/gdx/assets/AssetDescriptor;

    monitor-enter p0

    .line 313
    :try_start_1
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 313
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isLoaded(Ljava/lang/String;)Z
    .registers 3
    .param p1, "fileName"  # Ljava/lang/String;

    monitor-enter p0

    .line 319
    if-nez p1, :cond_6

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 320
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 318
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "fileName":Ljava/lang/String;
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 6
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "type"  # Ljava/lang/Class;

    monitor-enter p0

    .line 326
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_17

    .line 327
    .local v0, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_e

    monitor-exit p0

    return v1

    .line 328
    :cond_e
    :try_start_e
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    monitor-exit p0

    return v1

    .line 325
    .end local v0  # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;>;"
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "fileName":Ljava/lang/String;
    .end local p2  # "type":Ljava/lang/Class;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .registers 5
    .param p1, "desc"  # Lcom/badlogic/gdx/assets/AssetDescriptor;

    monitor-enter p0

    .line 413
    :try_start_1
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object v2, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 414
    monitor-exit p0

    return-void

    .line 412
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .param p1, "fileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 362
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 363
    monitor-exit p0

    return-void

    .line 361
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "fileName":Ljava/lang/String;
    .end local p2  # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .registers 10
    .param p1, "fileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
            "TT;>;)V"
        }
    .end annotation

    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameter":Lcom/badlogic/gdx/assets/AssetLoaderParameters;, "Lcom/badlogic/gdx/assets/AssetLoaderParameters<TT;>;"
    monitor-enter p0

    .line 370
    :try_start_1
    invoke-virtual {p0, p2, p1}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object v0

    .line 371
    .local v0, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    if-eqz v0, :cond_14c

    .line 374
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_14

    .line 375
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 376
    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 377
    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    .line 383
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_14
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_74

    .line 384
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 385
    .local v2, "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_71

    :cond_34
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset with name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' already in preload queue, but has different type (expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 387
    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {v5}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 383
    .end local v2  # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :cond_71
    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 391
    .end local v1  # "i":I
    :cond_74
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_75
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_d6

    .line 392
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 393
    .restart local v2  # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    goto :goto_d3

    :cond_96
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset with name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' already in task list, but has different type (expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {v5}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 391
    .end local v2  # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :cond_d3
    :goto_d3
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 399
    .end local v1  # "i":I
    :cond_d6
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 400
    .local v1, "otherType":Ljava/lang/Class;
    if-eqz v1, :cond_122

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    goto :goto_122

    .line 401
    :cond_e7
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset with name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' already loaded, but has different type (expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 402
    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_122
    :goto_122
    iget v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 405
    new-instance v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {v2, p1, p2, p3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 406
    .local v2, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 407
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Queued: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_14a
    .catchall {:try_start_1 .. :try_end_14a} :catchall_169

    .line 408
    monitor-exit p0

    return-void

    .line 371
    .end local v1  # "otherType":Ljava/lang/Class;
    .end local v2  # "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :cond_14c
    :try_start_14c
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No loader for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_169
    .catchall {:try_start_14c .. :try_end_169} :catchall_169

    .line 369
    .end local v0  # "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .end local p1  # "fileName":Ljava/lang/String;
    .end local p2  # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p3  # "parameter":Lcom/badlogic/gdx/assets/AssetLoaderParameters;, "Lcom/badlogic/gdx/assets/AssetLoaderParameters<TT;>;"
    :catchall_169
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setErrorListener(Lcom/badlogic/gdx/assets/AssetErrorListener;)V
    .registers 2
    .param p1, "listener"  # Lcom/badlogic/gdx/assets/AssetErrorListener;

    monitor-enter p0

    .line 697
    :try_start_1
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 698
    monitor-exit p0

    return-void

    .line 696
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "listener":Lcom/badlogic/gdx/assets/AssetErrorListener;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P:",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader<",
            "TT;TP;>;)V"
        }
    .end annotation

    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;, "Lcom/badlogic/gdx/assets/loaders/AssetLoader<TT;TP;>;"
    monitor-enter p0

    .line 657
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 658
    monitor-exit p0

    return-void

    .line 656
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    .end local p1  # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2  # "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;, "Lcom/badlogic/gdx/assets/loaders/AssetLoader<TT;TP;>;"
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    .registers 7
    .param p2, "suffix"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P:",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader<",
            "TT;TP;>;)V"
        }
    .end annotation

    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;, "Lcom/badlogic/gdx/assets/loaders/AssetLoader<TT;TP;>;"
    monitor-enter p0

    .line 666
    if-eqz p1, :cond_5b

    .line 667
    if-eqz p3, :cond_53

    .line 668
    :try_start_5
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loader set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 670
    .local v0, "loaders":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    if-nez v0, :cond_48

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v2, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    move-object v0, v2

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_48
    if-nez p2, :cond_4d

    const-string v1, ""

    goto :goto_4e

    :cond_4d
    move-object v1, p2

    :goto_4e
    invoke-virtual {v0, v1, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_63

    .line 672
    monitor-exit p0

    return-void

    .line 667
    .end local v0  # "loaders":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;>;"
    :cond_53
    :try_start_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "loader cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_63

    .line 665
    .end local p1  # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2  # "suffix":Ljava/lang/String;
    .end local p3  # "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;, "Lcom/badlogic/gdx/assets/loaders/AssetLoader<TT;TP;>;"
    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLogger(Lcom/badlogic/gdx/utils/Logger;)V
    .registers 2
    .param p1, "logger"  # Lcom/badlogic/gdx/utils/Logger;

    .line 747
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    .line 748
    return-void
.end method

.method public declared-synchronized setReferenceCount(Ljava/lang/String;I)V
    .registers 7
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "refCount"  # I

    monitor-enter p0

    .line 761
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 762
    .local v0, "type":Ljava/lang/Class;
    if-eqz v0, :cond_1d

    .line 763
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iput p2, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_36

    .line 764
    monitor-exit p0

    return-void

    .line 762
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_1d
    :try_start_1d
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset not loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_36

    .line 760
    .end local v0  # "type":Ljava/lang/Class;
    .end local p1  # "fileName":Ljava/lang/String;
    .end local p2  # "refCount":I
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected taskFailed(Lcom/badlogic/gdx/assets/AssetDescriptor;Ljava/lang/RuntimeException;)V
    .registers 3
    .param p1, "assetDesc"  # Lcom/badlogic/gdx/assets/AssetDescriptor;
    .param p2, "ex"  # Ljava/lang/RuntimeException;

    .line 611
    throw p2
.end method

.method public declared-synchronized unload(Ljava/lang/String;)V
    .registers 9
    .param p1, "fileName"  # Ljava/lang/String;

    monitor-enter p0

    .line 225
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    :try_start_5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    if-lez v0, :cond_42

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 230
    .local v0, "currentTask":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 231
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unload (from tasks): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 232
    iput-boolean v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    .line 233
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->unload()V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_157

    .line 234
    monitor-exit p0

    return-void

    .line 238
    .end local v0  # "currentTask":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 241
    .local v0, "type":Ljava/lang/Class;
    const/4 v2, -0x1

    .line 242
    .local v2, "foundIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4c
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_67

    .line 243
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 244
    move v2, v3

    .line 245
    goto :goto_67

    .line 242
    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 248
    .end local v3  # "i":I
    :cond_67
    :goto_67
    const/4 v3, -0x1

    if-eq v2, v3, :cond_a8

    .line 249
    iget v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 250
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 251
    .local v1, "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unload (from queue): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 254
    if-eqz v0, :cond_a6

    iget-object v3, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz v3, :cond_a6

    iget-object v3, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz v3, :cond_a6

    .line 255
    iget-object v3, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    iget-object v4, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v5, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {v3, p0, v4, v5}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_a6
    .catchall {:try_start_42 .. :try_end_a6} :catchall_157

    .line 256
    :cond_a6
    monitor-exit p0

    return-void

    .line 259
    .end local v1  # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    :cond_a8
    if-eqz v0, :cond_13e

    .line 261
    :try_start_aa
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    .line 264
    .local v3, "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    iget v4, v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    sub-int/2addr v4, v1

    iput v4, v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    .line 265
    iget v1, v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    if-gtz v1, :cond_f7

    .line 266
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unload (dispose): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 269
    iget-object v1, v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->object:Ljava/lang/Object;

    instance-of v1, v1, Lcom/badlogic/gdx/utils/Disposable;

    if-eqz v1, :cond_e6

    iget-object v1, v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->object:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/utils/Disposable;

    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    .line 272
    :cond_e6
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10f

    .line 275
    :cond_f7
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unload (decrement): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 278
    :goto_10f
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 279
    .local v1, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-eqz v1, :cond_133

    .line 280
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :cond_11d
    :goto_11d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_133

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 281
    .local v5, "dependency":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11d

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_11d

    .line 284
    .end local v5  # "dependency":Ljava/lang/String;
    :cond_133
    iget v4, v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    if-gtz v4, :cond_13c

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13c
    .catchall {:try_start_aa .. :try_end_13c} :catchall_157

    .line 285
    :cond_13c
    monitor-exit p0

    return-void

    .line 259
    .end local v1  # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v3  # "assetRef":Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    :cond_13e
    :try_start_13e
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset not loaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_157
    .catchall {:try_start_13e .. :try_end_157} :catchall_157

    .line 224
    .end local v0  # "type":Ljava/lang/Class;
    .end local v2  # "foundIndex":I
    .end local p1  # "fileName":Ljava/lang/String;
    :catchall_157
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update()Z
    .registers 5

    monitor-enter p0

    .line 421
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_3
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_21

    .line 423
    :goto_9
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_19

    .line 424
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetManager;->nextTask()V

    goto :goto_9

    .line 426
    :cond_19
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_36

    if-nez v2, :cond_21

    monitor-exit p0

    return v1

    .line 428
    :cond_21
    :try_start_21
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetManager;->updateTask()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_36

    if-nez v2, :cond_34

    move v0, v1

    :cond_34
    monitor-exit p0

    return v0

    .line 429
    :catchall_36
    move-exception v2

    .line 430
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_37
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->handleTaskError(Ljava/lang/Throwable;)V

    .line 431
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_43

    if-nez v3, :cond_41

    move v0, v1

    :cond_41
    monitor-exit p0

    return v0

    .line 420
    .end local v2  # "t":Ljava/lang/Throwable;
    .end local p0  # "this":Lcom/badlogic/gdx/assets/AssetManager;
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update(I)Z
    .registers 7
    .param p1, "millis"  # I

    .line 440
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 442
    .local v0, "endTime":J
    :goto_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v2

    .line 443
    .local v2, "done":Z
    if-nez v2, :cond_19

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_15

    goto :goto_19

    .line 444
    :cond_15
    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    .line 445
    .end local v2  # "done":Z
    goto :goto_6

    .line 443
    .restart local v2  # "done":Z
    :cond_19
    :goto_19
    return v2
.end method
