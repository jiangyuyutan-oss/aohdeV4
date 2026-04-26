.class public Lcom/badlogic/gdx/graphics/Cubemap;
.super Lcom/badlogic/gdx/graphics/GLTexture;
.source "Cubemap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    }
.end annotation


# static fields
.field private static assetManager:Lcom/badlogic/gdx/assets/AssetManager;

.field static final managedCubemaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Cubemap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected data:Lcom/badlogic/gdx/graphics/CubemapData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IIILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .registers 15
    .param p1, "width"  # I
    .param p2, "height"  # I
    .param p3, "depth"  # I
    .param p4, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 130
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v5, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p3, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p3, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v7, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v8, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v8, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v9, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v0, p0

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 15
    .param p1, "positiveX"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "negativeX"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "positiveY"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "negativeY"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p5, "positiveZ"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p6, "negativeZ"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 102
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .registers 15
    .param p1, "positiveX"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "negativeX"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "positiveY"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "negativeY"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p5, "positiveZ"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p6, "negativeZ"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p7, "useMipMaps"  # Z

    .line 108
    invoke-static {p1, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    invoke-static {p2, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    .line 109
    invoke-static {p3, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    invoke-static {p4, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v4

    .line 110
    invoke-static {p5, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v5

    invoke-static {p6, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v6

    .line 108
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/CubemapData;)V
    .registers 3
    .param p1, "data"  # Lcom/badlogic/gdx/graphics/CubemapData;

    .line 93
    const v0, 0x8513

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(I)V

    .line 94
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    .line 95
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Cubemap;->load(Lcom/badlogic/gdx/graphics/CubemapData;)V

    .line 96
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Cubemap;->addManagedCubemap(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Cubemap;)V

    .line 97
    :cond_16
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 15
    .param p1, "positiveX"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "negativeX"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p3, "positiveY"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p4, "negativeY"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p5, "positiveZ"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p6, "negativeZ"  # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 115
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .registers 25
    .param p1, "positiveX"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "negativeX"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p3, "positiveY"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p4, "negativeY"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p5, "positiveZ"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p6, "negativeZ"  # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p7, "useMipMaps"  # Z

    .line 121
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v0, :cond_14

    move-object v11, v8

    goto :goto_1a

    :cond_14
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v0, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v11, v9

    :goto_1a
    if-nez v1, :cond_1e

    move-object v12, v8

    goto :goto_24

    :cond_1e
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v1, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v12, v9

    :goto_24
    if-nez v2, :cond_28

    move-object v13, v8

    goto :goto_2e

    :cond_28
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v2, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v13, v9

    :goto_2e
    if-nez v3, :cond_32

    move-object v14, v8

    goto :goto_38

    :cond_32
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v3, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v14, v9

    :goto_38
    if-nez v4, :cond_3c

    move-object v15, v8

    goto :goto_42

    :cond_3c
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v4, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v15, v9

    :goto_42
    if-nez v5, :cond_47

    move-object/from16 v16, v8

    goto :goto_4e

    :cond_47
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v5, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object/from16 v16, v9

    :goto_4e
    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V
    .registers 15
    .param p1, "positiveX"  # Lcom/badlogic/gdx/graphics/TextureData;
    .param p2, "negativeX"  # Lcom/badlogic/gdx/graphics/TextureData;
    .param p3, "positiveY"  # Lcom/badlogic/gdx/graphics/TextureData;
    .param p4, "negativeY"  # Lcom/badlogic/gdx/graphics/TextureData;
    .param p5, "positiveZ"  # Lcom/badlogic/gdx/graphics/TextureData;
    .param p6, "negativeZ"  # Lcom/badlogic/gdx/graphics/TextureData;

    .line 139
    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/CubemapData;)V

    .line 140
    return-void
.end method

.method private static addManagedCubemap(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Cubemap;)V
    .registers 4
    .param p0, "app"  # Lcom/badlogic/gdx/Application;
    .param p1, "cubemap"  # Lcom/badlogic/gdx/graphics/Cubemap;

    .line 197
    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 198
    .local v0, "managedCubemapArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Cubemap;>;"
    if-nez v0, :cond_10

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v0, v1

    .line 199
    :cond_10
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 200
    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public static clearAllCubemaps(Lcom/badlogic/gdx/Application;)V
    .registers 2
    .param p0, "app"  # Lcom/badlogic/gdx/Application;

    .line 205
    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .registers 4

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Managed cubemap/app: { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

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

    .line 279
    .local v2, "app":Lcom/badlogic/gdx/Application;
    sget-object v3, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .end local v2  # "app":Lcom/badlogic/gdx/Application;
    goto :goto_14

    .line 282
    :cond_33
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNumManagedCubemaps()I
    .registers 2

    .line 288
    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllCubemaps(Lcom/badlogic/gdx/Application;)V
    .registers 10
    .param p0, "app"  # Lcom/badlogic/gdx/Application;

    .line 210
    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 211
    .local v0, "managedCubemapArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Cubemap;>;"
    if-nez v0, :cond_b

    return-void

    .line 213
    :cond_b
    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    if-nez v1, :cond_22

    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_20

    .line 215
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cubemap;

    .line 216
    .local v2, "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Cubemap;->reload()V

    .line 214
    .end local v2  # "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v1  # "i":I
    :cond_20
    goto/16 :goto_9d

    .line 222
    :cond_22
    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/AssetManager;->finishLoading()V

    .line 226
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 227
    .local v1, "cubemaps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Cubemap;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Cubemap;

    .line 228
    .local v3, "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    sget-object v4, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "fileName":Ljava/lang/String;
    if-nez v4, :cond_48

    .line 230
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Cubemap;->reload()V

    goto :goto_96

    .line 236
    :cond_48
    sget-object v5, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/assets/AssetManager;->getReferenceCount(Ljava/lang/String;)I

    move-result v5

    .line 237
    .local v5, "refCount":I
    sget-object v6, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/badlogic/gdx/assets/AssetManager;->setReferenceCount(Ljava/lang/String;I)V

    .line 238
    iput v7, v3, Lcom/badlogic/gdx/graphics/Cubemap;->glHandle:I

    .line 242
    new-instance v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;

    invoke-direct {v6}, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;-><init>()V

    .line 243
    .local v6, "params":Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Cubemap;->getCubemapData()Lcom/badlogic/gdx/graphics/CubemapData;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemapData:Lcom/badlogic/gdx/graphics/CubemapData;

    .line 244
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Cubemap;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 245
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Cubemap;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 246
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Cubemap;->getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 247
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Cubemap;->getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 248
    iput-object v3, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

    .line 249
    new-instance v7, Lcom/badlogic/gdx/graphics/Cubemap$1;

    invoke-direct {v7, v5}, Lcom/badlogic/gdx/graphics/Cubemap$1;-><init>(I)V

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    .line 257
    sget-object v7, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    .line 258
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v7

    iput v7, v3, Lcom/badlogic/gdx/graphics/Cubemap;->glHandle:I

    .line 259
    sget-object v7, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v8, Lcom/badlogic/gdx/graphics/Cubemap;

    invoke-virtual {v7, v4, v8, v6}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 261
    .end local v3  # "cubemap":Lcom/badlogic/gdx/graphics/Cubemap;
    .end local v4  # "fileName":Ljava/lang/String;
    .end local v5  # "refCount":I
    .end local v6  # "params":Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;
    :goto_96
    goto :goto_30

    .line 262
    :cond_97
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 263
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 265
    .end local v1  # "cubemaps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Cubemap;>;"
    :goto_9d
    return-void
.end method

.method public static setAssetManager(Lcom/badlogic/gdx/assets/AssetManager;)V
    .registers 1
    .param p0, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;

    .line 272
    sput-object p0, Lcom/badlogic/gdx/graphics/Cubemap;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 273
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 191
    iget v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->glHandle:I

    if-nez v0, :cond_5

    return-void

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Cubemap;->delete()V

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->managedCubemaps:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 194
    :cond_28
    return-void
.end method

.method public getCubemapData()Lcom/badlogic/gdx/graphics/CubemapData;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    return-object v0
.end method

.method public getDepth()I
    .registers 2

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->isManaged()Z

    move-result v0

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/CubemapData;)V
    .registers 5
    .param p1, "data"  # Lcom/badlogic/gdx/graphics/CubemapData;

    .line 144
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->prepare()V

    .line 145
    :cond_9
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Cubemap;->bind()V

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Cubemap;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cubemap;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Cubemap;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cubemap;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V

    .line 148
    iget v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->anisotropicFilterLevel:F

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/Cubemap;->unsafeSetAnisotropicFilter(FZ)F

    .line 149
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->consumeCubemapData()V

    .line 150
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Cubemap;->glTarget:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 151
    return-void
.end method

.method protected reload()V
    .registers 3

    .line 164
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Cubemap;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 165
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->glHandle:I

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->data:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Cubemap;->load(Lcom/badlogic/gdx/graphics/CubemapData;)V

    .line 167
    return-void

    .line 164
    :cond_14
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Tried to reload an unmanaged Cubemap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
