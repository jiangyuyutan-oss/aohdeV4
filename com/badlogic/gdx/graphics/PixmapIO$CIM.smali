.class Lcom/badlogic/gdx/graphics/PixmapIO$CIM;
.super Ljava/lang/Object;
.source "PixmapIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/PixmapIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CIM"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x7d00

.field private static final readBuffer:[B

.field private static final writeBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 86
    const/16 v0, 0x7d00

    new-array v1, v0, [B

    sput-object v1, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    .line 87
    new-array v0, v0, [B

    sput-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 11
    .param p0, "file"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 126
    const/4 v0, 0x0

    .line 129
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 130
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 131
    .local v1, "width":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 132
    .local v2, "height":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->fromGdx2DPixmapFormat(I)Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    .line 133
    .local v3, "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    new-instance v4, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 135
    .local v4, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 136
    .local v5, "pixelBuf":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 137
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    sget-object v7, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    monitor-enter v7
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_61
    .catchall {:try_start_1 .. :try_end_3c} :catchall_5f

    .line 140
    const/4 v8, 0x0

    .line 141
    .local v8, "readBytes":I
    :goto_3d
    :try_start_3d
    sget-object v9, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->read([B)I

    move-result v9

    move v8, v9

    if-lez v9, :cond_4c

    .line 142
    sget-object v9, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    invoke-virtual {v5, v9, v6, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_3d

    .line 144
    .end local v8  # "readBytes":I
    :cond_4c
    monitor-exit v7
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_5c

    .line 146
    :try_start_4d
    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 147
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_57} :catch_61
    .catchall {:try_start_4d .. :try_end_57} :catchall_5f

    .line 148
    nop

    .line 152
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 148
    return-object v4

    .line 144
    :catchall_5c
    move-exception v6

    :try_start_5d
    monitor-exit v7
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    .end local v0  # "in":Ljava/io/DataInputStream;
    .end local p0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_5e
    throw v6
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5f} :catch_61
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 152
    .end local v1  # "width":I
    .end local v2  # "height":I
    .end local v3  # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v4  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v5  # "pixelBuf":Ljava/nio/ByteBuffer;
    .restart local v0  # "in":Ljava/io/DataInputStream;
    .restart local p0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catchall_5f
    move-exception v1

    goto :goto_81

    .line 149
    :catch_61
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    :try_start_62
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read Pixmap from file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0  # "in":Ljava/io/DataInputStream;
    .end local p0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    throw v2
    :try_end_81
    .catchall {:try_start_62 .. :try_end_81} :catchall_5f

    .line 152
    .end local v1  # "e":Ljava/lang/Exception;
    .restart local v0  # "in":Ljava/io/DataInputStream;
    .restart local p0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_81
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 11
    .param p0, "file"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "pixmap"  # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 90
    const/4 v0, 0x0

    .line 93
    .local v0, "out":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    .local v1, "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v3

    .line 95
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 97
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 99
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 100
    .local v3, "pixelBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 101
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 103
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    rem-int/lit16 v4, v4, 0x7d00

    .line 104
    .local v4, "remainingBytes":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    div-int/lit16 v5, v5, 0x7d00

    .line 106
    .local v5, "iterations":I
    sget-object v6, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    monitor-enter v6
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_77
    .catchall {:try_start_1 .. :try_end_47} :catchall_75

    .line 107
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_48
    if-ge v7, v5, :cond_57

    .line 108
    :try_start_4a
    sget-object v8, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 109
    sget-object v8, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 107
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    .line 112
    .end local v7  # "i":I
    :cond_57
    sget-object v7, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    invoke-virtual {v3, v7, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 113
    sget-object v7, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    invoke-virtual {v0, v7, v2, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 114
    monitor-exit v6
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_72

    .line 116
    :try_start_62
    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 117
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6c} :catch_77
    .catchall {:try_start_62 .. :try_end_6c} :catchall_75

    .line 121
    nop

    .end local v1  # "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    .end local v3  # "pixelBuf":Ljava/nio/ByteBuffer;
    .end local v4  # "remainingBytes":I
    .end local v5  # "iterations":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    nop

    .line 123
    return-void

    .line 114
    .restart local v1  # "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    .restart local v3  # "pixelBuf":Ljava/nio/ByteBuffer;
    .restart local v4  # "remainingBytes":I
    .restart local v5  # "iterations":I
    :catchall_72
    move-exception v2

    :try_start_73
    monitor-exit v6
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    .end local v0  # "out":Ljava/io/DataOutputStream;
    .end local p0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local p1  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :try_start_74
    throw v2
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_75} :catch_77
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 121
    .end local v1  # "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    .end local v3  # "pixelBuf":Ljava/nio/ByteBuffer;
    .end local v4  # "remainingBytes":I
    .end local v5  # "iterations":I
    .restart local v0  # "out":Ljava/io/DataOutputStream;
    .restart local p0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p1  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :catchall_75
    move-exception v1

    goto :goto_97

    .line 118
    :catch_77
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    :try_start_78
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write Pixmap to file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0  # "out":Ljava/io/DataOutputStream;
    .end local p0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local p1  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    throw v2
    :try_end_97
    .catchall {:try_start_78 .. :try_end_97} :catchall_75

    .line 121
    .end local v1  # "e":Ljava/lang/Exception;
    .restart local v0  # "out":Ljava/io/DataOutputStream;
    .restart local p0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p1  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_97
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
