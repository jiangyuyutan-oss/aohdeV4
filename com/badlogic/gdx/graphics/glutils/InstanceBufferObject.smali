.class public Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;
.super Ljava/lang/Object;
.source "InstanceBufferObject.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/InstanceData;


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
.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 6
    .param p1, "isStatic"  # Z
    .param p2, "numVertices"  # I
    .param p3, "instanceAttributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 45
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    .line 52
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v1, :cond_2f

    .line 55
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferHandle:I

    .line 57
    iget v1, p3, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v1, p2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 58
    .local v1, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p3}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->setBuffer(Ljava/nio/Buffer;ZLcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 60
    if-eqz p1, :cond_28

    const v0, 0x88e4

    goto :goto_2b

    :cond_28
    const v0, 0x88e8

    :goto_2b
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->setUsage(I)V

    .line 61
    return-void

    .line 53
    .end local v1  # "data":Ljava/nio/ByteBuffer;
    :cond_2f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "InstanceBufferObject requires a device running with GLES 3.0 compatibilty"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .registers 5
    .param p1, "isStatic"  # Z
    .param p2, "numVertices"  # I
    .param p3, "attributes"  # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 49
    return-void
.end method

.method private bufferChanged()V
    .registers 6

    .line 111
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    if-eqz v0, :cond_27

    .line 112
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->usage:I

    const v4, 0x8892

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 113
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->usage:I

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 116
    :cond_27
    return-void
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 3
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 185
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .registers 19
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"  # [I

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    sget-object v9, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 191
    .local v9, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferHandle:I

    const v2, 0x8892

    invoke-interface {v9, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 192
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    if-eqz v1, :cond_2f

    .line 193
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 194
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->usage:I

    invoke-interface {v9, v2, v1, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 195
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 198
    :cond_2f
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    .line 199
    .local v10, "numAttributes":I
    const/4 v11, 0x1

    if-nez p2, :cond_70

    .line 200
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_3a
    if-ge v12, v10, :cond_6f

    .line 201
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    .line 202
    .local v13, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v1, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v14

    .line 203
    .local v14, "location":I
    if-gez v14, :cond_4b

    .line 204
    goto :goto_6c

    .line 205
    :cond_4b
    iget v15, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 206
    .local v15, "unitOffset":I
    add-int v1, v14, v15

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 208
    add-int v2, v14, v15

    iget v3, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v4, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v5, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v6, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v7, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    .line 209
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    add-int v2, v14, v15

    invoke-interface {v1, v2, v11}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribDivisor(II)V

    .line 200
    .end local v13  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v14  # "location":I
    .end local v15  # "unitOffset":I
    :goto_6c
    add-int/lit8 v12, v12, 0x1

    goto :goto_3a

    .end local v12  # "i":I
    :cond_6f
    goto :goto_a3

    .line 213
    :cond_70
    const/4 v1, 0x0

    move v12, v1

    .restart local v12  # "i":I
    :goto_72
    if-ge v12, v10, :cond_a3

    .line 214
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    .line 215
    .restart local v13  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    aget v14, p2, v12

    .line 216
    .restart local v14  # "location":I
    if-gez v14, :cond_7f

    .line 217
    goto :goto_a0

    .line 218
    :cond_7f
    iget v15, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 219
    .restart local v15  # "unitOffset":I
    add-int v1, v14, v15

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 221
    add-int v2, v14, v15

    iget v3, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v4, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v5, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v6, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v7, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    .line 222
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    add-int v2, v14, v15

    invoke-interface {v1, v2, v11}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribDivisor(II)V

    .line 213
    .end local v13  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v14  # "location":I
    .end local v15  # "unitOffset":I
    :goto_a0
    add-int/lit8 v12, v12, 0x1

    goto :goto_72

    .line 225
    .end local v12  # "i":I
    :cond_a3
    :goto_a3
    iput-boolean v11, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    .line 226
    return-void
.end method

.method public dispose()V
    .registers 4

    .line 279
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 280
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 281
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    .line 282
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferHandle:I

    .line 283
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->ownsBuffer:Z

    if-eqz v1, :cond_19

    .line 284
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 285
    :cond_19
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumInstances()I
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumMaxInstances()I
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected getUsage()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->usage:I

    return v0
.end method

.method public invalidate()V
    .registers 2

    .line 270
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferHandle:I

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 272
    return-void
.end method

.method protected setBuffer(Ljava/nio/Buffer;ZLcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 7
    .param p1, "data"  # Ljava/nio/Buffer;
    .param p2, "ownsBuffer"  # Z
    .param p3, "value"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 92
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    if-nez v0, :cond_4c

    .line 94
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->ownsBuffer:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_11

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 96
    :cond_11
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 97
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_44

    .line 98
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 101
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->ownsBuffer:Z

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 104
    .local v0, "l":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 105
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 107
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    div-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 108
    return-void

    .line 100
    .end local v0  # "l":I
    :cond_44
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Only ByteBuffer is currently supported"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_4c
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot change attributes while VBO is bound"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstanceData(Ljava/nio/FloatBuffer;I)V
    .registers 5
    .param p1, "data"  # Ljava/nio/FloatBuffer;
    .param p2, "count"  # I

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferChanged()V

    .line 134
    return-void
.end method

.method public setInstanceData([FII)V
    .registers 6
    .param p1, "data"  # [F
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 124
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferChanged()V

    .line 125
    return-void
.end method

.method protected setUsage(I)V
    .registers 4
    .param p1, "value"  # I

    .line 172
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    if-nez v0, :cond_7

    .line 174
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->usage:I

    .line 175
    return-void

    .line 173
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot change usage while VBO is bound"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 3
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 236
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .registers 10
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"  # [I

    .line 240
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 241
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    .line 242
    .local v1, "numAttributes":I
    if-nez p2, :cond_27

    .line 243
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_26

    .line 244
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 245
    .local v3, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v4

    .line 246
    .local v4, "location":I
    if-gez v4, :cond_1c

    .line 247
    goto :goto_23

    .line 248
    :cond_1c
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 249
    .local v5, "unitOffset":I
    add-int v6, v4, v5

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    .line 243
    .end local v3  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v4  # "location":I
    .end local v5  # "unitOffset":I
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .end local v2  # "i":I
    :cond_26
    goto :goto_3f

    .line 252
    :cond_27
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_28
    if-ge v2, v1, :cond_3f

    .line 253
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 254
    .restart local v3  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    aget v4, p2, v2

    .line 255
    .restart local v4  # "location":I
    if-gez v4, :cond_35

    .line 256
    goto :goto_3c

    .line 257
    :cond_35
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 258
    .restart local v5  # "unitOffset":I
    add-int v6, v4, v5

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    .line 252
    .end local v3  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v4  # "location":I
    .end local v5  # "unitOffset":I
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 261
    .end local v2  # "i":I
    :cond_3f
    :goto_3f
    const v2, 0x8892

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 262
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    .line 263
    return-void
.end method

.method public updateInstanceData(ILjava/nio/FloatBuffer;II)V
    .registers 8
    .param p1, "targetOffset"  # I
    .param p2, "data"  # Ljava/nio/FloatBuffer;
    .param p3, "sourceOffset"  # I
    .param p4, "count"  # I

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 151
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 152
    mul-int/lit8 v1, p3, 0x4

    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 153
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, v1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 154
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 155
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 156
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferChanged()V

    .line 157
    return-void
.end method

.method public updateInstanceData(I[FII)V
    .registers 8
    .param p1, "targetOffset"  # I
    .param p2, "data"  # [F
    .param p3, "sourceOffset"  # I
    .param p4, "count"  # I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 140
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 144
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferChanged()V

    .line 145
    return-void
.end method
