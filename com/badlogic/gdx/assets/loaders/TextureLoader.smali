.class public Lcom/badlogic/gdx/assets/loaders/TextureLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "TextureLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;,
        Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/graphics/Texture;",
        "Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;",
        ">;"
    }
.end annotation


# instance fields
.field info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .registers 3
    .param p1, "resolver"  # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 45
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 42
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .registers 4

    .line 35
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;
    .registers 5
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"  # Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .registers 5

    .line 35
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)V
    .registers 9
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iput-object p2, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->filename:Ljava/lang/String;

    .line 51
    if-eqz p4, :cond_18

    iget-object v0, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    if-nez v0, :cond_b

    goto :goto_18

    .line 64
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v1, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v1, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->texture:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_34

    .line 52
    :cond_18
    :goto_18
    const/4 v0, 0x0

    .line 53
    .local v0, "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    const/4 v1, 0x0

    .line 54
    .local v1, "genMipMaps":Z
    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 56
    if-eqz p4, :cond_2b

    .line 57
    iget-object v0, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 58
    iget-boolean v1, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 59
    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v3, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v3, v2, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 62
    :cond_2b
    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    invoke-static {p3, v0, v1}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 63
    .end local v0  # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v1  # "genMipMaps":Z
    nop

    .line 67
    :goto_34
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 68
    :cond_45
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/graphics/Texture;
    .registers 8
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 74
    .local v0, "texture":Lcom/badlogic/gdx/graphics/Texture;
    if-eqz v0, :cond_14

    .line 75
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    goto :goto_1e

    .line 77
    :cond_14
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->info:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureLoaderInfo;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    move-object v0, v1

    .line 79
    :goto_1e
    if-eqz p4, :cond_2e

    .line 80
    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 81
    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 83
    :cond_2e
    return-object v0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .registers 5

    .line 35
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p1

    return-object p1
.end method
