.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Library"
.end annotation


# instance fields
.field fontData:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "address"  # J

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/LongMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    .line 67
    return-void
.end method

.method private static native doneFreeType(J)V
.end method

.method private static native newMemoryFace(JLjava/nio/ByteBuffer;II)J
.end method

.method private static native strokerNew(J)J
.end method


# virtual methods
.method public createStroker()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .registers 6

    .line 142
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->strokerNew(J)J

    move-result-wide v0

    .line 143
    .local v0, "stroker":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 144
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;-><init>(J)V

    return-object v2

    .line 143
    :cond_12
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create FreeType stroker, FreeType error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public dispose()V
    .registers 4

    .line 71
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->doneFreeType(J)V

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 73
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 74
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 75
    .end local v1  # "buffer":Ljava/nio/ByteBuffer;
    :cond_24
    goto :goto_f

    .line 76
    :cond_25
    return-void
.end method

.method public newFace(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .registers 9
    .param p1, "fontFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "faceIndex"  # I

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :try_start_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->map()Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 88
    goto :goto_8

    .line 86
    :catch_7
    move-exception v1

    .line 89
    :goto_8
    if-nez v0, :cond_40

    .line 90
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    .line 92
    .local v1, "input":Ljava/io/InputStream;
    :try_start_e
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v2

    long-to-int v2, v2

    .line 93
    .local v2, "fileSize":I
    if-nez v2, :cond_27

    .line 95
    const/16 v3, 0x4000

    invoke-static {v1, v3}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object v3

    .line 96
    .local v3, "data":[B
    array-length v4, v3

    invoke-static {v4}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v0, v4

    .line 97
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    .line 98
    .end local v3  # "data":[B
    goto :goto_2f

    .line 100
    :cond_27
    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v3

    .line 101
    invoke-static {v1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2f} :catch_35
    .catchall {:try_start_e .. :try_end_2f} :catchall_33

    .line 106
    .end local v2  # "fileSize":I
    :goto_2f
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 107
    goto :goto_40

    .line 106
    :catchall_33
    move-exception v2

    goto :goto_3c

    .line 103
    :catch_35
    move-exception v2

    .line 104
    .local v2, "ex":Ljava/io/IOException;
    :try_start_36
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0  # "buffer":Ljava/nio/ByteBuffer;
    .end local v1  # "input":Ljava/io/InputStream;
    .end local p1  # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local p2  # "faceIndex":I
    throw v3
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_33

    .line 106
    .end local v2  # "ex":Ljava/io/IOException;
    .restart local v0  # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1  # "input":Ljava/io/InputStream;
    .restart local p1  # "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p2  # "faceIndex":I
    :goto_3c
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 109
    .end local v1  # "input":Ljava/io/InputStream;
    :cond_40
    :goto_40
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-result-object v1

    return-object v1
.end method

.method public newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .registers 8
    .param p1, "buffer"  # Ljava/nio/ByteBuffer;
    .param p2, "faceIndex"  # I

    .line 119
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(JLjava/nio/ByteBuffer;II)J

    move-result-wide v0

    .line 120
    .local v0, "face":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_36

    .line 121
    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 122
    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 123
    :cond_19
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load font, FreeType error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_36
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-direct {v2, v0, v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;-><init>(JLcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;)V

    return-object v2
.end method

.method public newMemoryFace([BII)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .registers 7
    .param p1, "data"  # [B
    .param p2, "dataSize"  # I
    .param p3, "faceIndex"  # I

    .line 113
    array-length v0, p1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    .line 115
    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-result-object v1

    return-object v1
.end method
