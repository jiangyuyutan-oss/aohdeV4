.class public Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "BitmapFontLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
        "Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;",
        ">;"
    }
.end annotation


# instance fields
.field data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .registers 2
    .param p1, "resolver"  # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 40
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .registers 4

    .line 38
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)Lcom/badlogic/gdx/utils/Array;
    .registers 11
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"  # Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 48
    .local v0, "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    if-eqz p3, :cond_10

    iget-object v1, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->bitmapFontData:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    if-eqz v1, :cond_10

    .line 49
    iget-object v1, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->bitmapFontData:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 50
    return-object v0

    .line 53
    :cond_10
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    if-eqz p3, :cond_1a

    iget-boolean v2, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->flip:Z

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-direct {v1, p2, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 54
    if-eqz p3, :cond_33

    iget-object v1, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 55
    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_67

    .line 57
    :cond_33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getImagePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_67

    .line 58
    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getImagePath(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 61
    .local v3, "resolved":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {v4}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    .line 63
    .local v4, "textureParams":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    if-eqz p3, :cond_5a

    .line 64
    iget-boolean v5, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->genMipMaps:Z

    iput-boolean v5, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 65
    iget-object v5, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v5, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 66
    iget-object v5, p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v5, v4, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 69
    :cond_5a
    new-instance v5, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v6, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v5, v3, v6, v4}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 70
    .local v5, "descriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 57
    .end local v2  # "path":Ljava/lang/String;
    .end local v3  # "resolved":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "textureParams":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    .end local v5  # "descriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 74
    .end local v1  # "i":I
    :cond_67
    :goto_67
    return-object v0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .registers 5

    .line 38
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)V
    .registers 5
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;

    .line 79
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .registers 11
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;

    .line 83
    if-eqz p4, :cond_54

    iget-object v0, p4, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 84
    iget-object v0, p4, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 85
    .local v0, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    .line 88
    .local v2, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    if-eqz v2, :cond_2f

    .line 90
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v3, p3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v3

    .line 89
    :cond_2f
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find font region "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in atlas "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p4, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    .end local v0  # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local v1  # "name":Ljava/lang/String;
    .end local v2  # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_54
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getImagePaths()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 93
    .local v0, "n":I
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 94
    .local v1, "regs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_61
    if-ge v2, v0, :cond_7c

    .line 95
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getImagePath(I)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1, v4, v5}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 97
    .end local v2  # "i":I
    :cond_7c
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)V

    return-object v2
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .registers 5

    .line 38
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p1

    return-object p1
.end method
