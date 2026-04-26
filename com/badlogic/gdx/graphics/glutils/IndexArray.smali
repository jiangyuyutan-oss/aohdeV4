.class public Lcom/badlogic/gdx/graphics/glutils/IndexArray;
.super Ljava/lang/Object;
.source "IndexArray.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/IndexData;


# instance fields
.field final buffer:Ljava/nio/ShortBuffer;

.field final byteBuffer:Ljava/nio/ByteBuffer;

.field private final empty:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxIndices"  # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->empty:Z

    .line 38
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->empty:Z

    if-eqz v0, :cond_f

    .line 39
    const/4 p1, 0x1

    .line 42
    :cond_f
    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 46
    return-void
.end method


# virtual methods
.method public bind()V
    .registers 1

    .line 109
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 122
    return-void
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->empty:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    :goto_c
    return v0
.end method

.method public getNumMaxIndices()I
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->empty:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    :goto_c
    return v0
.end method

.method public invalidate()V
    .registers 1

    .line 117
    return-void
.end method

.method public setIndices(Ljava/nio/ShortBuffer;)V
    .registers 5
    .param p1, "indices"  # Ljava/nio/ShortBuffer;

    .line 79
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    .line 80
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 81
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 83
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 84
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 86
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 87
    return-void
.end method

.method public setIndices([SII)V
    .registers 6
    .param p1, "indices"  # [S
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 76
    return-void
.end method

.method public unbind()V
    .registers 1

    .line 113
    return-void
.end method

.method public updateIndices(I[SII)V
    .registers 8
    .param p1, "targetOffset"  # I
    .param p2, "indices"  # [S
    .param p3, "offset"  # I
    .param p4, "count"  # I

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 92
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 93
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, v1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([SILjava/nio/Buffer;I)V

    .line 94
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 95
    return-void
.end method
