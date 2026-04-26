.class public Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;
.super Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.source "PolygonRegionLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader<",
        "Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;",
        "Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultParameters:Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

.field private triangulator:Lcom/badlogic/gdx/math/EarClippingTriangulator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .registers 3
    .param p1, "resolver"  # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 64
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->defaultParameters:Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->triangulator:Lcom/badlogic/gdx/math/EarClippingTriangulator;

    .line 65
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .registers 4

    .line 38
    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;)Lcom/badlogic/gdx/utils/Array;
    .registers 12
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "params"  # Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 79
    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->defaultParameters:Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    .line 80
    :cond_4
    const/4 v0, 0x0

    .line 82
    .local v0, "image":Ljava/lang/String;
    :try_start_5
    iget v1, p3, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->readerBuffer:I

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/files/FileHandle;->reader(I)Ljava/io/BufferedReader;

    move-result-object v1

    .line 83
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_f
    if-eqz v2, :cond_2b

    .line 84
    iget-object v3, p3, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->texturePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 85
    iget-object v3, p3, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->texturePrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 86
    goto :goto_2b

    .line 83
    :cond_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_f

    .line 88
    .end local v2  # "line":Ljava/lang/String;
    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2e} :catch_82

    .line 91
    .end local v1  # "reader":Ljava/io/BufferedReader;
    nop

    .line 93
    if-nez v0, :cond_69

    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->textureExtensions:[Ljava/lang/String;

    if-eqz v1, :cond_69

    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->textureExtensions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v2, :cond_69

    aget-object v4, v1, v3

    .line 94
    .local v4, "extension":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 95
    .local v5, "sibling":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    .line 93
    .end local v4  # "extension":Ljava/lang/String;
    .end local v5  # "sibling":Lcom/badlogic/gdx/files/FileHandle;
    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 98
    :cond_69
    if-eqz v0, :cond_80

    .line 99
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 100
    .local v1, "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    new-instance v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    const-class v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 101
    return-object v1

    .line 104
    .end local v1  # "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    :cond_80
    const/4 v1, 0x0

    return-object v1

    .line 89
    :catch_82
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;)Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .registers 7
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    .line 69
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/assets/AssetManager;->getDependencies(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    .line 70
    .local v0, "texture":Lcom/badlogic/gdx/graphics/Texture;
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p0, v1, p3}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->load(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    move-result-object v1

    return-object v1
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .registers 10
    .param p1, "textureRegion"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 117
    const/16 v0, 0x100

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(I)Ljava/io/BufferedReader;

    move-result-object v0

    .line 120
    .local v0, "reader":Ljava/io/BufferedReader;
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_49

    .line 122
    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 124
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "polygonStrings":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [F

    .line 126
    .local v3, "vertices":[F
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v3

    .local v5, "n":I
    :goto_28
    if-ge v4, v5, :cond_35

    .line 127
    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v3, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 129
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_35
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->triangulator:Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v5

    invoke-direct {v4, p1, v3, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_44} :catch_68
    .catchall {:try_start_6 .. :try_end_44} :catchall_66

    .line 135
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    return-object v4

    .line 131
    .end local v1  # "line":Ljava/lang/String;
    .end local v2  # "polygonStrings":[Ljava/lang/String;
    .end local v3  # "vertices":[F
    :cond_48
    goto :goto_6

    .line 135
    :cond_49
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 136
    nop

    .line 137
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Polygon shape not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :catchall_66
    move-exception v1

    goto :goto_82

    .line 132
    :catch_68
    move-exception v1

    .line 133
    .local v1, "ex":Ljava/io/IOException;
    :try_start_69
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading polygon shape file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0  # "reader":Ljava/io/BufferedReader;
    .end local p1  # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local p2  # "file":Lcom/badlogic/gdx/files/FileHandle;
    throw v2
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_66

    .line 135
    .end local v1  # "ex":Ljava/io/IOException;
    .restart local v0  # "reader":Ljava/io/BufferedReader;
    .restart local p1  # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local p2  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_82
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public bridge synthetic load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .registers 5

    .line 38
    check-cast p4, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;)Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    move-result-object p1

    return-object p1
.end method
