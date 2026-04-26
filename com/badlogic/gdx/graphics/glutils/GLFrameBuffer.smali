.class public abstract Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.super Ljava/lang/Object;
.source "GLFrameBuffer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FloatFrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/graphics/GLTexture;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# static fields
.field protected static final GL_DEPTH24_STENCIL8_OES:I = 0x88f0

.field protected static final buffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static defaultFramebufferHandle:I

.field protected static defaultFramebufferHandleInitialized:Z


# instance fields
.field protected bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
            "+",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected depthStencilPackedBufferHandle:I

.field protected depthbufferHandle:I

.field protected framebufferHandle:I

.field protected hasDepthStencilPackedBuffer:Z

.field protected isMRT:Z

.field protected stencilbufferHandle:I

.field protected textureAttachments:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandleInitialized:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 85
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    .line 86
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
            "+",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    .local p1, "bufferBuilder":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<+Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    .line 90
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    .line 91
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->build()V

    .line 92
    return-void
.end method

.method private static addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;)V
    .registers 4
    .param p0, "app"  # Lcom/badlogic/gdx/Application;
    .param p1, "frameBuffer"  # Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;

    .line 382
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 383
    .local v0, "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;>;"
    if-nez v0, :cond_10

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v0, v1

    .line 384
    :cond_10
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 385
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    return-void
.end method

.method private checkValidBuilder()V
    .registers 6

    .line 270
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL30Available()Z

    move-result v0

    .line 272
    .local v0, "runningGL30":Z
    if-nez v0, :cond_6b

    .line 273
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-nez v1, :cond_63

    .line 276
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5b

    .line 279
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    .line 280
    .local v2, "spec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isDepth:Z

    if-nez v3, :cond_53

    .line 281
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isStencil:Z

    if-nez v3, :cond_4b

    .line 282
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isFloat:Z

    if-eqz v3, :cond_4a

    .line 283
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v4, "OES_texture_float"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_4a

    .line 284
    :cond_42
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Float texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    .end local v2  # "spec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    :cond_4a
    :goto_4a
    goto :goto_1f

    .line 281
    .restart local v2  # "spec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    :cond_4b
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Stencil texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_53
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Depth texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    .end local v2  # "spec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    :cond_5b
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Multiple render targets not available on GLES 2.0"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_63
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Packed Stencil/Render render buffers are not available on GLES 2.0"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_6b
    return-void
.end method

.method public static clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .registers 2
    .param p0, "app"  # Lcom/badlogic/gdx/Application;

    .line 401
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .registers 1

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4
    .param p0, "builder"  # Ljava/lang/StringBuilder;

    .line 405
    const-string v0, "Managed buffers/app: { "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/Application;

    .line 407
    .local v1, "app":Lcom/badlogic/gdx/Application;
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .end local v1  # "app":Lcom/badlogic/gdx/Application;
    goto :goto_f

    .line 410
    :cond_2e
    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    return-object p0
.end method

.method public static invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .registers 4
    .param p0, "app"  # Lcom/badlogic/gdx/Application;

    .line 391
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_5

    return-void

    .line 393
    :cond_5
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 394
    .local v0, "bufferArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;>;"
    if-nez v0, :cond_10

    return-void

    .line 395
    :cond_10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_21

    .line 396
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->build()V

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 398
    .end local v1  # "i":I
    :cond_21
    return-void
.end method

.method public static unbind()V
    .registers 3

    .line 319
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8d40

    sget v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 320
    return-void
.end method


# virtual methods
.method protected abstract attachFrameBufferColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public begin()V
    .registers 1

    .line 324
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bind()V

    .line 325
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->setFrameBufferViewport()V

    .line 326
    return-void
.end method

.method public bind()V
    .registers 4

    .line 314
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8d40

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 315
    return-void
.end method

