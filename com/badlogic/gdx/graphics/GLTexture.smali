.class public abstract Lcom/badlogic/gdx/graphics/GLTexture;
.super Ljava/lang/Object;
.source "GLTexture.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static maxAnisotropicFilterLevel:F


# instance fields
.field protected anisotropicFilterLevel:F

.field protected glHandle:I

.field public final glTarget:I

.field protected magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field protected minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field protected uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field protected vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/badlogic/gdx/graphics/GLTexture;->maxAnisotropicFilterLevel:F

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "glTarget"  # I

    .line 57
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(II)V

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "glTarget"  # I
    .param p2, "glHandle"  # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 40
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 41
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 42
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 43
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->anisotropicFilterLevel:F

    .line 61
    iput p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    .line 62
    iput p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    .line 63
    return-void
.end method

.method public static getMaxAnisotropicFilterLevel()F
    .registers 4

    .line 231
    sget v0, Lcom/badlogic/gdx/graphics/GLTexture;->maxAnisotropicFilterLevel:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 232
    sget v0, Lcom/badlogic/gdx/graphics/GLTexture;->maxAnisotropicFilterLevel:F

    return v0

    .line 233
    :cond_a
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "GL_EXT_texture_filter_anisotropic"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 234
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 235
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 236
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 237
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v3, 0x84ff

    invoke-interface {v2, v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 238
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    sput v1, Lcom/badlogic/gdx/graphics/GLTexture;->maxAnisotropicFilterLevel:F

    return v1

    .line 240
    .end local v0  # "buffer":Ljava/nio/FloatBuffer;
    :cond_34
    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lcom/badlogic/gdx/graphics/GLTexture;->maxAnisotropicFilterLevel:F

    return v0
.end method

.method protected static uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;)V
    .registers 3
    .param p0, "target"  # I
    .param p1, "data"  # Lcom/badlogic/gdx/graphics/TextureData;

    .line 257
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;I)V

    .line 258
    return-void
.end method

