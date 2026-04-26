.class Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;
.super Ljava/io/InputStream;
.source "VorbisFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/VorbisFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekableInputStream"
.end annotation


# instance fields
.field final mode:Ljava/lang/String;

.field raf:Ljava/io/RandomAccessFile;

.field final synthetic this$0:Lcom/jcraft/jorbis/VorbisFile;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/VorbisFile;Ljava/lang/String;)V
    .registers 4
    .param p2, "file"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1346
    iput-object p1, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->this$0:Lcom/jcraft/jorbis/VorbisFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1343
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 1344
    const-string p1, "r"

    iput-object p1, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->mode:Ljava/lang/String;

    .line 1347
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p2, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 1348
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1379
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1380
    return-void
.end method

.method public getLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1367
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .registers 2
    .param p1, "m"  # I

    monitor-enter p0

    .line 1383
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1351
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3
    .param p1, "buf"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .param p1, "buf"  # [B
    .param p2, "s"  # I
    .param p3, "len"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1359
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1386
    monitor-exit p0

    return-void
.end method

.method public seek(J)V
    .registers 4
    .param p1, "pos"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1393
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1394
    return-void
.end method

.method public skip(J)J
    .registers 5
    .param p1, "n"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1363
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public tell()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method
