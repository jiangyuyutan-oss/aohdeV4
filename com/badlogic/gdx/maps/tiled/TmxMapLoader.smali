.class public Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;
.super Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.source "TmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<",
        "Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .registers 2
    .param p1, "resolver"  # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 50
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected addStaticTiles(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIIIILjava/lang/String;IILjava/lang/String;IILcom/badlogic/gdx/files/FileHandle;)V
    .registers 43
    .param p1, "tmxFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imageResolver"  # Lcom/badlogic/gdx/maps/ImageResolver;
    .param p3, "tileSet"  # Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .param p4, "element"  # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p6, "name"  # Ljava/lang/String;
    .param p7, "firstgid"  # I
    .param p8, "tilewidth"  # I
    .param p9, "tileheight"  # I
    .param p10, "spacing"  # I
    .param p11, "margin"  # I
    .param p12, "source"  # Ljava/lang/String;
    .param p13, "offsetX"  # I
    .param p14, "offsetY"  # I
    .param p15, "imageSource"  # Ljava/lang/String;
    .param p16, "imageWidth"  # I
    .param p17, "imageHeight"  # I
    .param p18, "image"  # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/ImageResolver;",
            "Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "II",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")V"
        }
    .end annotation

    .line 164
    .local p5, "tileElements":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v11

    .line 165
    .local v11, "props":Lcom/badlogic/gdx/maps/MapProperties;
    if-eqz p18, :cond_a9

    .line 167
    invoke-virtual/range {p18 .. p18}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    .line 169
    .local v12, "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "imagesource"

    move-object/from16 v13, p15

    invoke-virtual {v11, v2, v13}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v2, "imagewidth"

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v2, "imageheight"

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v2, "tilewidth"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string v2, "tileheight"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v2, "margin"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const-string v2, "spacing"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    sub-int v14, v2, p8

    .line 178
    .local v14, "stopWidth":I
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    sub-int v15, v2, p9

    .line 180
    .local v15, "stopHeight":I
    move/from16 v2, p7

    .line 182
    .local v2, "id":I
    move/from16 v3, p11

    move v7, v3

    .local v7, "y":I
    :goto_66
    if-gt v7, v15, :cond_a4

    .line 183
    move/from16 v3, p11

    move/from16 v19, v2

    move v6, v3

    .end local v2  # "id":I
    .local v6, "x":I
    .local v19, "id":I
    :goto_6d
    if-gt v6, v14, :cond_99

    .line 184
    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v2, v18

    move-object v3, v12

    move v4, v6

    move v5, v7

    move/from16 v22, v6

    .end local v6  # "x":I
    .local v22, "x":I
    move/from16 v6, p8

    move/from16 v23, v7

    .end local v7  # "y":I
    .local v23, "y":I
    move/from16 v7, p9

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 185
    .local v18, "tileRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    add-int/lit8 v2, v19, 0x1

    .line 186
    .restart local v2  # "id":I
    .local v19, "tileId":I
    int-to-float v3, v9

    int-to-float v4, v10

    move-object/from16 v16, p0

    move-object/from16 v17, p3

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->addStaticTiledMapTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IFF)V

    .line 183
    .end local v18  # "tileRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v19  # "tileId":I
    add-int v3, p8, p10

    add-int v6, v22, v3

    move/from16 v19, v2

    move/from16 v7, v23

    .end local v22  # "x":I
    .restart local v6  # "x":I
    goto :goto_6d

    .end local v2  # "id":I
    .end local v23  # "y":I
    .restart local v7  # "y":I
    .local v19, "id":I
    :cond_99
    move/from16 v22, v6

    move/from16 v23, v7

    .line 182
    .end local v6  # "x":I
    .end local v7  # "y":I
    .restart local v23  # "y":I
    add-int v2, p9, p10

    add-int v7, v23, v2

    move/from16 v2, v19

    .end local v23  # "y":I
    .restart local v7  # "y":I
    goto :goto_66

    .end local v19  # "id":I
    .restart local v2  # "id":I
    :cond_a4
    move/from16 v23, v7

    .line 189
    .end local v2  # "id":I
    .end local v7  # "y":I
    .end local v12  # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v14  # "stopWidth":I
    .end local v15  # "stopHeight":I
    move-object/from16 v3, p18

    goto :goto_fe

    .line 191
    :cond_a9
    move-object/from16 v13, p15

    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    move-object/from16 v3, p18

    .end local p15  # "imageSource":Ljava/lang/String;
    .end local p18  # "image":Lcom/badlogic/gdx/files/FileHandle;
    .local v3, "image":Lcom/badlogic/gdx/files/FileHandle;
    .local v13, "imageSource":Ljava/lang/String;
    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fe

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 192
    .local v4, "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v5, "image"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    .line 193
    .local v5, "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v5, :cond_dc

    .line 194
    const-string v6, "source"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 196
    .end local v13  # "imageSource":Ljava/lang/String;
    .local v6, "imageSource":Ljava/lang/String;
    if-eqz v8, :cond_d7

    .line 197
    invoke-static {v0, v8}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v13, v6

    goto :goto_dc

    .line 199
    :cond_d7
    invoke-static {v0, v6}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v13, v6

    .line 202
    .end local v6  # "imageSource":Ljava/lang/String;
    .restart local v13  # "imageSource":Ljava/lang/String;
    :cond_dc
    :goto_dc
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    .line 203
    .local v6, "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v7

    add-int v7, p7, v7

    .line 204
    .local v7, "tileId":I
    int-to-float v12, v9

    int-to-float v15, v10

    move-object/from16 v14, p0

    move/from16 v19, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->addStaticTiledMapTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IFF)V

    .line 205
    .end local v4  # "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v5  # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v6  # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v7  # "tileId":I
    goto :goto_b1

    .line 207
    :cond_fe
    :goto_fe
    return-void
