.class public Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;
.super Ljava/lang/Object;
.source "FloatTextureData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field buffer:Ljava/nio/FloatBuffer;

.field format:I

.field height:I

.field internalFormat:I

.field isGpuOnly:Z

.field isPrepared:Z

.field type:I

.field width:I


# direct methods
.method public constructor <init>(IIIIIZ)V
    .registers 8
    .param p1, "w"  # I
    .param p2, "h"  # I
    .param p3, "internalFormat"  # I
    .param p4, "format"  # I
    .param p5, "type"  # I
    .param p6, "isGpuOnly"  # Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    .line 35
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    .line 43
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    .line 47
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    .line 48
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    .line 49
    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->internalFormat:I

    .line 50
    iput p4, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->format:I

    .line 51
    iput p5, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->type:I

    .line 52
    iput-boolean p6, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isGpuOnly:Z

    .line 53
    return-void
.end method


# virtual methods
.method public consumeCustomData(I)V
    .registers 14
    .param p1, "target"  # I

    .line 83
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_4f

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_4f

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 84
    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_1f

    goto :goto_4f

    .line 94
    :cond_1f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL30Available()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 95
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "GL_ARB_texture_float"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_3a

    .line 96
    :cond_32
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Extension GL_ARB_texture_float not supported!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3a
    :goto_3a
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->internalFormat:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->format:I

    const/16 v10, 0x1406

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->buffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move v3, p1

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_6d

    .line 86
    :cond_4f
    :goto_4f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "OES_texture_float"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 91
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    const/16 v9, 0x1406

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->buffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    move v2, p1

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 102
    :goto_6d
    return-void

    .line 87
    :cond_6e
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Extension OES_texture_float not supported!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 3

    .line 106
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .registers 3

    .line 111
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .registers 2

    .line 126
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .registers 2

    .line 57
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    return v0
.end method

.method public isManaged()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    return v0
.end method

.method public prepare()V
    .registers 4

    .line 67
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    if-nez v0, :cond_67

    .line 68
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isGpuOnly:Z

    if-nez v0, :cond_63

    .line 69
    const/4 v0, 0x4

    .line 70
    .local v0, "amountOfFloats":I
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getType()Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 71
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->internalFormat:I

    const v2, 0x881a

    if-eq v1, v2, :cond_29

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->internalFormat:I

    const v2, 0x8814

    if-ne v1, v2, :cond_2a

    :cond_29
    const/4 v0, 0x4

    .line 72
    :cond_2a
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->internalFormat:I

    const v2, 0x881b

    if-eq v1, v2, :cond_38

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->internalFormat:I

    const v2, 0x8815

    if-ne v1, v2, :cond_39

    :cond_38
    const/4 v0, 0x3

    .line 73
    :cond_39
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->internalFormat:I

    const v2, 0x822f

    if-eq v1, v2, :cond_47

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->internalFormat:I

    const v2, 0x8230

    if-ne v1, v2, :cond_48

    :cond_47
    const/4 v0, 0x2

    .line 74
    :cond_48
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->internalFormat:I

    const v2, 0x822d

    if-eq v1, v2, :cond_56

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->internalFormat:I

    const v2, 0x822e

    if-ne v1, v2, :cond_57

    :cond_56
    const/4 v0, 0x1

    .line 76
    :cond_57
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    mul-int/2addr v1, v2

    mul-int/2addr v1, v0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->buffer:Ljava/nio/FloatBuffer;

    .line 78
    .end local v0  # "amountOfFloats":I
    :cond_63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    .line 79
    return-void

    .line 67
    :cond_67
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useMipMaps()Z
    .registers 2

    .line 131
    const/4 v0, 0x0

    return v0
.end method