.method public static uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;I)V
    .registers 18
    .param p0, "target"  # I
    .param p1, "data"  # Lcom/badlogic/gdx/graphics/TextureData;
    .param p2, "miplevel"  # I

    .line 261
    move v10, p0

    move-object/from16 v11, p1

    if-nez v11, :cond_6

    .line 263
    return-void

    .line 266
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 268
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v12

    .line 269
    .local v12, "type":Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    if-ne v12, v0, :cond_1b

    .line 270
    invoke-interface {v11, p0}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCustomData(I)V

    .line 271
    return-void

    .line 274
    :cond_1b
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 275
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v9

    .line 276
    .local v9, "disposePixmap":Z
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    if-eq v1, v2, :cond_62

    .line 277
    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v13, v1

    .line 278
    .local v13, "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 279
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 280
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 281
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 283
    :cond_5e
    move-object v0, v13

    .line 284
    const/4 v9, 0x1

    move v14, v9

    goto :goto_64

    .line 276
    .end local v13  # "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_62
    move-object v13, v0

    move v14, v9

    .line 287
    .end local v0  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v9  # "disposePixmap":Z
    .local v13, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v14, "disposePixmap":Z
    :goto_64
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xcf5

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 288
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/TextureData;->useMipMaps()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 289
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    invoke-static {p0, v13, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMap(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    goto :goto_9f

    .line 291
    :cond_7e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    .line 292
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 291
    const/4 v6, 0x0

    move v1, p0

    move/from16 v2, p2

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 294
    :goto_9f
    if-eqz v14, :cond_a4

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 295
    :cond_a4
    return-void
.end method


# virtual methods
.method public bind()V
    .registers 4

    .line 73
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 74
    return-void
.end method

.method public bind(I)V
    .registers 5
    .param p1, "unit"  # I

    .line 79
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 80
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 81
    return-void
.end method

.method protected delete()V
    .registers 3

    .line 245
    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    if-eqz v0, :cond_e

    .line 246
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTexture(I)V

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    .line 249
    :cond_e
    return-void
.end method

.method public dispose()V
    .registers 1

    .line 253
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->delete()V

    .line 254
    return-void
.end method

.method public getAnisotropicFilter()F
    .registers 2

    .line 224
    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->anisotropicFilterLevel:F

    return v0
.end method

.method public abstract getDepth()I
.end method

.method public abstract getHeight()I
.end method

.method public getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public getTextureObjectHandle()I
    .registers 2

    .line 105
    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glHandle:I

    return v0
.end method

.method public getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public abstract isManaged()Z
.end method

.method protected abstract reload()V
.end method

.method public setAnisotropicFilter(F)F
    .registers 6
    .param p1, "level"  # F

    .line 209
    invoke-static {}, Lcom/badlogic/gdx/graphics/GLTexture;->getMaxAnisotropicFilterLevel()F

    move-result v0

    .line 210
    .local v0, "max":F
    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_b

    .line 211
    return v1

    .line 212
    :cond_b
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 213
    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->anisotropicFilterLevel:F

    const v2, 0x3dcccccd  # 0.1f

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 214
    return p1

    .line 215
    :cond_1b
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind()V

    .line 216
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xde1

    const v3, 0x84fe

    invoke-interface {v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 217
    iput p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->anisotropicFilterLevel:F

    return p1
.end method

.method public setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .registers 7
    .param p1, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 167
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 168
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 169
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind()V

    .line 170
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2801

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 171
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2800

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 172
    return-void
.end method

.method public setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .registers 7
    .param p1, "u"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p2, "v"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 134
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 135
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind()V

    .line 137
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2802

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 138
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2803

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 139
    return-void
.end method

.method public unsafeSetAnisotropicFilter(F)F
    .registers 3
    .param p1, "level"  # F

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetAnisotropicFilter(FZ)F

    move-result v0

    return v0
.end method

.method public unsafeSetAnisotropicFilter(FZ)F
    .registers 7
    .param p1, "level"  # F
    .param p2, "force"  # Z

    .line 192
    invoke-static {}, Lcom/badlogic/gdx/graphics/GLTexture;->getMaxAnisotropicFilterLevel()F

    move-result v0

    .line 193
    .local v0, "max":F
    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_b

    .line 194
    return v1

    .line 195
    :cond_b
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 196
    if-nez p2, :cond_1f

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->anisotropicFilterLevel:F

    const v2, 0x3dcccccd  # 0.1f

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 197
    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->anisotropicFilterLevel:F

    return v1

    .line 198
    :cond_1f
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xde1

    const v3, 0x84fe

    invoke-interface {v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 199
    iput p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->anisotropicFilterLevel:F

    return p1
.end method

.method public unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .registers 4
    .param p1, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 146
    return-void
.end method

.method public unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .registers 8
    .param p1, "minFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"  # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "force"  # Z

    .line 153
    if-eqz p1, :cond_17

    if-nez p3, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq v0, p1, :cond_17

    .line 154
    :cond_8
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2801

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 155
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 157
    :cond_17
    if-eqz p2, :cond_2e

    if-nez p3, :cond_1f

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq v0, p2, :cond_2e

    .line 158
    :cond_1f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2800

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 159
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 161
    :cond_2e
    return-void
.end method

.method public unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .registers 4
    .param p1, "u"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p2, "v"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V

    .line 113
    return-void
.end method

.method public unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V
    .registers 8
    .param p1, "u"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p2, "v"  # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p3, "force"  # Z

    .line 120
    if-eqz p1, :cond_17

    if-nez p3, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-eq v0, p1, :cond_17

    .line 121
    :cond_8
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2802

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 122
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 124
    :cond_17
    if-eqz p2, :cond_2e

    if-nez p3, :cond_1f

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-eq v0, p2, :cond_2e

    .line 125
    :cond_1f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2803

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 126
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 128
    :cond_2e
    return-void
.end method
