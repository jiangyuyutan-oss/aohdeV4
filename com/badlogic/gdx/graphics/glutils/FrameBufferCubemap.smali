.class public Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;
.super Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.source "FrameBufferCubemap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
        "Lcom/badlogic/gdx/graphics/Cubemap;",
        ">;"
    }
.end annotation


# static fields
.field private static final cubemapSides:[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;


# instance fields
.field private currentSide:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    invoke-static {}, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->values()[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->cubemapSides:[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V
    .registers 11
    .param p1, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "width"  # I
    .param p3, "height"  # I
    .param p4, "hasDepth"  # Z

    .line 88
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZZ)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZZ)V
    .registers 7
    .param p1, "format"  # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "width"  # I
    .param p3, "height"  # I
    .param p4, "hasDepth"  # Z
    .param p5, "hasStencil"  # Z

    .line 100
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;-><init>()V

    .line 101
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;

    invoke-direct {v0, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;-><init>(II)V

    .line 102
    .local v0, "frameBufferBuilder":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;->addBasicColorTextureAttachment(Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    .line 103
    if-eqz p4, :cond_10

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;->addBasicDepthRenderBuffer()Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    .line 104
    :cond_10
    if-eqz p5, :cond_15

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;->addBasicStencilRenderBuffer()Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    .line 105
    :cond_15
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->build()V

    .line 108
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
            "+",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
            "Lcom/badlogic/gdx/graphics/Cubemap;",
            ">;>;)V"
        }
    .end annotation

    .line 78
    .local p1, "bufferBuilder":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<+Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<Lcom/badlogic/gdx/graphics/Cubemap;>;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected attachFrameBufferColorTexture(Lcom/badlogic/gdx/graphics/Cubemap;)V
    .registers 14
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Cubemap;

    .line 127
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 128
    .local v6, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Cubemap;->getTextureObjectHandle()I

    move-result v7

    .line 129
    .local v7, "glHandle":I
    invoke-static {}, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->values()[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    move-result-object v8

    .line 130
    .local v8, "sides":[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    array-length v9, v8

    const/4 v0, 0x0

    move v10, v0

    :goto_d
    if-ge v10, v9, :cond_22

    aget-object v11, v8, v10

    .line 131
    .local v11, "side":Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    iget v3, v11, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->glEnum:I

    const/4 v5, 0x0

    const v1, 0x8d40

    const v2, 0x8ce0

    move-object v0, v6

    move v4, v7

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 130
    .end local v11  # "side":Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 134
    :cond_22
    return-void
.end method

.method protected bridge synthetic attachFrameBufferColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .registers 2

    .line 62
    check-cast p1, Lcom/badlogic/gdx/graphics/Cubemap;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->attachFrameBufferColorTexture(Lcom/badlogic/gdx/graphics/Cubemap;)V

    return-void
.end method

.method public bind()V
    .registers 2

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->currentSide:I

    .line 141
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bind()V

    .line 142
    return-void
.end method

.method protected bindSide(Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;)V
    .registers 8
    .param p1, "side"  # Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    .line 161
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v3, p1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->glEnum:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cubemap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Cubemap;->getTextureObjectHandle()I

    move-result v4

    const/4 v5, 0x0

    const v1, 0x8d40

    const v2, 0x8ce0

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 162
    return-void
.end method

.method protected createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/Cubemap;
    .registers 10
    .param p1, "attachmentSpec"  # Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    .line 113
    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/GLOnlyTextureData;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->width:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->height:I

    iget v4, p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->internalFormat:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->format:I

    iget v6, p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->type:I

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/GLOnlyTextureData;-><init>(IIIIII)V

    move-object v1, v7

    .line 114
    .local v1, "data":Lcom/badlogic/gdx/graphics/glutils/GLOnlyTextureData;
    new-instance v7, Lcom/badlogic/gdx/graphics/Cubemap;

    move-object v0, v7

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 115
    .local v0, "result":Lcom/badlogic/gdx/graphics/Cubemap;
    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/Cubemap;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 116
    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/Cubemap;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 117
    return-object v0
.end method

.method protected bridge synthetic createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/Cubemap;

    move-result-object p1

    return-object p1
.end method

.method protected disposeColorTexture(Lcom/badlogic/gdx/graphics/Cubemap;)V
    .registers 2
    .param p1, "colorTexture"  # Lcom/badlogic/gdx/graphics/Cubemap;

    .line 122
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Cubemap;->dispose()V

    .line 123
    return-void
.end method

.method protected bridge synthetic disposeColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .registers 2

    .line 62
    check-cast p1, Lcom/badlogic/gdx/graphics/Cubemap;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->disposeColorTexture(Lcom/badlogic/gdx/graphics/Cubemap;)V

    return-void
.end method

.method public getSide()Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    .registers 3

    .line 166
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->currentSide:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->cubemapSides:[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->currentSide:I

    aget-object v0, v0, v1

    :goto_c
    return-object v0
.end method

.method public nextSide()Z
    .registers 3

    .line 147
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->currentSide:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_19

    .line 149
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->currentSide:I

    if-ne v0, v1, :cond_b

    .line 150
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_b
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->currentSide:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->currentSide:I

    .line 154
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->getSide()Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->bindSide(Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;)V

    .line 155
    return v1

    .line 148
    :cond_19
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No remaining sides."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
