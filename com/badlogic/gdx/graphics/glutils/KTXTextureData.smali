.class public Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;
.super Ljava/lang/Object;
.source "KTXTextureData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;
.implements Lcom/badlogic/gdx/graphics/CubemapData;


# static fields
.field private static final GL_TEXTURE_1D:I = 0x1234

.field private static final GL_TEXTURE_1D_ARRAY_EXT:I = 0x1234

.field private static final GL_TEXTURE_2D_ARRAY_EXT:I = 0x1234

.field private static final GL_TEXTURE_3D:I = 0x1234


# instance fields
.field private compressedData:Ljava/nio/ByteBuffer;

.field private file:Lcom/badlogic/gdx/files/FileHandle;

.field private glBaseInternalFormat:I

.field private glFormat:I

.field private glInternalFormat:I

.field private glType:I

.field private glTypeSize:I

.field private imagePos:I

.field private numberOfArrayElements:I

.field private numberOfFaces:I

.field private numberOfMipmapLevels:I

.field private pixelDepth:I

.field private pixelHeight:I

.field private pixelWidth:I

.field private useMipMaps:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .registers 4
    .param p1, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "genMipMaps"  # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    .line 45
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    .line 46
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    .line 59
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    .line 60
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps:Z

    .line 61
    return-void
.end method


# virtual methods
.method public consumeCubemapData()V
    .registers 2

    .line 154
    const v0, 0x8513

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->consumeCustomData(I)V

    .line 155
    return-void
.end method

