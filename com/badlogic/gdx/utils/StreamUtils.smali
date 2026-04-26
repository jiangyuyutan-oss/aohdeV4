.class public final Lcom/badlogic/gdx/utils/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final EMPTY_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/badlogic/gdx/utils/StreamUtils;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"  # Ljava/io/Closeable;

    .line 123
    if-eqz p0, :cond_7

    .line 125
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 127
    goto :goto_7

    .line 126
    :catchall_6
    move-exception v0

    .line 129
    :cond_7
    :goto_7
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;[B)I
    .registers 8
    .param p0, "input"  # Ljava/io/InputStream;
    .param p1, "output"  # Ljava/nio/ByteBuffer;
    .param p2, "buffer"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "startPosition":I
    const/4 v1, 0x0

    .line 74
    .local v1, "total":I
    :goto_5
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "bytesRead":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_18

    .line 75
    const/4 v2, 0x0

    invoke-static {p2, v2, p1, v3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    .line 76
    add-int/2addr v1, v3

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5

    .line 79
    :cond_18
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 80
    return v1
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p0, "input"  # Ljava/io/InputStream;
    .param p1, "output"  # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 38
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 4
    .param p0, "input"  # Ljava/io/InputStream;
    .param p1, "output"  # Ljava/io/OutputStream;
    .param p2, "bufferSize"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-array v0, p2, [B

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 44
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .registers 6
    .param p0, "input"  # Ljava/io/InputStream;
    .param p1, "output"  # Ljava/io/OutputStream;
    .param p2, "buffer"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    nop

    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v1, v0

    .local v1, "bytesRead":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 53
    :cond_e
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "input"  # Ljava/io/InputStream;
    .param p1, "output"  # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;[B)I

    .line 59
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;I)V
    .registers 4
    .param p0, "input"  # Ljava/io/InputStream;
    .param p1, "output"  # Ljava/nio/ByteBuffer;
    .param p2, "bufferSize"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-array v0, p2, [B

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;[B)I

    .line 65
    return-void
.end method

.method public static copyStreamToByteArray(Ljava/io/InputStream;)[B
    .registers 2
    .param p0, "input"  # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyStreamToByteArray(Ljava/io/InputStream;I)[B
    .registers 4
    .param p0, "input"  # Ljava/io/InputStream;
    .param p1, "estimatedSize"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;-><init>(I)V

    .line 92
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static copyStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .param p0, "input"  # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyStreamToString(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 3
    .param p0, "input"  # Ljava/io/InputStream;
    .param p1, "estimatedSize"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyStreamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "input"  # Ljava/io/InputStream;
    .param p1, "estimatedSize"  # I
    .param p2, "charset"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/io/InputStreamReader;

    if-nez p2, :cond_8

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_b

    :cond_8
    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 112
    .local v0, "reader":Ljava/io/InputStreamReader;
    :goto_b
    new-instance v1, Ljava/io/StringWriter;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 113
    .local v1, "writer":Ljava/io/StringWriter;
    const/16 v3, 0x1000

    new-array v3, v3, [C

    .line 115
    .local v3, "buffer":[C
    :goto_19
    invoke-virtual {v0, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    move v5, v4

    .local v5, "charsRead":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_25

    .line 116
    invoke-virtual {v1, v3, v2, v5}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_19

    .line 118
    :cond_25
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