.end method

.method protected getDependencyAssetDescriptors(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;
    .registers 9
    .param p1, "tmxFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "textureParameter"  # Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 100
    .local v0, "descriptors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getDependencyFileHandles(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    .line 101
    .local v1, "fileHandles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/files/FileHandle;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/files/FileHandle;

    .line 102
    .local v3, "handle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v5, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v4, v3, v5, p2}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 103
    .end local v3  # "handle":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_d

    .line 105
    :cond_24
    return-object v0
.end method

.method protected getDependencyFileHandles(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;
    .registers 14
    .param p1, "tmxFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 112
    .local v0, "fileHandles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/files/FileHandle;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v2, "tileset"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "source"

    const-string v5, "image"

    if-eqz v2, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 113
    .local v2, "tileset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "source":Ljava/lang/String;
    const-string v6, "tile"

    if-eqz v3, :cond_6f

    .line 115
    invoke-static {p1, v3}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 116
    .local v7, "tsxFile":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v8, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v8

    .line 118
    .local v8, "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v8, :cond_4a

    .line 119
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "imageSource":Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 121
    .local v5, "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 122
    .end local v4  # "imageSource":Ljava/lang/String;
    .end local v5  # "image":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_6e

    .line 123
    :cond_4a
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v6

    :goto_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 124
    .local v9, "tile":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, "imageSource":Ljava/lang/String;
    invoke-static {v7, v10}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    .line 126
    .local v11, "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 127
    .end local v9  # "tile":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v10  # "imageSource":Ljava/lang/String;
    .end local v11  # "image":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_52

    .line 129
    .end local v7  # "tsxFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local v8  # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_6e
    :goto_6e
    goto :goto_a9

    .line 130
    :cond_6f
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v7

    .line 131
    .local v7, "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v7, :cond_85

    .line 132
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .restart local v4  # "imageSource":Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 134
    .restart local v5  # "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 135
    .end local v4  # "imageSource":Ljava/lang/String;
    .end local v5  # "image":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_a9

    .line 136
    :cond_85
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v6

    :goto_8d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 137
    .local v8, "tile":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "imageSource":Ljava/lang/String;
    invoke-static {p1, v9}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    .line 139
    .local v10, "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 140
    .end local v8  # "tile":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v9  # "imageSource":Ljava/lang/String;
    .end local v10  # "image":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_8d

    .line 143
    .end local v2  # "tileset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v3  # "source":Ljava/lang/String;
    .end local v7  # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_a9
    :goto_a9
    goto/16 :goto_11

    .line 146
    :cond_ab
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v2, "imagelayer"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 147
    .local v2, "imageLayer":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v6

    .line 148
    .local v6, "image":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v6, v4, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "source":Ljava/lang/String;
    if-eqz v7, :cond_d4

    .line 151
    invoke-static {p1, v7}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    .line 152
    .local v8, "handle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 154
    .end local v2  # "imageLayer":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v6  # "image":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v7  # "source":Ljava/lang/String;
    .end local v8  # "handle":Lcom/badlogic/gdx/files/FileHandle;
    :cond_d4
    goto :goto_b7

    .line 156
    :cond_d5
    return-object v0
.end method

.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .registers 3
    .param p1, "fileName"  # Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .registers 11
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "parameter"  # Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    .line 68
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 70
    .local v0, "tmxFile":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 72
    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 74
    .local v1, "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getDependencyFileHandles(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    .line 75
    .local v2, "textureFiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/files/FileHandle;>;"
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/files/FileHandle;

    .line 76
    .local v4, "textureFile":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    iget-boolean v6, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->generateMipMaps:Z

    invoke-direct {v5, v4, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 77
    .local v5, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v6, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v7, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 78
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v4  # "textureFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    goto :goto_19

    .line 81
    :cond_3b
    new-instance v3, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    invoke-virtual {p0, v0, p2, v3}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTiledMap(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v3

    .line 82
    .local v3, "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V

    .line 83
    return-object v3
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .registers 5

    .line 36
    check-cast p4, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)V
    .registers 6
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "tmxFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    .line 88
    new-instance v0, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;-><init>(Lcom/badlogic/gdx/assets/AssetManager;)V

    invoke-virtual {p0, p3, p4, v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTiledMap(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 89
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .registers 6
    .param p1, "manager"  # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"  # Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object v0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .registers 5

    .line 36
    check-cast p4, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    return-object p1
.end method