.method protected build()V
    .registers 21

    .line 114
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    move-object/from16 v0, p0

    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 116
    .local v7, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->checkValidBuilder()V

    .line 119
    sget-boolean v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandleInitialized:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_3a

    .line 120
    sput-boolean v8, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandleInitialized:Z

    .line 121
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_38

    .line 122
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 123
    .local v1, "intbuf":Ljava/nio/IntBuffer;
    const v2, 0x8ca6

    invoke-interface {v7, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 124
    invoke-virtual {v1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    sput v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    .line 125
    .end local v1  # "intbuf":Ljava/nio/IntBuffer;
    goto :goto_3a

    .line 126
    :cond_38
    sput v9, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    .line 130
    :cond_3a
    :goto_3a
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    .line 131
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    const v10, 0x8d40

    invoke-interface {v7, v10, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 133
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v11, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->width:I

    .line 134
    .local v11, "width":I
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v12, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->height:I

    .line 136
    .local v12, "height":I
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    const v13, 0x8d41

    if-eqz v1, :cond_6d

    .line 137
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    .line 138
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 139
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->depthRenderBufferSpec:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 142
    :cond_6d
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v1, :cond_87

    .line 143
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    .line 144
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 145
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->stencilRenderBufferSpec:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 148
    :cond_87
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-eqz v1, :cond_a1

    .line 149
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    .line 150
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 151
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->packedStencilDepthRenderBufferSpec:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 155
    :cond_a1
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v1, v8, :cond_ab

    move v1, v8

    goto :goto_ac

    :cond_ab
    move v1, v9

    :goto_ac
    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->isMRT:Z

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, "colorTextureCounter":I
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->isMRT:Z

    const v14, 0x8ce0

    if-eqz v2, :cond_12c

    .line 158
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v15

    move/from16 v16, v1

    .end local v1  # "colorTextureCounter":I
    .local v16, "colorTextureCounter":I
    :goto_c0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_129

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    .line 159
    .local v6, "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v5

    .line 160
    .local v5, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isColorTexture()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 162
    add-int v3, v16, v14

    .line 163
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v17

    .line 162
    const v2, 0x8d40

    const/16 v4, 0xde1

    const/16 v18, 0x0

    move-object v1, v7

    move-object/from16 v19, v5

    .end local v5  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    .local v19, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    move/from16 v5, v17

    move-object v8, v6

    .end local v6  # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    .local v8, "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    move/from16 v6, v18

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 164
    add-int/lit8 v16, v16, 0x1

    goto :goto_127

    .line 165
    .end local v8  # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    .end local v19  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    .restart local v5  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    .restart local v6  # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    :cond_f7
    move-object/from16 v19, v5

    move-object v8, v6

    .end local v5  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    .end local v6  # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    .restart local v8  # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    .restart local v19  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    iget-boolean v1, v8, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isDepth:Z

    if-eqz v1, :cond_111

    .line 166
    nop

    .line 167
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v5

    .line 166
    const v2, 0x8d40

    const v3, 0x8d00

    const/16 v4, 0xde1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    goto :goto_127

    .line 168
    :cond_111
    iget-boolean v1, v8, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isStencil:Z

    if-eqz v1, :cond_127

    .line 169
    nop

    .line 170
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v5

    .line 169
    const v2, 0x8d40

    const v3, 0x8d20

    const/16 v4, 0xde1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 172
    .end local v8  # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    .end local v19  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    :cond_127
    :goto_127
    const/4 v8, 0x1

    goto :goto_c0

    :cond_129
    move/from16 v1, v16

    goto :goto_148

    .line 174
    .end local v16  # "colorTextureCounter":I
    .restart local v1  # "colorTextureCounter":I
    :cond_12c
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v2

    .line 175
    .local v2, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 176
    iget v3, v2, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v4

    invoke-interface {v7, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 179
    .end local v2  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    :goto_148
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->isMRT:Z

    if-eqz v2, :cond_164

    .line 180
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 181
    .local v2, "buffer":Ljava/nio/IntBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_151
    if-ge v3, v1, :cond_15b

    .line 182
    add-int v4, v3, v14

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_151

    .line 184
    .end local v3  # "i":I
    :cond_15b
    invoke-virtual {v2, v9}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 185
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL30;->glDrawBuffers(ILjava/nio/IntBuffer;)V

    .line 186
    .end local v2  # "buffer":Ljava/nio/IntBuffer;
    goto :goto_16f

    .line 187
    :cond_164
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->attachFrameBufferColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V

    .line 190
    :goto_16f
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    const v3, 0x8d00

    if-eqz v2, :cond_17d

    .line 191
    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v10, v3, v13, v2}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 194
    :cond_17d
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    const v4, 0x8d20

    if-eqz v2, :cond_18b

    .line 195
    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v10, v4, v13, v2}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 198
    :cond_18b
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-eqz v2, :cond_199

    .line 199
    const v2, 0x821a

    iget v5, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v10, v2, v13, v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 203
    :cond_199
    invoke-interface {v7, v13, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 204
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_1a2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/GLTexture;

    .line 205
    .restart local v5  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    iget v6, v5, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-interface {v7, v6, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 206
    .end local v5  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    goto :goto_1a2

    .line 208
    :cond_1b4
    invoke-interface {v7, v10}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v2

    .line 210
    .local v2, "result":I
    const v5, 0x8cdd

    if-ne v2, v5, :cond_229

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v6, :cond_229

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v6, :cond_229

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 211
    const-string v8, "GL_OES_packed_depth_stencil"

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1dd

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 212
    const-string v8, "GL_EXT_packed_depth_stencil"

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_229

    .line 213
    :cond_1dd
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v6, :cond_1ea

    .line 214
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 215
    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    .line 217
    :cond_1ea
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v6, :cond_1f7

    .line 218
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 219
    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    .line 221
    :cond_1f7
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-eqz v6, :cond_204

    .line 222
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 223
    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    .line 226
    :cond_204
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v6

    iput v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    .line 227
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->hasDepthStencilPackedBuffer:Z

    .line 228
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v13, v6}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 229
    const v6, 0x88f0

    invoke-interface {v7, v13, v6, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 230
    invoke-interface {v7, v13, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 232
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v10, v3, v13, v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 234
    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v10, v4, v13, v3}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 236
    invoke-interface {v7, v10}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v2

    .line 239
    :cond_229
    sget v3, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    invoke-interface {v7, v10, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 241
    const v3, 0x8cd5

    if-eq v2, v3, :cond_2b8

    .line 242
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_239
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_249

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/GLTexture;

    .line 243
    .local v4, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->disposeColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V

    .line 244
    .end local v4  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    goto :goto_239

    .line 246
    :cond_249
    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->hasDepthStencilPackedBuffer:Z

    if-eqz v3, :cond_253

    .line 247
    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    goto :goto_269

    .line 249
    :cond_253
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v3, v3, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v3, :cond_25e

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 250
    :cond_25e
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v3, v3, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v3, :cond_269

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 253
    :cond_269
    :goto_269
    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    .line 255
    const v3, 0x8cd6

    if-eq v2, v3, :cond_2b0

    .line 257
    const v3, 0x8cd9

    if-eq v2, v3, :cond_2a8

    .line 259
    const v3, 0x8cd7

    if-eq v2, v3, :cond_2a0

    .line 261
    if-ne v2, v5, :cond_287

    .line 262
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Frame buffer couldn\'t be constructed: unsupported combination of formats"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_287
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame buffer couldn\'t be constructed: unknown error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    :cond_2a0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Frame buffer couldn\'t be constructed: missing attachment"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_2a8
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Frame buffer couldn\'t be constructed: incomplete dimensions"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    :cond_2b0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Frame buffer couldn\'t be constructed: incomplete attachment"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_2b8
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v3, v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;)V

    .line 267
    return-void
.end method

.method protected abstract createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;",
            ")TT;"
        }
    .end annotation
.end method

.method public dispose()V
    .registers 4

    .line 294
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 296
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/GLTexture;

    .line 297
    .local v2, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->disposeColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V

    .line 298
    .end local v2  # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    goto :goto_8

    .line 300
    :cond_18
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->hasDepthStencilPackedBuffer:Z

    if-eqz v1, :cond_22

    .line 301
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    goto :goto_38

    .line 303
    :cond_22
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 304
    :cond_2d
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v1, :cond_38

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 307
    :cond_38
    :goto_38
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    .line 309
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_55

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 310
    :cond_55
    return-void
.end method

.method protected abstract disposeColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public end()V
    .registers 4

    .line 335
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->end(IIII)V

    .line 336
    return-void
.end method

.method public end(IIII)V
    .registers 6
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I

    .line 345
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->unbind()V

    .line 346
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 347
    return-void
.end method

.method public getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/GLTexture;

    return-object v0
.end method

.method public getDepthBufferHandle()I
    .registers 2

    .line 357
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    return v0
.end method

.method protected getDepthStencilPackedBuffer()I
    .registers 2

    .line 368
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    return v0
.end method

.method public getFramebufferHandle()I
    .registers 2

    .line 351
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 373
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->height:I

    return v0
.end method

.method public getStencilBufferHandle()I
    .registers 2

    .line 363
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    return v0
.end method

.method public getTextureAttachments()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 378
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->width:I

    return v0
.end method

.method protected setFrameBufferViewport()V
    .registers 5

    .line 330
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->width:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->height:I

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 331
    return-void
.end method
