.class public Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;
.super Ljava/lang/Object;
.source "FileTextureArrayData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureArrayData;


# instance fields
.field private depth:I

.field private format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field private prepared:Z

.field private textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

.field useMipMaps:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;Z[Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 7
    .param p1, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "useMipMaps"  # Z
    .param p3, "files"  # [Lcom/badlogic/gdx/files/FileHandle;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 38
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->useMipMaps:Z

    .line 39
    array-length v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->depth:I

    .line 40
    array-length v0, p3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p3

    if-ge v0, v1, :cond_20

    .line 42
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, p3, v0

    invoke-static {v2, p1, p2}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    aput-object v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 44
    .end local v0  # "i":I
    :cond_20
    return-void
.end method


# virtual methods
.method public consumeTextureArrayData()V
    .registers 19

    .line 71
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v2, v2

    if-ge v1, v2, :cond_a5

    .line 72
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const v14, 0x8c1a

    if-ne v2, v3, :cond_20

    .line 73
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, v2, v1

    invoke-interface {v2, v14}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCustomData(I)V

    goto/16 :goto_a1

    .line 75
    :cond_20
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v15, v2, v1

    .line 76
    .local v15, "texData":Lcom/badlogic/gdx/graphics/TextureData;
    invoke-interface {v15}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v10

    .line 77
    .local v10, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-interface {v15}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v11

    .line 78
    .local v11, "disposePixmap":Z
    invoke-interface {v15}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    if-eq v2, v3, :cond_6e

    .line 79
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    invoke-interface {v15}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v12, v2

    .line 80
    .local v12, "temp":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 81
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v12

    move-object v3, v10

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 82
    invoke-interface {v15}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 83
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 85
    :cond_67
    move-object v10, v12

    .line 86
    const/4 v11, 0x1

    move-object/from16 v16, v10

    move/from16 v17, v11

    goto :goto_72

    .line 78
    .end local v12  # "temp":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_6e
    move-object/from16 v16, v10

    move/from16 v17, v11

    .line 88
    .end local v10  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v11  # "disposePixmap":Z
    .local v16, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v17, "disposePixmap":Z
    :goto_72
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v11

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v13

    const v3, 0x8c1a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move v7, v1

    invoke-interface/range {v2 .. v13}, Lcom/badlogic/gdx/graphics/GL30;->glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V

    .line 89
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->useMipMaps:Z

    if-eqz v2, :cond_9c

    .line 90
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v14}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 92
    :cond_9c
    if-eqz v17, :cond_a1

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 71
    .end local v15  # "texData":Lcom/badlogic/gdx/graphics/TextureData;
    .end local v16  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v17  # "disposePixmap":Z
    :cond_a1
    :goto_a1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 95
    .end local v1  # "i":I
    :cond_a5
    return-void
.end method

.method public getDepth()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->depth:I

    return v0
.end method

.method public getGLType()I
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGlType(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getInternalFormat()I
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGlFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .registers 7

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 125
    .local v4, "data":Lcom/badlogic/gdx/graphics/TextureData;
    invoke-interface {v4}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v5

    if-nez v5, :cond_10

    .line 126
    return v2

    .line 124
    .end local v4  # "data":Lcom/badlogic/gdx/graphics/TextureData;
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 129
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->prepared:Z

    return v0
.end method

.method public prepare()V
    .registers 8

    .line 53
    const/4 v0, -0x1

    .line 54
    .local v0, "width":I
    const/4 v1, -0x1

    .line 55
    .local v1, "height":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 56
    .local v5, "data":Lcom/badlogic/gdx/graphics/TextureData;
    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 57
    const/4 v6, -0x1

    if-ne v0, v6, :cond_19

    .line 58
    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    .line 59
    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v1

    .line 60
    goto :goto_25

    .line 62
    :cond_19
    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v6

    if-ne v0, v6, :cond_28

    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v6

    if-ne v1, v6, :cond_28

    .line 55
    .end local v5  # "data":Lcom/badlogic/gdx/graphics/TextureData;
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 63
    .restart local v5  # "data":Lcom/badlogic/gdx/graphics/TextureData;
    :cond_28
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Error whilst preparing TextureArray: TextureArray Textures must have equal dimensions."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v5  # "data":Lcom/badlogic/gdx/graphics/TextureData;
    :cond_30
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->prepared:Z

    .line 67
    return-void
.end method