.method public consumeCustomData(I)V
    .registers 33
    .param p1, "target"  # I

    .line 159
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_257

    .line 160
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 163
    .local v2, "buffer":Ljava/nio/IntBuffer;
    const/4 v3, 0x0

    .line 164
    .local v3, "compressed":Z
    iget v4, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    if-eqz v4, :cond_17

    iget v4, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    if-nez v4, :cond_1f

    .line 165
    :cond_17
    iget v4, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    iget v5, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    add-int/2addr v4, v5

    if-nez v4, :cond_24d

    .line 166
    const/4 v3, 0x1

    .line 170
    :cond_1f
    const/4 v4, 0x1

    .line 171
    .local v4, "textureDimensions":I
    const/16 v5, 0x1234

    .line 172
    .local v5, "glTarget":I
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    if-lez v6, :cond_29

    .line 173
    const/4 v4, 0x2

    .line 174
    const/16 v5, 0xde1

    .line 176
    :cond_29
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    if-lez v6, :cond_30

    .line 177
    const/4 v4, 0x3

    .line 178
    const/16 v5, 0x1234

    .line 180
    :cond_30
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    const/4 v7, 0x2

    const/4 v8, 0x6

    const/4 v9, 0x1

    if-ne v6, v8, :cond_45

    .line 181
    if-ne v4, v7, :cond_3d

    .line 182
    const v5, 0x8513

    goto :goto_49

    .line 184
    :cond_3d
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v7, "cube map needs 2D faces"

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 185
    :cond_45
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    if-ne v6, v9, :cond_241

    .line 188
    :goto_49
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    const/16 v10, 0xde1

    const/16 v11, 0x1234

    if-lez v6, :cond_65

    .line 189
    if-ne v5, v11, :cond_56

    .line 190
    const/16 v5, 0x1234

    goto :goto_5a

    .line 191
    :cond_56
    if-ne v5, v10, :cond_5d

    .line 192
    const/16 v5, 0x1234

    .line 195
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 194
    :cond_5d
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v7, "No API for 3D and cube arrays yet"

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 197
    :cond_65
    :goto_65
    if-eq v5, v11, :cond_235

    .line 200
    const/4 v6, -0x1

    .line 201
    .local v6, "singleFace":I
    iget v11, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    const v12, 0x851a

    const v13, 0x8513

    const v14, 0x8515

    if-ne v11, v8, :cond_89

    if-eq v1, v13, :cond_89

    .line 203
    if-gt v14, v1, :cond_81

    if-gt v1, v12, :cond_81

    .line 206
    sub-int v6, v1, v14

    .line 207
    const v1, 0x8515

    .end local p1  # "target":I
    .local v1, "target":I
    goto :goto_c7

    .line 204
    .end local v1  # "target":I
    .restart local p1  # "target":I
    :cond_81
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v8, "You must specify either GL_TEXTURE_CUBE_MAP to bind all 6 faces of the cube or the requested face GL_TEXTURE_CUBE_MAP_POSITIVE_X and followings."

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 208
    :cond_89
    iget v11, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    if-ne v11, v8, :cond_93

    if-ne v1, v13, :cond_93

    .line 210
    const v1, 0x8515

    .end local p1  # "target":I
    .restart local v1  # "target":I
    goto :goto_c7

    .line 213
    .end local v1  # "target":I
    .restart local p1  # "target":I
    :cond_93
    if-eq v1, v5, :cond_c7

    if-gt v14, v1, :cond_9c

    if-gt v1, v12, :cond_9c

    if-ne v1, v10, :cond_9c

    goto :goto_c7

    .line 215
    :cond_9c
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid target requested : 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", expecting : 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 216
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 220
    .end local p1  # "target":I
    .restart local v1  # "target":I
    :cond_c7
    :goto_c7
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v10, 0xcf5

    invoke-interface {v8, v10, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 221
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    .line 222
    .local v11, "previousUnpackAlignment":I
    const/4 v12, 0x4

    if-eq v11, v12, :cond_db

    sget-object v13, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v13, v10, v12}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 223
    :cond_db
    iget v13, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glInternalFormat:I

    .line 224
    .local v13, "glInternalFormat":I
    iget v15, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    .line 225
    .local v15, "glFormat":I
    iget v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    .line 226
    .local v14, "pos":I
    const/16 v16, 0x0

    move/from16 v10, v16

    .local v10, "level":I
    :goto_e5
    iget v12, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-ge v10, v12, :cond_215

    .line 227
    iget v12, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    shr-int/2addr v12, v10

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 228
    .local v12, "pixelWidth":I
    iget v8, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    shr-int/2addr v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 229
    .local v8, "pixelHeight":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    shr-int/2addr v7, v10

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 230
    .local v7, "pixelDepth":I
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v14}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 231
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 232
    .local v9, "faceLodSize":I
    add-int/lit8 v16, v9, 0x3

    move-object/from16 v26, v2

    .end local v2  # "buffer":Ljava/nio/IntBuffer;
    .local v26, "buffer":Ljava/nio/IntBuffer;
    and-int/lit8 v2, v16, -0x4

    .line 233
    .local v2, "faceLodSizeRounded":I
    add-int/lit8 v14, v14, 0x4

    .line 234
    const/16 v16, 0x0

    move/from16 v27, v5

    move/from16 v5, v16

    .local v5, "face":I
    .local v27, "glTarget":I
    :goto_117
    move/from16 v28, v7

    .end local v7  # "pixelDepth":I
    .local v28, "pixelDepth":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    if-ge v5, v7, :cond_204

    .line 235
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v14}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 236
    add-int v7, v14, v2

    .line 237
    .end local v14  # "pos":I
    .local v7, "pos":I
    const/4 v14, -0x1

    if-eq v6, v14, :cond_130

    if-eq v6, v5, :cond_130

    move/from16 v29, v2

    move/from16 v30, v3

    move v2, v15

    goto/16 :goto_1f8

    .line 238
    :cond_130
    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 239
    .local v14, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v14, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 240
    move/from16 v29, v2

    const/4 v2, 0x1

    .end local v2  # "faceLodSizeRounded":I
    .local v29, "faceLodSizeRounded":I
    if-ne v4, v2, :cond_143

    move/from16 v30, v3

    move v2, v15

    goto/16 :goto_1f8

    .line 246
    :cond_143
    const/4 v2, 0x2

    if-ne v4, v2, :cond_1e8

    .line 247
    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    if-lez v2, :cond_14c

    iget v8, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    .line 248
    :cond_14c
    if-eqz v3, :cond_1c9

    .line 249
    sget v2, Lcom/badlogic/gdx/graphics/glutils/ETC1;->ETC1_RGB8_OES:I

    if-ne v13, v2, :cond_1ae

    .line 250
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    move/from16 v30, v3

    .end local v3  # "compressed":Z
    .local v30, "compressed":Z
    const-string v3, "GL_OES_compressed_ETC1_RGB8_texture"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_193

    .line 251
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    const/4 v3, 0x0

    invoke-direct {v2, v12, v8, v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;-><init>(IILjava/nio/ByteBuffer;I)V

    .line 252
    .local v2, "etcData":Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;
    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->decodeImage(Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    .line 253
    .local v3, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v17, v1, v5

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v19

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v20

    .line 254
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v21

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v23

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v24

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v25

    .line 253
    const/16 v22, 0x0

    move/from16 v18, v10

    invoke-interface/range {v16 .. v25}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 255
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 256
    .end local v2  # "etcData":Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;
    .end local v3  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    move v2, v15

    goto/16 :goto_1f8

    .line 257
    :cond_193
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v3, v1, v5

    const/16 v20, 0x0

    move-object/from16 v24, v14

    .end local v14  # "data":Ljava/nio/ByteBuffer;
    .local v24, "data":Ljava/nio/ByteBuffer;
    move-object v14, v2

    move v2, v15

    .end local v15  # "glFormat":I
    .local v2, "glFormat":I
    move v15, v3

    move/from16 v16, v10

    move/from16 v17, v13

    move/from16 v18, v12

    move/from16 v19, v8

    move/from16 v21, v9

    move-object/from16 v22, v24

    invoke-interface/range {v14 .. v22}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto :goto_1f8

    .line 262
    .end local v2  # "glFormat":I
    .end local v24  # "data":Ljava/nio/ByteBuffer;
    .end local v30  # "compressed":Z
    .local v3, "compressed":Z
    .restart local v14  # "data":Ljava/nio/ByteBuffer;
    .restart local v15  # "glFormat":I
    :cond_1ae
    move/from16 v30, v3

    move-object/from16 v24, v14

    move v2, v15

    .end local v3  # "compressed":Z
    .end local v14  # "data":Ljava/nio/ByteBuffer;
    .end local v15  # "glFormat":I
    .restart local v2  # "glFormat":I
    .restart local v24  # "data":Ljava/nio/ByteBuffer;
    .restart local v30  # "compressed":Z
    sget-object v14, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v15, v1, v5

    const/16 v20, 0x0

    move/from16 v16, v10

    move/from16 v17, v13

    move/from16 v18, v12

    move/from16 v19, v8

    move/from16 v21, v9

    move-object/from16 v22, v24

    invoke-interface/range {v14 .. v22}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto :goto_1f8

    .line 266
    .end local v2  # "glFormat":I
    .end local v24  # "data":Ljava/nio/ByteBuffer;
    .end local v30  # "compressed":Z
    .restart local v3  # "compressed":Z
    .restart local v14  # "data":Ljava/nio/ByteBuffer;
    .restart local v15  # "glFormat":I
    :cond_1c9
    move/from16 v30, v3

    move-object/from16 v24, v14

    move v2, v15

    .end local v3  # "compressed":Z
    .end local v14  # "data":Ljava/nio/ByteBuffer;
    .end local v15  # "glFormat":I
    .restart local v2  # "glFormat":I
    .restart local v24  # "data":Ljava/nio/ByteBuffer;
    .restart local v30  # "compressed":Z
    sget-object v14, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v15, v1, v5

    const/16 v20, 0x0

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    move/from16 v16, v10

    move/from16 v17, v13

    move/from16 v18, v12

    move/from16 v19, v8

    move/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v23, v24

    invoke-interface/range {v14 .. v23}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_1f8

    .line 267
    .end local v2  # "glFormat":I
    .end local v24  # "data":Ljava/nio/ByteBuffer;
    .end local v30  # "compressed":Z
    .restart local v3  # "compressed":Z
    .restart local v14  # "data":Ljava/nio/ByteBuffer;
    .restart local v15  # "glFormat":I
    :cond_1e8
    move/from16 v30, v3

    move-object/from16 v24, v14

    move v2, v15

    .end local v3  # "compressed":Z
    .end local v14  # "data":Ljava/nio/ByteBuffer;
    .end local v15  # "glFormat":I
    .restart local v2  # "glFormat":I
    .restart local v24  # "data":Ljava/nio/ByteBuffer;
    .restart local v30  # "compressed":Z
    const/4 v3, 0x3

    if-ne v4, v3, :cond_1f8

    .line 268
    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    if-lez v3, :cond_1f8

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    move/from16 v28, v3

    .line 234
    .end local v24  # "data":Ljava/nio/ByteBuffer;
    :cond_1f8
    :goto_1f8
    add-int/lit8 v5, v5, 0x1

    move v15, v2

    move v14, v7

    move/from16 v7, v28

    move/from16 v2, v29

    move/from16 v3, v30

    goto/16 :goto_117

    .end local v7  # "pos":I
    .end local v29  # "faceLodSizeRounded":I
    .end local v30  # "compressed":Z
    .local v2, "faceLodSizeRounded":I
    .restart local v3  # "compressed":Z
    .local v14, "pos":I
    .restart local v15  # "glFormat":I
    :cond_204
    move/from16 v29, v2

    move/from16 v30, v3

    move v2, v15

    .line 226
    .end local v3  # "compressed":Z
    .end local v5  # "face":I
    .end local v8  # "pixelHeight":I
    .end local v9  # "faceLodSize":I
    .end local v12  # "pixelWidth":I
    .end local v15  # "glFormat":I
    .end local v28  # "pixelDepth":I
    .local v2, "glFormat":I
    .restart local v30  # "compressed":Z
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v26

    move/from16 v5, v27

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x4

    goto/16 :goto_e5

    .end local v26  # "buffer":Ljava/nio/IntBuffer;
    .end local v27  # "glTarget":I
    .end local v30  # "compressed":Z
    .local v2, "buffer":Ljava/nio/IntBuffer;
    .restart local v3  # "compressed":Z
    .local v5, "glTarget":I
    .restart local v15  # "glFormat":I
    :cond_215
    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v27, v5

    move v2, v15

    .line 278
    .end local v3  # "compressed":Z
    .end local v5  # "glTarget":I
    .end local v10  # "level":I
    .end local v15  # "glFormat":I
    .local v2, "glFormat":I
    .restart local v26  # "buffer":Ljava/nio/IntBuffer;
    .restart local v27  # "glTarget":I
    .restart local v30  # "compressed":Z
    const/4 v3, 0x4

    if-eq v11, v3, :cond_226

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v5, 0xcf5

    invoke-interface {v3, v5, v11}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 279
    :cond_226
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps()Z

    move-result v3

    if-eqz v3, :cond_231

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 282
    :cond_231
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->disposePreparedData()V

    .line 283
    return-void

    .line 198
    .end local v1  # "target":I
    .end local v6  # "singleFace":I
    .end local v11  # "previousUnpackAlignment":I
    .end local v13  # "glInternalFormat":I
    .end local v14  # "pos":I
    .end local v26  # "buffer":Ljava/nio/IntBuffer;
    .end local v27  # "glTarget":I
    .end local v30  # "compressed":Z
    .local v2, "buffer":Ljava/nio/IntBuffer;
    .restart local v3  # "compressed":Z
    .restart local v5  # "glTarget":I
    .restart local p1  # "target":I
    :cond_235
    move-object/from16 v26, v2

    move/from16 v30, v3

    .end local v2  # "buffer":Ljava/nio/IntBuffer;
    .end local v3  # "compressed":Z
    .restart local v26  # "buffer":Ljava/nio/IntBuffer;
    .restart local v30  # "compressed":Z
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Unsupported texture format (only 2D texture are supported in LibGdx for the time being)"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    .end local v26  # "buffer":Ljava/nio/IntBuffer;
    .end local v30  # "compressed":Z
    .restart local v2  # "buffer":Ljava/nio/IntBuffer;
    .restart local v3  # "compressed":Z
    :cond_241
    move-object/from16 v26, v2

    move/from16 v30, v3

    .end local v2  # "buffer":Ljava/nio/IntBuffer;
    .end local v3  # "compressed":Z
    .restart local v26  # "buffer":Ljava/nio/IntBuffer;
    .restart local v30  # "compressed":Z
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "numberOfFaces must be either 1 or 6"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    .end local v4  # "textureDimensions":I
    .end local v5  # "glTarget":I
    .end local v26  # "buffer":Ljava/nio/IntBuffer;
    .end local v30  # "compressed":Z
    .restart local v2  # "buffer":Ljava/nio/IntBuffer;
    .restart local v3  # "compressed":Z
    :cond_24d
    move-object/from16 v26, v2

    .end local v2  # "buffer":Ljava/nio/IntBuffer;
    .restart local v26  # "buffer":Ljava/nio/IntBuffer;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "either both or none of glType, glFormat must be zero"

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    .end local v3  # "compressed":Z
    .end local v26  # "buffer":Ljava/nio/IntBuffer;
    :cond_257
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Call prepare() before calling consumeCompressedData()"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 3

    .line 292
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .registers 3

    .line 297
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePreparedData()V
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 287
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    .line 288
    return-void
.end method

.method public getData(II)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "requestedLevel"  # I
    .param p2, "requestedFace"  # I

    .line 323
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    .line 324
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "level":I
    :goto_3
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-ge v1, v2, :cond_37

    .line 325
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 326
    .local v2, "faceLodSize":I
    add-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, -0x4

    .line 327
    .local v3, "faceLodSizeRounded":I
    add-int/lit8 v0, v0, 0x4

    .line 328
    if-ne v1, p1, :cond_30

    .line 329
    const/4 v4, 0x0

    .local v4, "face":I
    :goto_16
    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    if-ge v4, v5, :cond_2f

    .line 330
    if-ne v4, p2, :cond_2b

    .line 331
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 332
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 333
    .local v5, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 334
    return-object v5

    .line 336
    .end local v5  # "data":Ljava/nio/ByteBuffer;
    :cond_2b
    add-int/2addr v0, v3

    .line 329
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .end local v4  # "face":I
    :cond_2f
    goto :goto_34

    .line 339
    :cond_30
    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 324
    .end local v2  # "faceLodSize":I
    .end local v3  # "faceLodSizeRounded":I
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 342
    .end local v1  # "level":I
    :cond_37
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .registers 3

    .line 347
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation directly handles texture formats."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGlInternalFormat()I
    .registers 2

    .line 319
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glInternalFormat:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 307
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    return v0
.end method

.method public getNumberOfFaces()I
    .registers 2

    .line 315
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    return v0
.end method

.method public getNumberOfMipMapLevels()I
    .registers 2

    .line 311
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .registers 2

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 302
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    return v0
.end method

.method public isManaged()Z
    .registers 2

    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public prepare()V
    .registers 9

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_239

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    if-eqz v0, :cond_231

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zktx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_89

    .line 79
    const/16 v0, 0x2800

    new-array v0, v0, [B

    .line 80
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 82
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_1c
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 83
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 84
    .local v3, "fileSize":I
    invoke-static {v3}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    .line 85
    const/4 v4, 0x0

    .line 86
    .local v4, "readBytes":I
    :goto_3d
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4b

    .line 87
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v1, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_3d

    .line 88
    :cond_4b
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 89
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5b} :catch_63
    .catchall {:try_start_1c .. :try_end_5b} :catchall_61

    .line 93
    nop

    .end local v3  # "fileSize":I
    .end local v4  # "readBytes":I
    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    nop

    .line 95
    .end local v0  # "buffer":[B
    .end local v2  # "in":Ljava/io/DataInputStream;
    goto :goto_95

    .line 93
    .restart local v0  # "buffer":[B
    .restart local v2  # "in":Ljava/io/DataInputStream;
    :catchall_61
    move-exception v1

    goto :goto_85

    .line 90
    :catch_63
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    :try_start_64
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load zktx file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0  # "buffer":[B
    .end local v2  # "in":Ljava/io/DataInputStream;
    throw v3
    :try_end_85
    .catchall {:try_start_64 .. :try_end_85} :catchall_61

    .line 93
    .end local v1  # "e":Ljava/lang/Exception;
    .restart local v0  # "buffer":[B
    .restart local v2  # "in":Ljava/io/DataInputStream;
    :goto_85
    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 96
    .end local v0  # "buffer":[B
    .end local v2  # "in":Ljava/io/DataInputStream;
    :cond_89
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    .line 98
    :goto_95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, -0x55

    const-string v3, "Invalid KTX Header"

    if-ne v0, v2, :cond_22b

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x4b

    if-ne v0, v2, :cond_225

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_21f

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x58

    if-ne v0, v2, :cond_219

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_213

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_20d

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_207

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, -0x45

    if-ne v0, v2, :cond_201

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1fb

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1f5

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v4, 0x1a

    if-ne v0, v4, :cond_1ef

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_1e9

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 111
    .local v0, "endianTag":I
    const v2, 0x4030201

    if-eq v0, v2, :cond_122

    const v4, 0x1020304

    if-ne v0, v4, :cond_11c

    goto :goto_122

    :cond_11c
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_122
    :goto_122
    if-eq v0, v2, :cond_138

    .line 113
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_133

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_135

    :cond_133
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_135
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 114
    :cond_138
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    .line 115
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glTypeSize:I

    .line 116
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    .line 117
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glInternalFormat:I

    .line 118
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glBaseInternalFormat:I

    .line 119
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    .line 120
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    .line 121
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    .line 122
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    .line 123
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    .line 124
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    .line 125
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-nez v2, :cond_199

    .line 126
    const/4 v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    .line 127
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps:Z

    .line 129
    :cond_199
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 130
    .local v2, "bytesOfKeyValueData":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    .line 131
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 132
    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    .line 133
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "level":I
    :goto_1b3
    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-ge v4, v5, :cond_1ca

    .line 134
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 135
    .local v5, "faceLodSize":I
    add-int/lit8 v6, v5, 0x3

    and-int/lit8 v6, v6, -0x4

    .line 136
    .local v6, "faceLodSizeRounded":I
    iget v7, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    mul-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v3, v7

    .line 133
    .end local v5  # "faceLodSize":I
    .end local v6  # "faceLodSizeRounded":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b3

    .line 138
    .end local v4  # "level":I
    :cond_1ca
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 140
    invoke-static {v3}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 141
    .local v1, "directBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 143
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    .line 145
    .end local v1  # "directBuffer":Ljava/nio/ByteBuffer;
    .end local v3  # "pos":I
    :cond_1e8
    return-void

    .line 109
    .end local v0  # "endianTag":I
    .end local v2  # "bytesOfKeyValueData":I
    :cond_1e9
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1ef
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1f5
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1fb
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_201
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_207
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_20d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_213
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_219
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_21f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_225
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_22b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_231
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Need a file to load from"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_239
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useMipMaps()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps:Z

    return v0
.end method
