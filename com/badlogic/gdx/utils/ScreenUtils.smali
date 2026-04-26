.class public final Lcom/badlogic/gdx/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(FFFF)V
    .registers 5
    .param p0, "r"  # F
    .param p1, "g"  # F
    .param p2, "b"  # F
    .param p3, "a"  # F

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/ScreenUtils;->clear(FFFFZ)V

    .line 47
    return-void
.end method

.method public static clear(FFFFZ)V
    .registers 7
    .param p0, "r"  # F
    .param p1, "g"  # F
    .param p2, "b"  # F
    .param p3, "a"  # F
    .param p4, "clearDepth"  # Z

    .line 59
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 60
    const/16 v0, 0x4000

    .line 61
    .local v0, "mask":I
    if-eqz p4, :cond_b

    .line 62
    or-int/lit16 v0, v0, 0x100

    .line 63
    :cond_b
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 64
    return-void
.end method

.method public static clear(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 6
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 41
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/ScreenUtils;->clear(FFFFZ)V

    .line 42
    return-void
.end method

.method public static clear(Lcom/badlogic/gdx/graphics/Color;Z)V
    .registers 6
    .param p0, "color"  # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "clearDepth"  # Z

    .line 53
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/utils/ScreenUtils;->clear(FFFFZ)V

    .line 54
    return-void
.end method

.method public static getFrameBufferPixels(IIIIZ)[B
    .registers 16
    .param p0, "x"  # I
    .param p1, "y"  # I
    .param p2, "w"  # I
    .param p3, "h"  # I
    .param p4, "flipY"  # Z

    .line 129
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xd05

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 130
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 131
    .local v0, "pixels":Ljava/nio/ByteBuffer;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v10, v0

    invoke-interface/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 132
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    .line 133
    .local v1, "numBytes":I
    new-array v3, v1, [B

    .line 134
    .local v3, "lines":[B
    if-eqz p4, :cond_3b

    .line 135
    mul-int/lit8 v4, p2, 0x4

    .line 136
    .local v4, "numBytesPerLine":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_29
    if-ge v5, p3, :cond_3a

    .line 137
    sub-int v6, p3, v5

    sub-int/2addr v6, v2

    mul-int/2addr v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 138
    mul-int v6, v5, v4

    invoke-virtual {v0, v3, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 140
    .end local v4  # "numBytesPerLine":I
    .end local v5  # "i":I
    :cond_3a
    goto :goto_41

    .line 141
    :cond_3b
    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 142
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 144
    :goto_41
    return-object v3
.end method

.method public static getFrameBufferPixels(Z)[B
    .registers 4
    .param p0, "flipY"  # Z

    .line 115
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    .line 116
    .local v0, "w":I
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v1

    .line 117
    .local v1, "h":I
    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1, p0}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixels(IIIIZ)[B

    move-result-object v2

    return-object v2
.end method

.method public static getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 5
    .param p0, "x"  # I
    .param p1, "y"  # I
    .param p2, "w"  # I
    .param p3, "h"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/Pixmap;->createFromFrameBuffer(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    return-object v0
.end method

.method public static getFrameBufferTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 3

    .line 71
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    .line 72
    .local v0, "w":I
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v1

    .line 73
    .local v1, "h":I
    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferTexture(IIII)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    return-object v2
.end method

.method public static getFrameBufferTexture(IIII)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 15
    .param p0, "x"  # I
    .param p1, "y"  # I
    .param p2, "w"  # I
    .param p3, "h"  # I

    .line 87
    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    .line 88
    .local v0, "potW":I
    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    .line 90
    .local v1, "potH":I
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/Pixmap;->createFromFrameBuffer(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    .line 91
    .local v2, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v3, v0, v1, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 92
    .local v3, "potPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 93
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 94
    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 95
    .local v6, "texture":Lcom/badlogic/gdx/graphics/Texture;
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x0

    neg-int v10, p3

    move-object v5, v4

    move v8, p3

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 96
    .local v4, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 97
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 99
    return-object v4
.end method
