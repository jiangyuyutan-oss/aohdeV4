.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;
.super Ljava/lang/Object;
.source "VertexBufferObjectWithVAO.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# static fields
.field static final tmpHandle:Ljava/nio/IntBuffer;


# instance fields
.field final attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field final buffer:Ljava/nio/FloatBuffer;

.field bufferHandle:I

.field final byteBuffer:Ljava/nio/ByteBuffer;

.field cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

.field isBound:Z

.field isDirty:Z

.field final isStatic:Z

.field final ownsBuffer:Z

.field final usage:I

.field vaoHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 5
    .param p1, "isStatic"  # Z
    .param p2, "numVertices"  # I
    .param p3, "attributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 47
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isBound:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    .line 71
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isStatic:Z

    .line 72
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->ownsBuffer:Z

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 79
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    .line 80
    if-eqz p1, :cond_44

    const v0, 0x88e4

    goto :goto_47

    :cond_44
    const v0, 0x88e8

    :goto_47
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->usage:I

    .line 81
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->createVAO()V

    .line 82
    return-void
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .registers 5
    .param p1, "isStatic"  # Z
    .param p2, "numVertices"  # I
    .param p3, "attributes"  # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 61
    return-void
.end method

.method public constructor <init>(ZLjava/nio/ByteBuffer;Lcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 6
    .param p1, "isStatic"  # Z
    .param p2, "unmanagedBuffer"  # Ljava/nio/ByteBuffer;
    .param p3, "attributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 47
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isBound:Z

    .line 48
    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    .line 49
    new-instance v1, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    .line 85
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isStatic:Z

    .line 86
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 88
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 89
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->ownsBuffer:Z

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 93
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    .line 94
    if-eqz p1, :cond_3a

    const v0, 0x88e4

    goto :goto_3d

    :cond_3a
    const v0, 0x88e8

    :goto_3d
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->usage:I

    .line 95
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->createVAO()V

    .line 96
    return-void
.end method

.method private bindAttributes(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .registers 15
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"  # [I

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 173
    .local v0, "stillValid":Z
    :goto_b
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    .line 175
    .local v3, "numAttributes":I
    if-eqz v0, :cond_56

    .line 176
    if-nez p2, :cond_35

    .line 177
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-eqz v0, :cond_56

    if-ge v4, v3, :cond_56

    .line 178
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    .line 179
    .local v5, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v6

    .line 180
    .local v6, "location":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_30

    move v7, v2

    goto :goto_31

    :cond_30
    move v7, v1

    :goto_31
    move v0, v7

    .line 177
    .end local v5  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v6  # "location":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 183
    .end local v4  # "i":I
    :cond_35
    array-length v4, p2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ne v4, v5, :cond_3e

    move v4, v2

    goto :goto_3f

    :cond_3e
    move v4, v1

    :goto_3f
    move v0, v4

    .line 184
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_41
    if-eqz v0, :cond_56

    if-ge v4, v3, :cond_56

    .line 185
    aget v5, p2, v4

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_51

    move v5, v2

    goto :goto_52

    :cond_51
    move v5, v1

    :goto_52
    move v0, v5

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 190
    .end local v4  # "i":I
    :cond_56
    if-nez v0, :cond_a8

    .line 191
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8892

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    invoke-interface {v1, v2, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 192
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->unbindAttributes(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6b
    if-ge v1, v3, :cond_a8

    .line 196
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    .line 197
    .local v2, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-nez p2, :cond_81

    .line 198
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v5, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_88

    .line 200
    :cond_81
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    aget v5, p2, v1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 203
    :goto_88
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v4

    .line 204
    .local v4, "location":I
    if-gez v4, :cond_91

    .line 205
    goto :goto_a5

    .line 208
    :cond_91
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 209
    iget v7, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v8, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v9, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v10, v5, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v11, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v5, p1

    move v6, v4

    invoke-virtual/range {v5 .. v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    .line 195
    .end local v2  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v4  # "location":I
    :goto_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 212
    .end local v1  # "i":I
    :cond_a8
    return-void
.end method

.method private bindData(Lcom/badlogic/gdx/graphics/GL20;)V
    .registers 6
    .param p1, "gl"  # Lcom/badlogic/gdx/graphics/GL20;

    .line 229
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    if-eqz v0, :cond_29

    .line 230
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    const v1, 0x8892

    invoke-interface {p1, v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->usage:I

    invoke-interface {p1, v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 235
    :cond_29
    return-void
.end method

.method private bufferChanged()V
    .registers 6

    .line 120
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isBound:Z

    if-eqz v0, :cond_20

    .line 121
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    const v2, 0x8892

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 122
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->usage:I

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 125
    :cond_20
    return-void
.end method

.method private createVAO()V
    .registers 4

    .line 281
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 282
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    .line 283
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    .line 284
    return-void
.end method

.method private deleteVAO()V
    .registers 5

    .line 287
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 288
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 289
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 290
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 291
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const/4 v2, 0x1

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteVertexArrays(ILjava/nio/IntBuffer;)V

    .line 292
    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    .line 294
    :cond_20
    return-void
.end method

.method private unbindAttributes(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 5
    .param p1, "shaderProgram"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_7

    .line 216
    return-void

    .line 218
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    .line 219
    .local v0, "numAttributes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1f

    .line 220
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    .line 221
    .local v2, "location":I
    if-gez v2, :cond_19

    .line 222
    goto :goto_1c

    .line 224
    :cond_19
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    .line 219
    .end local v2  # "location":I
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 226
    .end local v1  # "i":I
    :cond_1f
    return-void
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 3
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 155
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .registers 5
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"  # [I

    .line 159
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 161
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL30;
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL30;->glBindVertexArray(I)V

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bindAttributes(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 166
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bindData(Lcom/badlogic/gdx/graphics/GL20;)V

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isBound:Z

    .line 169
    return-void
.end method

.method public dispose()V
    .registers 4

    .line 269
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 271
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL30;
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL30;->glBindBuffer(II)V

    .line 272
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteBuffer(I)V

    .line 273
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    .line 274
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->ownsBuffer:Z

    if-eqz v1, :cond_19

    .line 275
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 277
    :cond_19
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->deleteVAO()V

    .line 278
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumMaxVertices()I
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .registers 2

    .line 259
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    .line 260
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->createVAO()V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 262
    return-void
.end method

.method public setVertices([FII)V
    .registers 6
    .param p1, "vertices"  # [F
    .param p2, "offset"  # I
    .param p3, "count"  # I

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferChanged()V

    .line 134
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 3
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 245
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .registers 5
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"  # [I

    .line 249
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 250
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL30;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL30;->glBindVertexArray(I)V

    .line 251
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isBound:Z

    .line 252
    return-void
.end method

.method public updateVertices(I[FII)V
    .registers 8
    .param p1, "targetOffset"  # I
    .param p2, "vertices"  # [F
    .param p3, "sourceOffset"  # I
    .param p4, "count"  # I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 140
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 144
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferChanged()V

    .line 145
    return-void
.end method
