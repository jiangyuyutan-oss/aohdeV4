.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;
.super Ljava/lang/Object;
.source "VertexBufferObject.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# instance fields
.field private attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private buffer:Ljava/nio/FloatBuffer;

.field private bufferHandle:I

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z

.field isDirty:Z

.field private ownsBuffer:Z

.field private usage:I


# direct methods
.method protected constructor <init>(ILjava/nio/ByteBuffer;ZLcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 6
    .param p1, "usage"  # I
    .param p2, "data"  # Ljava/nio/ByteBuffer;
    .param p3, "ownsBuffer"  # Z
    .param p4, "attributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 49
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 75
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    .line 77
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->setBuffer(Ljava/nio/Buffer;ZLcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->setUsage(I)V

    .line 79
    return-void
.end method

.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 6
    .param p1, "isStatic"  # Z
    .param p2, "numVertices"  # I
    .param p3, "attributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 49
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 66
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    .line 68
    iget v1, p3, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v1, p2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 69
    .local v1, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p3}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->setBuffer(Ljava/nio/Buffer;ZLcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 71
    if-eqz p1, :cond_24

    const v0, 0x88e4

    goto :goto_27

    :cond_24
    const v0, 0x88e8

    :goto_27
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->setUsage(I)V

    .line 72
    return-void
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .registers 5
    .param p1, "isStatic"  # Z
    .param p2, "numVertices"  # I
    .param p3, "attributes"  # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 58
    return-void
.end method

.method private bufferChanged()V
    .registers 6

    .line 125
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    if-eqz v0, :cond_19

    .line 126
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    const v4, 0x8892

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 129
    :cond_19
    return-void
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 3
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 169
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .registers 15
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"  # [I

    .line 173
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 175
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    const v2, 0x8892

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 176
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    if-eqz v1, :cond_2b

    .line 177
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 178
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 179
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 182
    :cond_2b
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    .line 183
    .local v1, "numAttributes":I
    if-nez p2, :cond_5d

    .line 184
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    if-ge v2, v1, :cond_5c

    .line 185
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 186
    .local v3, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v4

    .line 187
    .local v4, "location":I
    if-gez v4, :cond_45

    goto :goto_59

    .line 188
    :cond_45
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 190
    iget v7, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v8, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v9, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v10, v5, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v11, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v5, p1

    move v6, v4

    invoke-virtual/range {v5 .. v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    .line 184
    .end local v3  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v4  # "location":I
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .end local v2  # "i":I
    :cond_5c
    goto :goto_82

    .line 195
    :cond_5d
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_5e
    if-ge v2, v1, :cond_82

    .line 196
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 197
    .restart local v3  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    aget v11, p2, v2

    .line 198
    .local v11, "location":I
    if-gez v11, :cond_6b

    goto :goto_7f

    .line 199
    :cond_6b
    invoke-virtual {p1, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 201
    iget v6, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v7, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v8, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v9, v4, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v10, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v4, p1

    move v5, v11

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    .line 195
    .end local v3  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v11  # "location":I
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 205
    .end local v2  # "i":I
    :cond_82
    :goto_82
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 206
    return-void
.end method

.method public dispose()V
    .registers 4

    .line 244
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 245
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 246
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    .line 247
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    .line 248
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->ownsBuffer:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 249
    :cond_19
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumMaxVertices()I
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected getUsage()I
    .registers 2

    .line 154
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    return v0
.end method

.method public invalidate()V
    .registers 2

    .line 237
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 239
    return-void
.end method

.method protected setBuffer(Ljava/nio/Buffer;ZLcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 7
    .param p1, "data"  # Ljava/nio/Buffer;
    .param p2, "ownsBuffer"  # Z
    .param p3, "value"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 107
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    if-nez v0, :cond_4c

    .line 108
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->ownsBuffer:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_11

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 110
    :cond_11
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 111
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_44

    .line 112
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 115
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->ownsBuffer:Z

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 118
    .local v0, "l":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 119
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    .line 120
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 121
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    div-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 122
    return-void

    .line 114
    .end local v0  # "l":I
    :cond_44
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Only ByteBuffer is currently supported"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_4c
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot change attributes while VBO is bound"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setUsage(I)V
    .registers 4
    .param p1, "value"  # I

    .line 160
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    if-nez v0, :cond_7

    .line 161
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    .line 162
    return-void

    .line 160
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot change usage while VBO is bound"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVertices([FII)V
    .registers 6
    .param p1, "vertices"  # [F
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 137
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferChanged()V

    .line 138
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 3
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 214
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .registers 7
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"  # [I

    .line 218
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 219
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    .line 220
    .local v1, "numAttributes":I
    if-nez p2, :cond_1c

    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1b

    .line 222
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(Ljava/lang/String;)V

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .end local v2  # "i":I
    :cond_1b
    goto :goto_29

    .line 225
    :cond_1c
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_1d
    if-ge v2, v1, :cond_29

    .line 226
    aget v3, p2, v2

    .line 227
    .local v3, "location":I
    if-ltz v3, :cond_26

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    .line 225
    .end local v3  # "location":I
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 230
    .end local v2  # "i":I
    :cond_29
    :goto_29
    const v2, 0x8892

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 231
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 232
    return-void
.end method

.method public updateVertices(I[FII)V
    .registers 8
    .param p1, "targetOffset"  # I
    .param p2, "vertices"  # [F
    .param p3, "sourceOffset"  # I
    .param p4, "count"  # I

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 144
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 145
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    .line 146
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 148
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferChanged()V

    .line 149
    return-void
.end method
