.class public Lcom/badlogic/gdx/graphics/Texture;
.super Lcom/badlogic/gdx/graphics/GLTexture;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Texture$TextureWrap;,
        Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    }
.end annotation


# static fields
.field private static assetManager:Lcom/badlogic/gdx/assets/AssetManager;

.field static final managedTextures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field data:Lcom/badlogic/gdx/graphics/TextureData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .registers 9
    .param p1, "width"  # I
    .param p2, "height"  # I
    .param p3, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 138
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 139
    return-void
.end method

.method protected constructor <init>(IILcom/badlogic/gdx/graphics/TextureData;)V
    .registers 5
    .param p1, "glTarget"  # I
    .param p2, "glHandle"  # I
    .param p3, "data"  # Lcom/badlogic/gdx/graphics/TextureData;

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(II)V

    .line 147
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 148
    invoke-interface {p3}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Texture;->addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Texture;)V

    .line 149
    :cond_11
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 4
    .param p1, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .registers 5
    .param p1, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p3, "useMipMaps"  # Z

    .line 122
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .registers 4
    .param p1, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "useMipMaps"  # Z

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 5
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 126
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .registers 6
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p3, "useMipMaps"  # Z

    .line 134
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .registers 6
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "useMipMaps"  # Z

    .line 130
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;)V
    .registers 4
    .param p1, "data"  # Lcom/badlogic/gdx/graphics/TextureData;

    .line 142
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    const/16 v1, 0xde1

    invoke-direct {p0, v1, v0, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/TextureData;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "internalPath"  # Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 111
    return-void
.end method

.method private static addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 4
    .param p0, "app"  # Lcom/badlogic/gdx/Application;
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 231
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 232
    .local v0, "managedTextureArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Texture;>;"
    if-nez v0, :cond_10

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v0, v1

    .line 233
    :cond_10
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 234
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public static clearAllTextures(Lcom/badlogic/gdx/Application;)V
    .registers 2
    .param p0, "app"  # Lcom/badlogic/gdx/Application;

    .line 239
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .registers 4

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Managed textures/app: { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/Application;

    .line 314
    .local v2, "app":Lcom/badlogic/gdx/Application;
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .end local v2  # "app":Lcom/badlogic/gdx/Application;
    goto :goto_14

    .line 317
    :cond_33
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNumManagedTextures()I
    .registers 2

    .line 323
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllTextures(Lcom/badlogic/gdx/Application;)V
    .registers 10
    .param p0, "app"  # Lcom/badlogic/gdx/Application;

    .line 244
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 245
    .local v0, "managedTextureArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Texture;>;"
    if-nez v0, :cond_b

    return-void

    .line 247
    :cond_b
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    if-nez v1, :cond_22

    .line 248
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_20

    .line 249
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Texture;

    .line 250
    .local v2, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->reload()V

    .line 248
    .end local v2  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v1  # "i":I
    :cond_20
    goto/16 :goto_a5

    .line 256
    :cond_22
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/AssetManager;->finishLoading()V

    .line 260
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 261
    .local v1, "textures":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Texture;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Texture;

    .line 262
    .local v3, "texture":Lcom/badlogic/gdx/graphics/Texture;
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "fileName":Ljava/lang/String;
    if-nez v4, :cond_48

    .line 264
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->reload()V

    goto :goto_9e

    .line 270
    :cond_48
    sget-object v5, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/assets/AssetManager;->getReferenceCount(Ljava/lang/String;)I

    move-result v5

    .line 271
    .local v5, "refCount":I
    sget-object v6, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/badlogic/gdx/assets/AssetManager;->setReferenceCount(Ljava/lang/String;I)V

    .line 272
    iput v7, v3, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 276
    new-instance v6, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {v6}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    .line 277
    .local v6, "params":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    .line 278
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 279
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 280
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 281
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 282
    iget-object v7, v3, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/TextureData;->useMipMaps()Z

    move-result v7

    iput-boolean v7, v6, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 283
    iput-object v3, v6, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 284
    new-instance v7, Lcom/badlogic/gdx/graphics/Texture$1;

    invoke-direct {v7, v5}, Lcom/badlogic/gdx/graphics/Texture$1;-><init>(I)V

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    .line 292
    sget-object v7, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    .line 293
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v7

    iput v7, v3, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 294
    sget-object v7, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v8, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v7, v4, v8, v6}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 296
    .end local v3  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v4  # "fileName":Ljava/lang/String;
    .end local v5  # "refCount":I
    .end local v6  # "params":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    :goto_9e
    goto :goto_30

    .line 297
    :cond_9f
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 298
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 300
    .end local v1  # "textures":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Texture;>;"
    :goto_a5
    return-void
.end method

.method public static setAssetManager(Lcom/badlogic/gdx/assets/AssetManager;)V
    .registers 1
    .param p0, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;

    .line 307
    sput-object p0, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 308
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 220
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    if-nez v0, :cond_5

    return-void

    .line 221
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->delete()V

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 223
    :cond_28
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .registers 15
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "x"  # I
    .param p3, "y"  # I

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 185
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 186
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lcom/badlogic/gdx/graphics/Texture;->glTarget:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v9

    .line 187
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 186
    const/4 v3, 0x0

    move v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 188
    return-void

    .line 183
    :cond_2a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "can\'t draw to a managed texture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDepth()I
    .registers 2

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTextureData()Lcom/badlogic/gdx/graphics/TextureData;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/TextureData;)V
    .registers 5
    .param p1, "data"  # Lcom/badlogic/gdx/graphics/TextureData;

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    if-eqz v0, :cond_19

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v1

    if-ne v0, v1, :cond_11

    goto :goto_19

    .line 153
    :cond_11
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "New data must have the same managed status as the old data"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_19
    :goto_19
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 156
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 158
    :cond_24
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 159
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Texture;->uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;)V

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture;->anisotropicFilterLevel:F

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->unsafeSetAnisotropicFilter(FZ)F

    .line 164
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Texture;->glTarget:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 165
    return-void
.end method

.method protected reload()V
    .registers 3

    .line 171
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 172
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 174
    return-void

    .line 171
    :cond_14
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Tried to reload unmanaged Texture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
