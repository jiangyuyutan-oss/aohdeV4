.class public Lcom/jcraft/jorbis/VorbisFile;
.super Ljava/lang/Object;
.source "VorbisFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;
    }
.end annotation


# static fields
.field static final CHUNKSIZE:I = 0x2134

.field static final OV_EBADHEADER:I = -0x85

.field static final OV_EBADLINK:I = -0x89

.field static final OV_EBADPACKET:I = -0x88

.field static final OV_EFAULT:I = -0x81

.field static final OV_EIMPL:I = -0x82

.field static final OV_EINVAL:I = -0x83

.field static final OV_ENOSEEK:I = -0x8a

.field static final OV_ENOTAUDIO:I = -0x87

.field static final OV_ENOTVORBIS:I = -0x84

.field static final OV_EOF:I = -0x2

.field static final OV_EREAD:I = -0x80

.field static final OV_EVERSION:I = -0x86

.field static final OV_FALSE:I = -0x1

.field static final OV_HOLE:I = -0x3

.field static final SEEK_CUR:I = 0x1

.field static final SEEK_END:I = 0x2

.field static final SEEK_SET:I


# instance fields
.field bittrack:F

.field current_link:I

.field current_serialno:I

.field dataoffsets:[J

.field datasource:Ljava/io/InputStream;

.field decode_ready:Z

.field end:J

.field links:I

.field offset:J

.field offsets:[J

.field os:Lcom/jcraft/jogg/StreamState;

.field oy:Lcom/jcraft/jogg/SyncState;

.field pcm_offset:J

.field pcmlengths:[J

.field samptrack:F

.field seekable:Z

.field serialnos:[I

.field vb:Lcom/jcraft/jorbis/Block;

.field vc:[Lcom/jcraft/jorbis/Comment;

.field vd:Lcom/jcraft/jorbis/DspState;

.field vi:[Lcom/jcraft/jorbis/Info;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[BI)V
    .registers 6
    .param p1, "is"  # Ljava/io/InputStream;
    .param p2, "initial"  # [B
    .param p3, "ibytes"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jorbis/JOrbisException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    .line 62
    new-instance v1, Lcom/jcraft/jogg/SyncState;

    invoke-direct {v1}, Lcom/jcraft/jogg/SyncState;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    .line 74
    iput-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    .line 82
    new-instance v0, Lcom/jcraft/jogg/StreamState;

    invoke-direct {v0}, Lcom/jcraft/jogg/StreamState;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    .line 84
    new-instance v0, Lcom/jcraft/jorbis/DspState;

    invoke-direct {v0}, Lcom/jcraft/jorbis/DspState;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    .line 86
    new-instance v0, Lcom/jcraft/jorbis/Block;

    iget-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-direct {v0, v1}, Lcom/jcraft/jorbis/Block;-><init>(Lcom/jcraft/jorbis/DspState;)V

    iput-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vb:Lcom/jcraft/jorbis/Block;

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jorbis/VorbisFile;->open(Ljava/io/InputStream;[BI)I

    move-result v0

    .line 119
    .local v0, "ret":I
    nop

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "file"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jorbis/JOrbisException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    .line 62
    new-instance v1, Lcom/jcraft/jogg/SyncState;

    invoke-direct {v1}, Lcom/jcraft/jogg/SyncState;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    .line 74
    iput-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    .line 82
    new-instance v1, Lcom/jcraft/jogg/StreamState;

    invoke-direct {v1}, Lcom/jcraft/jogg/StreamState;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    .line 84
    new-instance v1, Lcom/jcraft/jorbis/DspState;

    invoke-direct {v1}, Lcom/jcraft/jorbis/DspState;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    .line 86
    new-instance v1, Lcom/jcraft/jorbis/Block;

    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-direct {v1, v2}, Lcom/jcraft/jorbis/Block;-><init>(Lcom/jcraft/jorbis/DspState;)V

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vb:Lcom/jcraft/jorbis/Block;

    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, "is":Ljava/io/InputStream;
    :try_start_27
    new-instance v2, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;

    invoke-direct {v2, p0, p1}, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;-><init>(Lcom/jcraft/jorbis/VorbisFile;Ljava/lang/String;)V

    move-object v1, v2

    .line 95
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jorbis/VorbisFile;->open(Ljava/io/InputStream;[BI)I

    move-result v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_4a
    .catchall {:try_start_27 .. :try_end_32} :catchall_48

    .line 96
    .local v0, "ret":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_40

    .line 104
    .end local v0  # "ret":I
    nop

    .line 106
    :try_start_36
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 110
    :goto_39
    goto :goto_3f

    .line 108
    :catch_3a
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0  # "e":Ljava/io/IOException;
    goto :goto_39

    .line 113
    :goto_3f
    return-void

    .line 97
    .local v0, "ret":I
    :cond_40
    :try_start_40
    new-instance v2, Lcom/jcraft/jorbis/JOrbisException;

    const-string v3, "VorbisFile: open return -1"

    invoke-direct {v2, v3}, Lcom/jcraft/jorbis/JOrbisException;-><init>(Ljava/lang/String;)V

    .end local v1  # "is":Ljava/io/InputStream;
    .end local p1  # "file":Ljava/lang/String;
    throw v2
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_4a
    .catchall {:try_start_40 .. :try_end_48} :catchall_48

    .line 104
    .end local v0  # "ret":I
    .restart local v1  # "is":Ljava/io/InputStream;
    .restart local p1  # "file":Ljava/lang/String;
    :catchall_48
    move-exception v0

    goto :goto_68

    .line 100
    :catch_4a
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4b
    new-instance v2, Lcom/jcraft/jorbis/JOrbisException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VorbisFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jorbis/JOrbisException;-><init>(Ljava/lang/String;)V

    .end local v1  # "is":Ljava/io/InputStream;
    .end local p1  # "file":Ljava/lang/String;
    throw v2
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_48

    .line 104
    .end local v0  # "e":Ljava/lang/Exception;
    .restart local v1  # "is":Ljava/io/InputStream;
    .restart local p1  # "file":Ljava/lang/String;
    :goto_68
    if-eqz v1, :cond_72

    .line 106
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 110
    goto :goto_72

    .line 108
    :catch_6e
    move-exception v2

    .line 109
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    .end local v2  # "e":Ljava/io/IOException;
    :cond_72
    :goto_72
    throw v0
.end method

.method static fseek(Ljava/io/InputStream;JI)I
    .registers 8
    .param p0, "fis"  # Ljava/io/InputStream;
    .param p1, "off"  # J
    .param p3, "whence"  # I

    .line 623
    instance-of v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 624
    move-object v0, p0

    check-cast v0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;

    .line 626
    .local v0, "sis":Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;
    if-nez p3, :cond_10

    .line 627
    :try_start_a
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->seek(J)V

    goto :goto_1b

    .line 635
    :catch_e
    move-exception v2

    goto :goto_1c

    .line 629
    :cond_10
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1b

    .line 630
    invoke-virtual {v0}, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->seek(J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_e

    .line 636
    :cond_1b
    :goto_1b
    nop

    .line 637
    :goto_1c
    return v1

    .line 640
    .end local v0  # "sis":Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;
    :cond_1d
    if-nez p3, :cond_22

    .line 641
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 643
    :cond_22
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_27

    .line 647
    nop

    .line 648
    return v1

    .line 645
    :catch_27
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method static ftell(Ljava/io/InputStream;)J
    .registers 4
    .param p0, "fis"  # Ljava/io/InputStream;

    .line 653
    :try_start_0
    instance-of v0, p0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;

    if-eqz v0, :cond_c

    .line 654
    move-object v0, p0

    check-cast v0, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;

    .line 655
    .local v0, "sis":Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;
    invoke-virtual {v0}, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;->tell()J

    move-result-wide v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    return-wide v1

    .line 659
    .end local v0  # "sis":Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;
    :cond_c
    goto :goto_e

    .line 658
    :catch_d
    move-exception v0

    .line 660
    :goto_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private get_data()I
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    const/16 v1, 0x2134

    invoke-virtual {v0, v1}, Lcom/jcraft/jogg/SyncState;->buffer(I)I

    move-result v0

    .line 125
    .local v0, "index":I
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    iget-object v2, v2, Lcom/jcraft/jogg/SyncState;->data:[B

    .line 126
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 128
    .local v3, "bytes":I
    :try_start_d
    iget-object v4, p0, Lcom/jcraft/jorbis/VorbisFile;->datasource:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_1e

    .line 132
    .end local v3  # "bytes":I
    .local v1, "bytes":I
    nop

    .line 133
    iget-object v3, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v3, v1}, Lcom/jcraft/jogg/SyncState;->wrote(I)I

    .line 134
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1d

    .line 135
    const/4 v1, 0x0

    .line 137
    :cond_1d
    return v1

    .line 130
    .end local v1  # "bytes":I
    .restart local v3  # "bytes":I
    :catch_1e
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    const/16 v4, -0x80

    return v4
.end method

.method private get_next_page(Lcom/jcraft/jogg/Page;J)I
    .registers 11
    .param p1, "page"  # Lcom/jcraft/jogg/Page;
    .param p2, "boundary"  # J

    .line 147
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_9

    .line 148
    iget-wide v2, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    add-long/2addr p2, v2

    .line 151
    :cond_9
    :goto_9
    cmp-long v2, p2, v0

    const/4 v3, -0x1

    if-lez v2, :cond_15

    iget-wide v4, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    cmp-long v2, v4, p2

    if-ltz v2, :cond_15

    .line 152
    return v3

    .line 153
    :cond_15
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v2, p1}, Lcom/jcraft/jogg/SyncState;->pageseek(Lcom/jcraft/jogg/Page;)I

    move-result v2

    .line 154
    .local v2, "more":I
    if-gez v2, :cond_24

    .line 155
    iget-wide v3, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    goto :goto_39

    .line 158
    :cond_24
    if-nez v2, :cond_3a

    .line 159
    cmp-long v4, p2, v0

    if-nez v4, :cond_2b

    .line 160
    return v3

    .line 161
    :cond_2b
    invoke-direct {p0}, Lcom/jcraft/jorbis/VorbisFile;->get_data()I

    move-result v3

    .line 162
    .local v3, "ret":I
    if-nez v3, :cond_33

    .line 163
    const/4 v0, -0x2

    return v0

    .line 164
    :cond_33
    if-gez v3, :cond_38

    .line 165
    const/16 v0, -0x80

    return v0

    .line 166
    .end local v3  # "ret":I
    :cond_38
    nop

    .line 173
    .end local v2  # "more":I
    :goto_39
    goto :goto_9

    .line 168
    .restart local v2  # "more":I
    :cond_3a
    iget-wide v0, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    long-to-int v0, v0

    .line 169
    .local v0, "ret":I
    iget-wide v3, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    .line 170
    return v0
.end method

.method private get_prev_page(Lcom/jcraft/jogg/Page;)I
    .registers 12
    .param p1, "page"  # Lcom/jcraft/jogg/Page;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jorbis/JOrbisException;
        }
    .end annotation

    .line 177
    iget-wide v0, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    .line 179
    .local v0, "begin":J
    const/4 v2, -0x1

    .line 180
    .local v2, "offst":I
    :cond_3
    :goto_3
    const/4 v3, -0x1

    const-wide/16 v4, 0x2134

    if-ne v2, v3, :cond_37

    .line 181
    sub-long/2addr v0, v4

    .line 182
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_11

    .line 183
    const-wide/16 v0, 0x0

    .line 184
    :cond_11
    invoke-direct {p0, v0, v1}, Lcom/jcraft/jorbis/VorbisFile;->seek_helper(J)V

    .line 185
    :goto_14
    iget-wide v6, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    add-long v8, v0, v4

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 186
    add-long v6, v0, v4

    iget-wide v8, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    sub-long/2addr v6, v8

    invoke-direct {p0, p1, v6, v7}, Lcom/jcraft/jorbis/VorbisFile;->get_next_page(Lcom/jcraft/jogg/Page;J)I

    move-result v6

    .line 187
    .local v6, "ret":I
    const/16 v7, -0x80

    if-ne v6, v7, :cond_2a

    .line 188
    return v7

    .line 190
    :cond_2a
    if-gez v6, :cond_35

    .line 191
    if-eq v2, v3, :cond_2f

    goto :goto_3

    .line 192
    :cond_2f
    new-instance v3, Lcom/jcraft/jorbis/JOrbisException;

    invoke-direct {v3}, Lcom/jcraft/jorbis/JOrbisException;-><init>()V

    throw v3

    .line 196
    :cond_35
    move v2, v6

    goto :goto_14

    .line 200
    .end local v6  # "ret":I
    :cond_37
    int-to-long v6, v2

    invoke-direct {p0, v6, v7}, Lcom/jcraft/jorbis/VorbisFile;->seek_helper(J)V

    .line 201
    invoke-direct {p0, p1, v4, v5}, Lcom/jcraft/jorbis/VorbisFile;->get_next_page(Lcom/jcraft/jogg/Page;J)I

    move-result v3

    .line 202
    .local v3, "ret":I
    if-gez v3, :cond_44

    .line 203
    const/16 v4, -0x81

    return v4

    .line 205
    :cond_44
    return v2
.end method

.method private make_decode_ready()I
    .registers 5

    .line 377
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 378
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 379
    :cond_8
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/jcraft/jorbis/DspState;->synthesis_init(Lcom/jcraft/jorbis/Info;)I

    .line 380
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vb:Lcom/jcraft/jorbis/Block;

    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v0, v2}, Lcom/jcraft/jorbis/Block;->init(Lcom/jcraft/jorbis/DspState;)V

    .line 381
    iput-boolean v1, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    .line 382
    return v3
.end method

.method private seek_helper(J)V
    .registers 5
    .param p1, "offst"  # J

    .line 141
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->datasource:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/jcraft/jorbis/VorbisFile;->fseek(Ljava/io/InputStream;JI)I

    .line 142
    iput-wide p1, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    .line 143
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v0}, Lcom/jcraft/jogg/SyncState;->reset()I

    .line 144
    return-void
.end method


# virtual methods
.method bisect_forward_serialno(JJJII)I
    .registers 30
    .param p1, "begin"  # J
    .param p3, "searched"  # J
    .param p5, "end"  # J
    .param p7, "currentno"  # I
    .param p8, "m"  # I

    .line 210
    move-object/from16 v9, p0

    move-wide/from16 v0, p5

    .line 211
    .local v0, "endsearched":J
    move-wide/from16 v2, p5

    .line 212
    .local v2, "next":J
    new-instance v4, Lcom/jcraft/jogg/Page;

    invoke-direct {v4}, Lcom/jcraft/jogg/Page;-><init>()V

    move-object v10, v4

    move-wide/from16 v11, p3

    move-wide v13, v0

    move-wide v7, v2

    .line 215
    .end local v0  # "endsearched":J
    .end local v2  # "next":J
    .end local p3  # "searched":J
    .local v7, "next":J
    .local v10, "page":Lcom/jcraft/jogg/Page;
    .local v11, "searched":J
    .local v13, "endsearched":J
    :goto_10
    cmp-long v0, v11, v13

    const-wide/16 v1, -0x1

    const/16 v15, -0x80

    if-gez v0, :cond_50

    .line 217
    sub-long v3, v13, v11

    const-wide/16 v5, 0x2134

    cmp-long v0, v3, v5

    if-gez v0, :cond_22

    .line 218
    move-wide v3, v11

    .local v3, "bisect":J
    goto :goto_27

    .line 221
    .end local v3  # "bisect":J
    :cond_22
    add-long v3, v11, v13

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    .line 224
    .restart local v3  # "bisect":J
    :goto_27
    invoke-direct {v9, v3, v4}, Lcom/jcraft/jorbis/VorbisFile;->seek_helper(J)V

    .line 225
    invoke-direct {v9, v10, v1, v2}, Lcom/jcraft/jorbis/VorbisFile;->get_next_page(Lcom/jcraft/jogg/Page;J)I

    move-result v0

    .line 226
    .local v0, "ret":I
    if-ne v0, v15, :cond_31

    .line 227
    return v15

    .line 228
    :cond_31
    if-ltz v0, :cond_45

    invoke-virtual {v10}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v1

    move/from16 v5, p7

    if-eq v1, v5, :cond_3c

    goto :goto_47

    .line 234
    :cond_3c
    iget v1, v10, Lcom/jcraft/jogg/Page;->header_len:I

    add-int/2addr v1, v0

    iget v2, v10, Lcom/jcraft/jogg/Page;->body_len:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    move-wide v11, v1

    .end local v11  # "searched":J
    .local v1, "searched":J
    goto :goto_4f

    .line 228
    .end local v1  # "searched":J
    .restart local v11  # "searched":J
    :cond_45
    move/from16 v5, p7

    .line 229
    :goto_47
    move-wide v1, v3

    .line 230
    .end local v13  # "endsearched":J
    .local v1, "endsearched":J
    if-ltz v0, :cond_4e

    .line 231
    int-to-long v6, v0

    move-wide v13, v1

    move-wide v7, v6

    .end local v7  # "next":J
    .local v6, "next":J
    goto :goto_4f

    .line 230
    .end local v6  # "next":J
    .restart local v7  # "next":J
    :cond_4e
    move-wide v13, v1

    .line 236
    .end local v1  # "endsearched":J
    .end local v3  # "bisect":J
    .restart local v13  # "endsearched":J
    :goto_4f
    goto :goto_10

    .line 237
    .end local v0  # "ret":I
    :cond_50
    move/from16 v5, p7

    invoke-direct {v9, v7, v8}, Lcom/jcraft/jorbis/VorbisFile;->seek_helper(J)V

    .line 238
    invoke-direct {v9, v10, v1, v2}, Lcom/jcraft/jorbis/VorbisFile;->get_next_page(Lcom/jcraft/jogg/Page;J)I

    move-result v6

    .line 239
    .local v6, "ret":I
    if-ne v6, v15, :cond_5c

    .line 240
    return v15

    .line 242
    :cond_5c
    cmp-long v0, v11, p5

    if-gez v0, :cond_84

    const/4 v0, -0x1

    if-ne v6, v0, :cond_68

    move/from16 v18, v6

    move-wide/from16 v19, v7

    goto :goto_88

    .line 248
    :cond_68
    iget-wide v3, v9, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    invoke-virtual {v10}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v16

    add-int/lit8 v17, p8, 0x1

    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v18, v6

    .end local v6  # "ret":I
    .local v18, "ret":I
    move-wide/from16 v5, p5

    move-wide/from16 v19, v7

    .end local v7  # "next":J
    .local v19, "next":J
    move/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jcraft/jorbis/VorbisFile;->bisect_forward_serialno(JJJII)I

    move-result v6

    .line 249
    .end local v18  # "ret":I
    .restart local v6  # "ret":I
    if-ne v6, v15, :cond_9a

    .line 250
    return v15

    .line 242
    .end local v19  # "next":J
    .restart local v7  # "next":J
    :cond_84
    move/from16 v18, v6

    move-wide/from16 v19, v7

    .line 243
    .end local v6  # "ret":I
    .end local v7  # "next":J
    .restart local v18  # "ret":I
    .restart local v19  # "next":J
    :goto_88
    add-int/lit8 v0, p8, 0x1

    iput v0, v9, Lcom/jcraft/jorbis/VorbisFile;->links:I

    .line 244
    add-int/lit8 v0, p8, 0x2

    new-array v0, v0, [J

    iput-object v0, v9, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    .line 245
    iget-object v0, v9, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    add-int/lit8 v1, p8, 0x1

    aput-wide v11, v0, v1

    move/from16 v6, v18

    .line 252
    .end local v18  # "ret":I
    .restart local v6  # "ret":I
    :cond_9a
    iget-object v0, v9, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    aput-wide p1, v0, p8

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public bitrate(I)I
    .registers 13
    .param p1, "i"  # I

    .line 724
    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_6

    .line 725
    return v1

    .line 726
    :cond_6
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-nez v0, :cond_12

    if-eqz p1, :cond_12

    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/VorbisFile;->bitrate(I)I

    move-result v0

    return v0

    .line 728
    :cond_12
    const-wide/16 v2, 0x8

    if-gez p1, :cond_3a

    .line 729
    const-wide/16 v4, 0x0

    .line 730
    .local v4, "bits":J
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_19
    iget v6, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-ge v0, v6, :cond_2d

    .line 731
    iget-object v6, p0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    add-int/lit8 v7, v0, 0x1

    aget-wide v7, v6, v7

    iget-object v6, p0, Lcom/jcraft/jorbis/VorbisFile;->dataoffsets:[J

    aget-wide v9, v6, v0

    sub-long/2addr v7, v9

    mul-long/2addr v7, v2

    add-long/2addr v4, v7

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 733
    .end local v0  # "j":I
    :cond_2d
    long-to-float v0, v4

    invoke-virtual {p0, v1}, Lcom/jcraft/jorbis/VorbisFile;->time_total(I)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 736
    .end local v4  # "bits":J
    :cond_3a
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-eqz v0, :cond_57

    .line 738
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    add-int/lit8 v1, p1, 0x1

    aget-wide v4, v0, v1

    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->dataoffsets:[J

    aget-wide v6, v0, p1

    sub-long/2addr v4, v6

    mul-long/2addr v4, v2

    long-to-float v0, v4

    invoke-virtual {p0, p1}, Lcom/jcraft/jorbis/VorbisFile;->time_total(I)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 742
    :cond_57
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/jcraft/jorbis/Info;->bitrate_nominal:I

    if-lez v0, :cond_66

    .line 743
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/jcraft/jorbis/Info;->bitrate_nominal:I

    return v0

    .line 746
    :cond_66
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/jcraft/jorbis/Info;->bitrate_upper:I

    if-lez v0, :cond_8d

    .line 747
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/jcraft/jorbis/Info;->bitrate_lower:I

    if-lez v0, :cond_86

    .line 748
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/jcraft/jorbis/Info;->bitrate_upper:I

    iget-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/jcraft/jorbis/Info;->bitrate_lower:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 751
    :cond_86
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/jcraft/jorbis/Info;->bitrate_upper:I

    return v0

    .line 754
    :cond_8d
    return v1
.end method

.method public bitrate_instant()I
    .registers 8

    .line 763
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->current_link:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 764
    .local v0, "_link":I
    :goto_8
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->samptrack:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_11

    .line 765
    const/4 v1, -0x1

    return v1

    .line 766
    :cond_11
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->bittrack:F

    iget v3, p0, Lcom/jcraft/jorbis/VorbisFile;->samptrack:F

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jcraft/jorbis/Info;->rate:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L  # 0.5

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 767
    .local v1, "ret":I
    iput v2, p0, Lcom/jcraft/jorbis/VorbisFile;->bittrack:F

    .line 768
    iput v2, p0, Lcom/jcraft/jorbis/VorbisFile;->samptrack:F

    .line 769
    return v1
.end method

.method clear()I
    .registers 4

    .line 597
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vb:Lcom/jcraft/jorbis/Block;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/Block;->clear()I

    .line 598
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/DspState;->clear()V

    .line 599
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v0}, Lcom/jcraft/jogg/StreamState;->clear()V

    .line 601
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-eqz v0, :cond_32

    .line 602
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget v2, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-ge v0, v2, :cond_2e

    .line 603
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 604
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/jcraft/jorbis/Comment;->clear()V

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 606
    .end local v0  # "i":I
    :cond_2e
    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    .line 607
    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    .line 609
    :cond_32
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->dataoffsets:[J

    if-eqz v0, :cond_38

    .line 610
    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->dataoffsets:[J

    .line 611
    :cond_38
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->pcmlengths:[J

    if-eqz v0, :cond_3e

    .line 612
    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->pcmlengths:[J

    .line 613
    :cond_3e
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->serialnos:[I

    if-eqz v0, :cond_44

    .line 614
    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->serialnos:[I

    .line 615
    :cond_44
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    if-eqz v0, :cond_4a

    .line 616
    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    .line 617
    :cond_4a
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v0}, Lcom/jcraft/jogg/SyncState;->clear()I

    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1339
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->datasource:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1340
    return-void
.end method

.method decode_clear()V
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v0}, Lcom/jcraft/jogg/StreamState;->clear()V

    .line 451
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/DspState;->clear()V

    .line 452
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vb:Lcom/jcraft/jorbis/Block;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/Block;->clear()I

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    .line 454
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jorbis/VorbisFile;->bittrack:F

    .line 455
    iput v0, p0, Lcom/jcraft/jorbis/VorbisFile;->samptrack:F

    .line 456
    return-void
.end method

.method fetch_headers(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jorbis/Comment;[ILcom/jcraft/jogg/Page;)I
    .registers 13
    .param p1, "vi"  # Lcom/jcraft/jorbis/Info;
    .param p2, "vc"  # Lcom/jcraft/jorbis/Comment;
    .param p3, "serialno"  # [I
    .param p4, "og_ptr"  # Lcom/jcraft/jogg/Page;

    .line 259
    new-instance v0, Lcom/jcraft/jogg/Page;

    invoke-direct {v0}, Lcom/jcraft/jogg/Page;-><init>()V

    .line 260
    .local v0, "og":Lcom/jcraft/jogg/Page;
    new-instance v1, Lcom/jcraft/jogg/Packet;

    invoke-direct {v1}, Lcom/jcraft/jogg/Packet;-><init>()V

    .line 263
    .local v1, "op":Lcom/jcraft/jogg/Packet;
    if-nez p4, :cond_1d

    .line 264
    const-wide/16 v2, 0x2134

    invoke-direct {p0, v0, v2, v3}, Lcom/jcraft/jorbis/VorbisFile;->get_next_page(Lcom/jcraft/jogg/Page;J)I

    move-result v2

    .line 265
    .local v2, "ret":I
    const/16 v3, -0x80

    if-ne v2, v3, :cond_17

    .line 266
    return v3

    .line 267
    :cond_17
    if-gez v2, :cond_1c

    .line 268
    const/16 v3, -0x84

    return v3

    .line 269
    :cond_1c
    move-object p4, v0

    .line 272
    .end local v2  # "ret":I
    :cond_1d
    const/4 v2, 0x0

    if-eqz p3, :cond_26

    .line 273
    invoke-virtual {p4}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v3

    aput v3, p3, v2

    .line 275
    :cond_26
    iget-object v3, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {p4}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jogg/StreamState;->init(I)V

    .line 280
    invoke-virtual {p1}, Lcom/jcraft/jorbis/Info;->init()V

    .line 281
    invoke-virtual {p2}, Lcom/jcraft/jorbis/Comment;->init()V

    .line 283
    const/4 v3, 0x0

    .line 284
    .local v3, "i":I
    :cond_36
    const/4 v4, 0x3

    if-ge v3, v4, :cond_84

    .line 285
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v5, p4}, Lcom/jcraft/jogg/StreamState;->pagein(Lcom/jcraft/jogg/Page;)I

    .line 286
    :goto_3e
    const/4 v5, -0x1

    if-ge v3, v4, :cond_6e

    .line 287
    iget-object v6, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v6, v1}, Lcom/jcraft/jogg/StreamState;->packetout(Lcom/jcraft/jogg/Packet;)I

    move-result v6

    .line 288
    .local v6, "result":I
    if-nez v6, :cond_4a

    .line 289
    goto :goto_6e

    .line 290
    :cond_4a
    if-ne v6, v5, :cond_58

    .line 291
    invoke-virtual {p1}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 292
    invoke-virtual {p2}, Lcom/jcraft/jorbis/Comment;->clear()V

    .line 293
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v2}, Lcom/jcraft/jogg/StreamState;->clear()V

    .line 294
    return v5

    .line 296
    :cond_58
    invoke-virtual {p1, p2, v1}, Lcom/jcraft/jorbis/Info;->synthesis_headerin(Lcom/jcraft/jorbis/Comment;Lcom/jcraft/jogg/Packet;)I

    move-result v7

    if-eqz v7, :cond_6a

    .line 297
    invoke-virtual {p1}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 298
    invoke-virtual {p2}, Lcom/jcraft/jorbis/Comment;->clear()V

    .line 299
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v2}, Lcom/jcraft/jogg/StreamState;->clear()V

    .line 300
    return v5

    .line 302
    :cond_6a
    nop

    .end local v6  # "result":I
    add-int/lit8 v3, v3, 0x1

    .line 303
    goto :goto_3e

    .line 304
    :cond_6e
    :goto_6e
    if-ge v3, v4, :cond_36

    .line 305
    const-wide/16 v6, 0x1

    invoke-direct {p0, p4, v6, v7}, Lcom/jcraft/jorbis/VorbisFile;->get_next_page(Lcom/jcraft/jogg/Page;J)I

    move-result v4

    if-gez v4, :cond_36

    .line 306
    invoke-virtual {p1}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 307
    invoke-virtual {p2}, Lcom/jcraft/jorbis/Comment;->clear()V

    .line 308
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v2}, Lcom/jcraft/jogg/StreamState;->clear()V

    .line 309
    return v5

    .line 312
    :cond_84
    return v2
.end method

.method public getComment(I)Lcom/jcraft/jorbis/Comment;
    .registers 4
    .param p1, "link"  # I

    .line 1138
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 1139
    if-gez p1, :cond_13

    .line 1140
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    if-eqz v0, :cond_12

    .line 1141
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->current_link:I

    aget-object v0, v0, v1

    return-object v0

    .line 1144
    :cond_12
    return-object v1

    .line 1148
    :cond_13
    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-lt p1, v0, :cond_18

    .line 1149
    return-object v1

    .line 1152
    :cond_18
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    aget-object v0, v0, p1

    return-object v0

    .line 1157
    :cond_1d
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    if-eqz v0, :cond_27

    .line 1158
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 1161
    :cond_27
    return-object v1
.end method

.method public getComment()[Lcom/jcraft/jorbis/Comment;
    .registers 2

    .line 1335
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    return-object v0
.end method

.method public getInfo(I)Lcom/jcraft/jorbis/Info;
    .registers 4
    .param p1, "link"  # I

    .line 1109
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 1110
    if-gez p1, :cond_13

    .line 1111
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    if-eqz v0, :cond_12

    .line 1112
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->current_link:I

    aget-object v0, v0, v1

    return-object v0

    .line 1115
    :cond_12
    return-object v1

    .line 1119
    :cond_13
    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-lt p1, v0, :cond_18

    .line 1120
    return-object v1

    .line 1123
    :cond_18
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v0, v0, p1

    return-object v0

    .line 1128
    :cond_1d
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    if-eqz v0, :cond_27

    .line 1129
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 1132
    :cond_27
    return-object v1
.end method

.method public getInfo()[Lcom/jcraft/jorbis/Info;
    .registers 2

    .line 1331
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    return-object v0
.end method

.method host_is_big_endian()I
    .registers 2

    .line 1167
    const/4 v0, 0x1

    return v0
.end method

.method open(Ljava/io/InputStream;[BI)I
    .registers 5
    .param p1, "is"  # Ljava/io/InputStream;
    .param p2, "initial"  # [B
    .param p3, "ibytes"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jorbis/JOrbisException;
        }
    .end annotation

    .line 671
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jorbis/VorbisFile;->open_callbacks(Ljava/io/InputStream;[BI)I

    move-result v0

    return v0
.end method

.method open_callbacks(Ljava/io/InputStream;[BI)I
    .registers 7
    .param p1, "is"  # Ljava/io/InputStream;
    .param p2, "initial"  # [B
    .param p3, "ibytes"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jorbis/JOrbisException;
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lcom/jcraft/jorbis/VorbisFile;->datasource:Ljava/io/InputStream;

    .line 679
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v0}, Lcom/jcraft/jogg/SyncState;->init()V

    .line 685
    if-eqz p2, :cond_1c

    .line 686
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v0, p3}, Lcom/jcraft/jogg/SyncState;->buffer(I)I

    move-result v0

    .line 687
    .local v0, "index":I
    iget-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    iget-object v1, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    iget-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->oy:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v1, p3}, Lcom/jcraft/jogg/SyncState;->wrote(I)I

    .line 691
    .end local v0  # "index":I
    :cond_1c
    instance-of v0, p1, Lcom/jcraft/jorbis/VorbisFile$SeekableInputStream;

    if-eqz v0, :cond_25

    .line 692
    invoke-virtual {p0}, Lcom/jcraft/jorbis/VorbisFile;->open_seekable()I

    move-result v0

    .local v0, "ret":I
    goto :goto_29

    .line 695
    .end local v0  # "ret":I
    :cond_25
    invoke-virtual {p0}, Lcom/jcraft/jorbis/VorbisFile;->open_nonseekable()I

    move-result v0

    .line 697
    .restart local v0  # "ret":I
    :goto_29
    if-eqz v0, :cond_31

    .line 698
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->datasource:Ljava/io/InputStream;

    .line 699
    invoke-virtual {p0}, Lcom/jcraft/jorbis/VorbisFile;->clear()I

    .line 701
    :cond_31
    return v0
.end method

.method open_nonseekable()I
    .registers 6

    .line 433
    const/4 v0, 0x1

    iput v0, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    .line 434
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    new-array v1, v1, [Lcom/jcraft/jorbis/Info;

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    .line 435
    iget-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    new-instance v2, Lcom/jcraft/jorbis/Info;

    invoke-direct {v2}, Lcom/jcraft/jorbis/Info;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 436
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    new-array v1, v1, [Lcom/jcraft/jorbis/Comment;

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    .line 437
    iget-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    new-instance v2, Lcom/jcraft/jorbis/Comment;

    invoke-direct {v2}, Lcom/jcraft/jorbis/Comment;-><init>()V

    aput-object v2, v1, v3

    .line 440
    new-array v0, v0, [I

    .line 441
    .local v0, "foo":[I
    iget-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v0, v4}, Lcom/jcraft/jorbis/VorbisFile;->fetch_headers(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jorbis/Comment;[ILcom/jcraft/jogg/Page;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_35

    .line 442
    return v2

    .line 443
    :cond_35
    aget v1, v0, v3

    iput v1, p0, Lcom/jcraft/jorbis/VorbisFile;->current_serialno:I

    .line 444
    invoke-direct {p0}, Lcom/jcraft/jorbis/VorbisFile;->make_decode_ready()I

    .line 445
    return v3
.end method

.method open_seekable()I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jorbis/JOrbisException;
        }
    .end annotation

    .line 386
    move-object/from16 v9, p0

    new-instance v0, Lcom/jcraft/jorbis/Info;

    invoke-direct {v0}, Lcom/jcraft/jorbis/Info;-><init>()V

    move-object v10, v0

    .line 387
    .local v10, "initial_i":Lcom/jcraft/jorbis/Info;
    new-instance v0, Lcom/jcraft/jorbis/Comment;

    invoke-direct {v0}, Lcom/jcraft/jorbis/Comment;-><init>()V

    move-object v11, v0

    .line 392
    .local v11, "initial_c":Lcom/jcraft/jorbis/Comment;
    new-instance v0, Lcom/jcraft/jogg/Page;

    invoke-direct {v0}, Lcom/jcraft/jogg/Page;-><init>()V

    move-object v12, v0

    .line 394
    .local v12, "og":Lcom/jcraft/jogg/Page;
    const/4 v0, 0x1

    new-array v13, v0, [I

    .line 395
    .local v13, "foo":[I
    const/4 v1, 0x0

    invoke-virtual {v9, v10, v11, v13, v1}, Lcom/jcraft/jorbis/VorbisFile;->fetch_headers(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jorbis/Comment;[ILcom/jcraft/jogg/Page;)I

    move-result v14

    .line 396
    .local v14, "ret":I
    const/4 v15, 0x0

    aget v8, v13, v15

    .line 397
    .local v8, "serialno":I
    iget-wide v1, v9, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    long-to-int v7, v1

    .line 398
    .local v7, "dataoffset":I
    iget-object v1, v9, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v1}, Lcom/jcraft/jogg/StreamState;->clear()V

    .line 399
    const/4 v1, -0x1

    if-ne v14, v1, :cond_2b

    .line 400
    return v1

    .line 401
    :cond_2b
    if-gez v14, :cond_2e

    .line 402
    return v14

    .line 404
    :cond_2e
    iput-boolean v0, v9, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    .line 405
    iget-object v0, v9, Lcom/jcraft/jorbis/VorbisFile;->datasource:Ljava/io/InputStream;

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/jcraft/jorbis/VorbisFile;->fseek(Ljava/io/InputStream;JI)I

    .line 406
    iget-object v0, v9, Lcom/jcraft/jorbis/VorbisFile;->datasource:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/jcraft/jorbis/VorbisFile;->ftell(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    .line 407
    iget-wide v0, v9, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    .line 410
    .local v0, "end":J
    invoke-direct {v9, v12}, Lcom/jcraft/jorbis/VorbisFile;->get_prev_page(Lcom/jcraft/jogg/Page;)I

    move-result v2

    int-to-long v5, v2

    .line 412
    .end local v0  # "end":J
    .local v5, "end":J
    invoke-virtual {v12}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v0

    const/16 v16, -0x80

    const-wide/16 v1, 0x1

    if-eq v0, v8, :cond_6f

    .line 415
    add-long v17, v5, v1

    const/16 v19, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v20, v5

    .end local v5  # "end":J
    .local v20, "end":J
    move-wide/from16 v5, v17

    move v15, v7

    .end local v7  # "dataoffset":I
    .local v15, "dataoffset":I
    move v7, v8

    move/from16 v18, v8

    .end local v8  # "serialno":I
    .local v18, "serialno":I
    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lcom/jcraft/jorbis/VorbisFile;->bisect_forward_serialno(JJJII)I

    move-result v0

    if-gez v0, :cond_89

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jorbis/VorbisFile;->clear()I

    .line 417
    return v16

    .line 422
    .end local v15  # "dataoffset":I
    .end local v18  # "serialno":I
    .end local v20  # "end":J
    .restart local v5  # "end":J
    .restart local v7  # "dataoffset":I
    .restart local v8  # "serialno":I
    :cond_6f
    move-wide/from16 v20, v5

    move v15, v7

    move/from16 v18, v8

    .end local v5  # "end":J
    .end local v7  # "dataoffset":I
    .end local v8  # "serialno":I
    .restart local v15  # "dataoffset":I
    .restart local v18  # "serialno":I
    .restart local v20  # "end":J
    add-long v5, v20, v1

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v3, v20

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v8}, Lcom/jcraft/jorbis/VorbisFile;->bisect_forward_serialno(JJJII)I

    move-result v0

    if-gez v0, :cond_89

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jorbis/VorbisFile;->clear()I

    .line 424
    return v16

    .line 427
    :cond_89
    invoke-virtual {v9, v10, v11, v15}, Lcom/jcraft/jorbis/VorbisFile;->prefetch_all_headers(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jorbis/Comment;I)V

    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public pcm_seek(J)I
    .registers 25
    .param p1, "pos"  # J

    .line 917
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 918
    .local v1, "link":I
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jorbis/VorbisFile;->pcm_total(I)J

    move-result-wide v3

    .line 920
    .local v3, "total":J
    iget-boolean v5, v0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-nez v5, :cond_d

    .line 921
    return v2

    .line 922
    :cond_d
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-ltz v5, :cond_e4

    cmp-long v5, p1, v3

    if-lez v5, :cond_19

    goto/16 :goto_e4

    .line 930
    :cond_19
    iget v5, v0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    .end local v1  # "link":I
    .local v5, "link":I
    :goto_1d
    if-ltz v5, :cond_2c

    .line 931
    iget-object v1, v0, Lcom/jcraft/jorbis/VorbisFile;->pcmlengths:[J

    aget-wide v9, v1, v5

    sub-long/2addr v3, v9

    .line 932
    cmp-long v1, p1, v3

    if-ltz v1, :cond_29

    .line 933
    goto :goto_2c

    .line 930
    :cond_29
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    .line 942
    :cond_2c
    :goto_2c
    sub-long v9, p1, v3

    .line 943
    .local v9, "target":J
    iget-object v1, v0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    add-int/lit8 v11, v5, 0x1

    aget-wide v11, v1, v11

    .line 944
    .local v11, "end":J
    iget-object v1, v0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    aget-wide v13, v1, v5

    .line 945
    .local v13, "begin":J
    long-to-int v1, v13

    .line 947
    .local v1, "best":I
    new-instance v15, Lcom/jcraft/jogg/Page;

    invoke-direct {v15}, Lcom/jcraft/jogg/Page;-><init>()V

    .line 948
    .local v15, "og":Lcom/jcraft/jogg/Page;
    :goto_3e
    cmp-long v16, v13, v11

    if-gez v16, :cond_78

    .line 952
    sub-long v16, v11, v13

    const-wide/16 v18, 0x2134

    cmp-long v16, v16, v18

    if-gez v16, :cond_4f

    .line 953
    move-wide/from16 v16, v13

    move-wide/from16 v6, v16

    .local v16, "bisect":J
    goto :goto_57

    .line 956
    .end local v16  # "bisect":J
    :cond_4f
    add-long v16, v11, v13

    const-wide/16 v18, 0x2

    div-long v16, v16, v18

    move-wide/from16 v6, v16

    .line 959
    .local v6, "bisect":J
    :goto_57
    invoke-direct {v0, v6, v7}, Lcom/jcraft/jorbis/VorbisFile;->seek_helper(J)V

    .line 960
    move-wide/from16 v20, v9

    .end local v9  # "target":J
    .local v20, "target":J
    sub-long v8, v11, v6

    invoke-direct {v0, v15, v8, v9}, Lcom/jcraft/jorbis/VorbisFile;->get_next_page(Lcom/jcraft/jogg/Page;J)I

    move-result v8

    .line 962
    .local v8, "ret":I
    if-ne v8, v2, :cond_67

    .line 963
    move-wide v9, v6

    move-wide v11, v9

    .end local v11  # "end":J
    .local v9, "end":J
    goto :goto_74

    .line 966
    .end local v9  # "end":J
    .restart local v11  # "end":J
    :cond_67
    invoke-virtual {v15}, Lcom/jcraft/jogg/Page;->granulepos()J

    move-result-wide v9

    .line 967
    .local v9, "granulepos":J
    cmp-long v17, v9, v20

    if-gez v17, :cond_73

    .line 968
    move v1, v8

    .line 969
    iget-wide v13, v0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    goto :goto_74

    .line 972
    :cond_73
    move-wide v11, v6

    .line 975
    .end local v6  # "bisect":J
    .end local v8  # "ret":I
    .end local v9  # "granulepos":J
    :goto_74
    move-wide/from16 v9, v20

    const/4 v8, 0x1

    goto :goto_3e

    .line 977
    .end local v20  # "target":J
    .local v9, "target":J
    :cond_78
    move-wide/from16 v20, v9

    .end local v9  # "target":J
    .restart local v20  # "target":J
    invoke-virtual {v0, v1}, Lcom/jcraft/jorbis/VorbisFile;->raw_seek(I)I

    move-result v6

    if-eqz v6, :cond_88

    .line 979
    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jorbis/VorbisFile;->decode_clear()V

    .line 981
    return v2

    .line 986
    .end local v1  # "best":I
    .end local v11  # "end":J
    .end local v13  # "begin":J
    .end local v15  # "og":Lcom/jcraft/jogg/Page;
    .end local v20  # "target":J
    :cond_88
    iget-wide v6, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    cmp-long v1, v6, p1

    if-ltz v1, :cond_96

    .line 988
    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 989
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jorbis/VorbisFile;->decode_clear()V

    .line 990
    return v2

    .line 992
    :cond_96
    const-wide/16 v6, -0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jorbis/VorbisFile;->pcm_total(I)J

    move-result-wide v8

    cmp-long v1, p1, v8

    if-lez v1, :cond_a6

    .line 994
    iput-wide v6, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 995
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jorbis/VorbisFile;->decode_clear()V

    .line 996
    return v2

    .line 1001
    :cond_a6
    :goto_a6
    iget-wide v6, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    cmp-long v1, v6, p1

    if-gez v1, :cond_e2

    .line 1002
    iget-wide v6, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    sub-long v6, p1, v6

    long-to-int v1, v6

    .line 1003
    .local v1, "target":I
    const/4 v6, 0x1

    new-array v7, v6, [[[F

    .line 1004
    .local v7, "_pcm":[[[F
    invoke-virtual {v0, v2}, Lcom/jcraft/jorbis/VorbisFile;->getInfo(I)Lcom/jcraft/jorbis/Info;

    move-result-object v6

    iget v6, v6, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v6, v6, [I

    .line 1005
    .local v6, "_index":[I
    iget-object v8, v0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v8, v7, v6}, Lcom/jcraft/jorbis/DspState;->synthesis_pcmout([[[F[I)I

    move-result v8

    .line 1007
    .local v8, "samples":I
    if-le v8, v1, :cond_c5

    .line 1008
    move v8, v1

    .line 1009
    :cond_c5
    iget-object v9, v0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v9, v8}, Lcom/jcraft/jorbis/DspState;->synthesis_read(I)I

    .line 1010
    iget-wide v9, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    int-to-long v11, v8

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 1012
    if-ge v8, v1, :cond_e0

    .line 1013
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/jcraft/jorbis/VorbisFile;->process_packet(I)I

    move-result v10

    if-nez v10, :cond_e1

    .line 1014
    invoke-virtual {v0, v2}, Lcom/jcraft/jorbis/VorbisFile;->pcm_total(I)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    goto :goto_e1

    .line 1012
    :cond_e0
    const/4 v9, 0x1

    .line 1016
    .end local v1  # "target":I
    .end local v6  # "_index":[I
    .end local v7  # "_pcm":[[[F
    .end local v8  # "samples":I
    :cond_e1
    :goto_e1
    goto :goto_a6

    .line 1017
    :cond_e2
    const/4 v1, 0x0

    return v1

    .line 924
    .end local v5  # "link":I
    .local v1, "link":I
    :cond_e4
    :goto_e4
    const-wide/16 v5, -0x1

    iput-wide v5, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jorbis/VorbisFile;->decode_clear()V

    .line 926
    return v2
.end method

.method public pcm_tell()J
    .registers 3

    .line 1073
    iget-wide v0, p0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    return-wide v0
.end method

.method public pcm_total(I)J
    .registers 7
    .param p1, "i"  # I

    .line 808
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-lt p1, v0, :cond_9

    goto :goto_20

    .line 810
    :cond_9
    if-gez p1, :cond_1b

    .line 811
    const-wide/16 v0, 0x0

    .line 812
    .local v0, "acc":J
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_e
    iget v3, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-ge v2, v3, :cond_1a

    .line 813
    invoke-virtual {p0, v2}, Lcom/jcraft/jorbis/VorbisFile;->pcm_total(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 812
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 815
    .end local v2  # "j":I
    :cond_1a
    return-wide v0

    .line 818
    .end local v0  # "acc":J
    :cond_1b
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->pcmlengths:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 809
    :cond_20
    :goto_20
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method prefetch_all_headers(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jorbis/Comment;I)V
    .registers 14
    .param p1, "first_i"  # Lcom/jcraft/jorbis/Info;
    .param p2, "first_c"  # Lcom/jcraft/jorbis/Comment;
    .param p3, "dataoffset"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jorbis/JOrbisException;
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/jcraft/jogg/Page;

    invoke-direct {v0}, Lcom/jcraft/jogg/Page;-><init>()V

    .line 324
    .local v0, "og":Lcom/jcraft/jogg/Page;
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    new-array v1, v1, [Lcom/jcraft/jorbis/Info;

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    .line 325
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    new-array v1, v1, [Lcom/jcraft/jorbis/Comment;

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    .line 326
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->dataoffsets:[J

    .line 327
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->pcmlengths:[J

    .line 328
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->serialnos:[I

    .line 330
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    iget v2, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-ge v1, v2, :cond_b2

    .line 331
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_3f

    if-nez v1, :cond_3f

    .line 334
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aput-object p1, v5, v1

    .line 335
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    aput-object p2, v5, v1

    .line 336
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->dataoffsets:[J

    int-to-long v6, p3

    aput-wide v6, v5, v1

    goto :goto_77

    .line 340
    :cond_3f
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    aget-wide v6, v5, v1

    invoke-direct {p0, v6, v7}, Lcom/jcraft/jorbis/VorbisFile;->seek_helper(J)V

    .line 341
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    new-instance v6, Lcom/jcraft/jorbis/Info;

    invoke-direct {v6}, Lcom/jcraft/jorbis/Info;-><init>()V

    aput-object v6, v5, v1

    .line 342
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    new-instance v6, Lcom/jcraft/jorbis/Comment;

    invoke-direct {v6}, Lcom/jcraft/jorbis/Comment;-><init>()V

    aput-object v6, v5, v1

    .line 343
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7, v7}, Lcom/jcraft/jorbis/VorbisFile;->fetch_headers(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jorbis/Comment;[ILcom/jcraft/jogg/Page;)I

    move-result v5

    if-ne v5, v4, :cond_6c

    .line 344
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->dataoffsets:[J

    aput-wide v2, v5, v1

    goto :goto_77

    .line 347
    :cond_6c
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->dataoffsets:[J

    iget-wide v6, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    aput-wide v6, v5, v1

    .line 348
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v5}, Lcom/jcraft/jogg/StreamState;->clear()V

    .line 355
    :goto_77
    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v5, v6

    .line 356
    .local v6, "end":J
    invoke-direct {p0, v6, v7}, Lcom/jcraft/jorbis/VorbisFile;->seek_helper(J)V

    .line 359
    :cond_80
    invoke-direct {p0, v0}, Lcom/jcraft/jorbis/VorbisFile;->get_prev_page(Lcom/jcraft/jogg/Page;)I

    move-result v5

    .line 360
    .local v5, "ret":I
    if-ne v5, v4, :cond_95

    .line 362
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 363
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/jcraft/jorbis/Comment;->clear()V

    .line 364
    goto :goto_ae

    .line 366
    :cond_95
    invoke-virtual {v0}, Lcom/jcraft/jogg/Page;->granulepos()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-eqz v8, :cond_80

    .line 367
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->serialnos:[I

    invoke-virtual {v0}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v3

    aput v3, v2, v1

    .line 368
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->pcmlengths:[J

    invoke-virtual {v0}, Lcom/jcraft/jogg/Page;->granulepos()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 369
    nop

    .line 330
    .end local v6  # "end":J
    :goto_ae
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_24

    .line 374
    .end local v1  # "i":I
    .end local v5  # "ret":I
    :cond_b2
    return-void
.end method

.method process_packet(I)I
    .registers 15
    .param p1, "readp"  # I

    .line 469
    new-instance v0, Lcom/jcraft/jogg/Page;

    invoke-direct {v0}, Lcom/jcraft/jogg/Page;-><init>()V

    .line 476
    .local v0, "og":Lcom/jcraft/jogg/Page;
    :goto_5
    iget-boolean v1, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_71

    .line 477
    new-instance v1, Lcom/jcraft/jogg/Packet;

    invoke-direct {v1}, Lcom/jcraft/jogg/Packet;-><init>()V

    .line 478
    .local v1, "op":Lcom/jcraft/jogg/Packet;
    iget-object v6, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v6, v1}, Lcom/jcraft/jogg/StreamState;->packetout(Lcom/jcraft/jogg/Packet;)I

    move-result v6

    .line 483
    .local v6, "result":I
    if-lez v6, :cond_71

    .line 485
    iget-wide v7, v1, Lcom/jcraft/jogg/Packet;->granulepos:J

    .line 486
    .local v7, "granulepos":J
    iget-object v9, p0, Lcom/jcraft/jorbis/VorbisFile;->vb:Lcom/jcraft/jorbis/Block;

    invoke-virtual {v9, v1}, Lcom/jcraft/jorbis/Block;->synthesis(Lcom/jcraft/jogg/Packet;)I

    move-result v9

    if-nez v9, :cond_71

    .line 495
    iget-object v9, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    const/4 v10, 0x0

    move-object v11, v10

    check-cast v11, [[[F

    invoke-virtual {v9, v10, v10}, Lcom/jcraft/jorbis/DspState;->synthesis_pcmout([[[F[I)I

    move-result v9

    .line 496
    .local v9, "oldsamples":I
    iget-object v11, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v12, p0, Lcom/jcraft/jorbis/VorbisFile;->vb:Lcom/jcraft/jorbis/Block;

    invoke-virtual {v11, v12}, Lcom/jcraft/jorbis/DspState;->synthesis_blockin(Lcom/jcraft/jorbis/Block;)I

    .line 497
    iget v11, p0, Lcom/jcraft/jorbis/VorbisFile;->samptrack:F

    iget-object v12, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v12, v10, v10}, Lcom/jcraft/jorbis/DspState;->synthesis_pcmout([[[F[I)I

    move-result v12

    sub-int/2addr v12, v9

    int-to-float v12, v12

    add-float/2addr v11, v12

    iput v11, p0, Lcom/jcraft/jorbis/VorbisFile;->samptrack:F

    .line 498
    iget v11, p0, Lcom/jcraft/jorbis/VorbisFile;->bittrack:F

    iget v12, v1, Lcom/jcraft/jogg/Packet;->bytes:I

    mul-int/lit8 v12, v12, 0x8

    int-to-float v12, v12

    add-float/2addr v11, v12

    iput v11, p0, Lcom/jcraft/jorbis/VorbisFile;->bittrack:F

    .line 502
    .end local v9  # "oldsamples":I
    cmp-long v2, v7, v2

    if-eqz v2, :cond_70

    iget v2, v1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    if-nez v2, :cond_70

    .line 503
    iget-boolean v2, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-eqz v2, :cond_5a

    iget v5, p0, Lcom/jcraft/jorbis/VorbisFile;->current_link:I

    :cond_5a
    move v2, v5

    .line 517
    .local v2, "link":I
    iget-object v3, p0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v3, v10, v10}, Lcom/jcraft/jorbis/DspState;->synthesis_pcmout([[[F[I)I

    move-result v3

    .line 518
    .local v3, "samples":I
    int-to-long v9, v3

    sub-long/2addr v7, v9

    .line 519
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_64
    if-ge v5, v2, :cond_6e

    .line 520
    iget-object v9, p0, Lcom/jcraft/jorbis/VorbisFile;->pcmlengths:[J

    aget-wide v10, v9, v5

    add-long/2addr v7, v10

    .line 519
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 522
    .end local v5  # "i":I
    :cond_6e
    iput-wide v7, p0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 524
    .end local v2  # "link":I
    .end local v3  # "samples":I
    :cond_70
    return v4

    .line 529
    .end local v1  # "op":Lcom/jcraft/jogg/Packet;
    .end local v6  # "result":I
    .end local v7  # "granulepos":J
    :cond_71
    if-nez p1, :cond_74

    .line 530
    return v5

    .line 531
    :cond_74
    invoke-direct {p0, v0, v2, v3}, Lcom/jcraft/jorbis/VorbisFile;->get_next_page(Lcom/jcraft/jogg/Page;J)I

    move-result v1

    if-gez v1, :cond_7b

    .line 532
    return v5

    .line 536
    :cond_7b
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->bittrack:F

    iget v2, v0, Lcom/jcraft/jogg/Page;->header_len:I

    mul-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jcraft/jorbis/VorbisFile;->bittrack:F

    .line 539
    iget-boolean v1, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    if-eqz v1, :cond_94

    .line 540
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->current_serialno:I

    invoke-virtual {v0}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v2

    if-eq v1, v2, :cond_94

    .line 541
    invoke-virtual {p0}, Lcom/jcraft/jorbis/VorbisFile;->decode_clear()V

    .line 556
    :cond_94
    iget-boolean v1, p0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    if-nez v1, :cond_e7

    .line 558
    iget-boolean v1, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-eqz v1, :cond_c8

    .line 559
    invoke-virtual {v0}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v1

    iput v1, p0, Lcom/jcraft/jorbis/VorbisFile;->current_serialno:I

    .line 564
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a3
    iget v2, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-ge v1, v2, :cond_b3

    .line 565
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->serialnos:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/jcraft/jorbis/VorbisFile;->current_serialno:I

    if-ne v2, v3, :cond_b0

    .line 566
    goto :goto_b3

    .line 564
    :cond_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 568
    :cond_b3
    :goto_b3
    iget v2, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-ne v1, v2, :cond_b9

    .line 569
    const/4 v2, -0x1

    return v2

    .line 571
    :cond_b9
    iput v1, p0, Lcom/jcraft/jorbis/VorbisFile;->current_link:I

    .line 573
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    iget v3, p0, Lcom/jcraft/jorbis/VorbisFile;->current_serialno:I

    invoke-virtual {v2, v3}, Lcom/jcraft/jogg/StreamState;->init(I)V

    .line 574
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v2}, Lcom/jcraft/jogg/StreamState;->reset()I

    goto :goto_e4

    .line 580
    .end local v1  # "i":I
    :cond_c8
    new-array v1, v4, [I

    .line 581
    .local v1, "foo":[I
    iget-object v2, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/jcraft/jorbis/VorbisFile;->vc:[Lcom/jcraft/jorbis/Comment;

    aget-object v3, v3, v5

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/jcraft/jorbis/VorbisFile;->fetch_headers(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jorbis/Comment;[ILcom/jcraft/jogg/Page;)I

    move-result v2

    .line 582
    .local v2, "ret":I
    aget v3, v1, v5

    iput v3, p0, Lcom/jcraft/jorbis/VorbisFile;->current_serialno:I

    .line 583
    if-eqz v2, :cond_dd

    .line 584
    return v2

    .line 585
    :cond_dd
    iget v3, p0, Lcom/jcraft/jorbis/VorbisFile;->current_link:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jcraft/jorbis/VorbisFile;->current_link:I

    .line 586
    const/4 v3, 0x0

    move v1, v3

    .line 588
    .end local v2  # "ret":I
    .local v1, "i":I
    :goto_e4
    invoke-direct {p0}, Lcom/jcraft/jorbis/VorbisFile;->make_decode_ready()I

    .line 590
    .end local v1  # "i":I
    :cond_e7
    iget-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->os:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v1, v0}, Lcom/jcraft/jogg/StreamState;->pagein(Lcom/jcraft/jogg/Page;)I

    goto/16 :goto_5
.end method

.method public raw_seek(I)I
    .registers 10
    .param p1, "pos"  # I

    .line 849
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 850
    return v1

    .line 851
    :cond_6
    const-wide/16 v2, -0x1

    if-ltz p1, :cond_45

    int-to-long v4, p1

    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    iget v6, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    aget-wide v6, v0, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_16

    goto :goto_45

    .line 859
    :cond_16
    iput-wide v2, p0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 860
    invoke-virtual {p0}, Lcom/jcraft/jorbis/VorbisFile;->decode_clear()V

    .line 863
    int-to-long v4, p1

    invoke-direct {p0, v4, v5}, Lcom/jcraft/jorbis/VorbisFile;->seek_helper(J)V

    .line 871
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/VorbisFile;->process_packet(I)I

    move-result v0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_4c

    goto :goto_36

    .line 875
    :pswitch_29  #0x0
    invoke-virtual {p0, v1}, Lcom/jcraft/jorbis/VorbisFile;->pcm_total(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 876
    return v4

    .line 880
    :pswitch_30  #0xffffffff
    iput-wide v2, p0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 881
    invoke-virtual {p0}, Lcom/jcraft/jorbis/VorbisFile;->decode_clear()V

    .line 882
    return v1

    .line 888
    :goto_36
    invoke-virtual {p0, v4}, Lcom/jcraft/jorbis/VorbisFile;->process_packet(I)I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 902
    goto :goto_36

    .line 893
    :pswitch_3e  #0x0
    return v4

    .line 897
    :pswitch_3f  #0xffffffff
    iput-wide v2, p0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 898
    invoke-virtual {p0}, Lcom/jcraft/jorbis/VorbisFile;->decode_clear()V

    .line 899
    return v1

    .line 853
    :cond_45
    :goto_45
    iput-wide v2, p0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 854
    invoke-virtual {p0}, Lcom/jcraft/jorbis/VorbisFile;->decode_clear()V

    .line 855
    return v1

    nop

    :pswitch_data_4c
    .packed-switch -0x1
        :pswitch_30  #ffffffff
        :pswitch_29  #00000000
    .end packed-switch

    :pswitch_data_54
    .packed-switch -0x1
        :pswitch_3f  #ffffffff
        :pswitch_3e  #00000000
    .end packed-switch
.end method

.method public raw_tell()J
    .registers 3

    .line 1068
    iget-wide v0, p0, Lcom/jcraft/jorbis/VorbisFile;->offset:J

    return-wide v0
.end method

.method public raw_total(I)J
    .registers 7
    .param p1, "i"  # I

    .line 790
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-lt p1, v0, :cond_9

    goto :goto_27

    .line 792
    :cond_9
    if-gez p1, :cond_1b

    .line 793
    const-wide/16 v0, 0x0

    .line 794
    .local v0, "acc":J
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_e
    iget v3, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-ge v2, v3, :cond_1a

    .line 795
    invoke-virtual {p0, v2}, Lcom/jcraft/jorbis/VorbisFile;->raw_total(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 797
    .end local v2  # "j":I
    :cond_1a
    return-wide v0

    .line 800
    .end local v0  # "acc":J
    :cond_1b
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, v0, v1

    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->offsets:[J

    aget-wide v3, v0, p1

    sub-long/2addr v1, v3

    return-wide v1

    .line 791
    :cond_27
    :goto_27
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method read([BIIII[I)I
    .registers 31
    .param p1, "buffer"  # [B
    .param p2, "length"  # I
    .param p3, "bigendianp"  # I
    .param p4, "word"  # I
    .param p5, "sgned"  # I
    .param p6, "bitstream"  # [I

    .line 1208
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jorbis/VorbisFile;->host_is_big_endian()I

    move-result v3

    .line 1209
    .local v3, "host_endian":I
    const/4 v4, 0x0

    .line 1212
    .local v4, "index":I
    :goto_b
    iget-boolean v5, v0, Lcom/jcraft/jorbis/VorbisFile;->decode_ready:Z

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_1b5

    .line 1214
    new-array v5, v8, [[[F

    .line 1215
    .local v5, "_pcm":[[[F
    invoke-virtual {v0, v6}, Lcom/jcraft/jorbis/VorbisFile;->getInfo(I)Lcom/jcraft/jorbis/Info;

    move-result-object v9

    iget v9, v9, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v9, v9, [I

    .line 1216
    .local v9, "_index":[I
    iget-object v10, v0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v10, v5, v9}, Lcom/jcraft/jorbis/DspState;->synthesis_pcmout([[[F[I)I

    move-result v10

    .line 1217
    .local v10, "samples":I
    aget-object v11, v5, v7

    .line 1218
    .local v11, "pcm":[[F
    if-eqz v10, :cond_1ae

    .line 1220
    invoke-virtual {v0, v6}, Lcom/jcraft/jorbis/VorbisFile;->getInfo(I)Lcom/jcraft/jorbis/Info;

    move-result-object v6

    iget v6, v6, Lcom/jcraft/jorbis/Info;->channels:I

    .line 1221
    .local v6, "channels":I
    mul-int v12, v2, v6

    .line 1222
    .local v12, "bytespersample":I
    div-int v13, p2, v12

    if-le v10, v13, :cond_34

    .line 1223
    div-int v10, p2, v12

    .line 1228
    :cond_34
    if-ne v2, v8, :cond_7d

    .line 1229
    if-eqz p5, :cond_3a

    move v8, v7

    goto :goto_3c

    :cond_3a
    const/16 v8, 0x80

    .line 1230
    .local v8, "off":I
    :goto_3c
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3d
    if-ge v15, v10, :cond_77

    .line 1231
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "i":I
    :goto_43
    if-ge v7, v6, :cond_71

    .line 1232
    aget-object v17, v11, v7

    aget v18, v9, v7

    add-int v18, v18, v15

    aget v13, v17, v18

    float-to-double v13, v13

    const-wide/high16 v17, 0x4060000000000000L  # 128.0

    mul-double v13, v13, v17

    const-wide/high16 v17, 0x3fe0000000000000L  # 0.5

    add-double v13, v13, v17

    double-to-int v13, v13

    .line 1233
    .local v13, "val":I
    const/16 v14, 0x7f

    if-le v13, v14, :cond_5e

    .line 1234
    const/16 v13, 0x7f

    goto :goto_64

    .line 1235
    :cond_5e
    const/16 v14, -0x80

    if-ge v13, v14, :cond_64

    .line 1236
    const/16 v13, -0x80

    .line 1237
    :cond_64
    :goto_64
    add-int/lit8 v14, v4, 0x1

    .end local v4  # "index":I
    .local v14, "index":I
    add-int v2, v13, v8

    int-to-byte v2, v2

    aput-byte v2, p1, v4

    .line 1231
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p4

    move v4, v14

    goto :goto_43

    .line 1230
    .end local v7  # "i":I
    .end local v13  # "val":I
    .end local v14  # "index":I
    .restart local v4  # "index":I
    :cond_71
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p4

    const/4 v7, 0x0

    goto :goto_3d

    .line 1240
    .end local v8  # "off":I
    .end local v15  # "j":I
    :cond_77
    move/from16 v22, v3

    move-object/from16 v17, v5

    goto/16 :goto_199

    .line 1242
    :cond_7d
    if-eqz p5, :cond_81

    const/4 v2, 0x0

    goto :goto_84

    :cond_81
    const v2, 0x8000

    .line 1244
    .local v2, "off":I
    :goto_84
    const-wide/high16 v13, 0x40e0000000000000L  # 32768.0

    if-ne v3, v1, :cond_124

    .line 1245
    if-eqz p5, :cond_d8

    .line 1246
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_8b
    if-ge v15, v6, :cond_d1

    .line 1247
    aget v17, v9, v15

    .line 1248
    .local v17, "src":I
    move/from16 v18, v15

    .line 1249
    .local v18, "dest":I
    const/16 v21, 0x0

    move/from16 v7, v21

    .local v7, "j":I
    :goto_95
    if-ge v7, v10, :cond_ca

    .line 1250
    aget-object v22, v11, v15

    add-int v23, v17, v7

    aget v8, v22, v23

    move/from16 v22, v3

    move/from16 v23, v4

    .end local v3  # "host_endian":I
    .end local v4  # "index":I
    .local v22, "host_endian":I
    .local v23, "index":I
    float-to-double v3, v8

    mul-double/2addr v3, v13

    const-wide/high16 v19, 0x3fe0000000000000L  # 0.5

    add-double v3, v3, v19

    double-to-int v3, v3

    .line 1251
    .local v3, "val":I
    const/16 v4, 0x7fff

    if-le v3, v4, :cond_af

    .line 1252
    const/16 v3, 0x7fff

    goto :goto_b5

    .line 1253
    :cond_af
    const/16 v4, -0x8000

    if-ge v3, v4, :cond_b5

    .line 1254
    const/16 v3, -0x8000

    .line 1255
    :cond_b5
    :goto_b5
    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, v18

    .line 1256
    add-int/lit8 v4, v18, 0x1

    int-to-byte v8, v3

    aput-byte v8, p1, v4

    .line 1257
    mul-int/lit8 v4, v6, 0x2

    add-int v18, v18, v4

    .line 1249
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v22

    move/from16 v4, v23

    goto :goto_95

    .end local v22  # "host_endian":I
    .end local v23  # "index":I
    .local v3, "host_endian":I
    .restart local v4  # "index":I
    :cond_ca
    move/from16 v22, v3

    move/from16 v23, v4

    .line 1246
    .end local v3  # "host_endian":I
    .end local v4  # "index":I
    .end local v7  # "j":I
    .end local v17  # "src":I
    .end local v18  # "dest":I
    .restart local v22  # "host_endian":I
    .restart local v23  # "index":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_8b

    .end local v22  # "host_endian":I
    .end local v23  # "index":I
    .restart local v3  # "host_endian":I
    .restart local v4  # "index":I
    :cond_d1
    move/from16 v22, v3

    move/from16 v23, v4

    .end local v3  # "host_endian":I
    .end local v4  # "index":I
    .restart local v22  # "host_endian":I
    .restart local v23  # "index":I
    move-object/from16 v17, v5

    .end local v15  # "i":I
    goto :goto_120

    .line 1262
    .end local v22  # "host_endian":I
    .end local v23  # "index":I
    .restart local v3  # "host_endian":I
    .restart local v4  # "index":I
    :cond_d8
    move/from16 v22, v3

    move/from16 v23, v4

    .end local v3  # "host_endian":I
    .end local v4  # "index":I
    .restart local v22  # "host_endian":I
    .restart local v23  # "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_dd
    if-ge v3, v6, :cond_11e

    .line 1263
    aget-object v4, v11, v3

    .line 1264
    .local v4, "src":[F
    move v7, v3

    .line 1265
    .local v7, "dest":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_e3
    if-ge v8, v10, :cond_117

    .line 1266
    aget v15, v4, v8

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    .end local v4  # "src":[F
    .end local v5  # "_pcm":[[[F
    .local v17, "_pcm":[[[F
    .local v18, "src":[F
    float-to-double v4, v15

    mul-double/2addr v4, v13

    const-wide/high16 v19, 0x3fe0000000000000L  # 0.5

    add-double v4, v4, v19

    double-to-int v4, v4

    .line 1267
    .local v4, "val":I
    const/16 v5, 0x7fff

    if-le v4, v5, :cond_f9

    .line 1268
    const/16 v4, 0x7fff

    goto :goto_ff

    .line 1269
    :cond_f9
    const/16 v5, -0x8000

    if-ge v4, v5, :cond_ff

    .line 1270
    const/16 v4, -0x8000

    .line 1271
    :cond_ff
    :goto_ff
    add-int v5, v4, v2

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v7

    .line 1272
    add-int/lit8 v5, v7, 0x1

    add-int v15, v4, v2

    int-to-byte v15, v15

    aput-byte v15, p1, v5

    .line 1273
    mul-int/lit8 v5, v6, 0x2

    add-int/2addr v7, v5

    .line 1265
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    goto :goto_e3

    .end local v17  # "_pcm":[[[F
    .end local v18  # "src":[F
    .local v4, "src":[F
    .restart local v5  # "_pcm":[[[F
    :cond_117
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    .line 1262
    .end local v4  # "src":[F
    .end local v5  # "_pcm":[[[F
    .end local v7  # "dest":I
    .end local v8  # "j":I
    .restart local v17  # "_pcm":[[[F
    add-int/lit8 v3, v3, 0x1

    goto :goto_dd

    .end local v17  # "_pcm":[[[F
    .restart local v5  # "_pcm":[[[F
    :cond_11e
    move-object/from16 v17, v5

    .line 1310
    .end local v2  # "off":I
    .end local v3  # "i":I
    .end local v5  # "_pcm":[[[F
    .restart local v17  # "_pcm":[[[F
    :goto_120
    move/from16 v4, v23

    goto/16 :goto_199

    .line 1278
    .end local v17  # "_pcm":[[[F
    .end local v22  # "host_endian":I
    .end local v23  # "index":I
    .restart local v2  # "off":I
    .local v3, "host_endian":I
    .local v4, "index":I
    .restart local v5  # "_pcm":[[[F
    :cond_124
    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v17, v5

    .end local v3  # "host_endian":I
    .end local v4  # "index":I
    .end local v5  # "_pcm":[[[F
    .restart local v17  # "_pcm":[[[F
    .restart local v22  # "host_endian":I
    .restart local v23  # "index":I
    if-eqz v1, :cond_160

    .line 1279
    const/4 v3, 0x0

    move/from16 v4, v23

    .end local v23  # "index":I
    .local v3, "j":I
    .restart local v4  # "index":I
    :goto_12f
    if-ge v3, v10, :cond_15f

    .line 1280
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_132
    if-ge v5, v6, :cond_15c

    .line 1281
    aget-object v7, v11, v5

    aget v7, v7, v3

    float-to-double v7, v7

    mul-double/2addr v7, v13

    const-wide/high16 v18, 0x3fe0000000000000L  # 0.5

    add-double v7, v7, v18

    double-to-int v7, v7

    .line 1282
    .local v7, "val":I
    const/16 v8, 0x7fff

    if-le v7, v8, :cond_146

    .line 1283
    const/16 v7, 0x7fff

    goto :goto_14c

    .line 1284
    :cond_146
    const/16 v8, -0x8000

    if-ge v7, v8, :cond_14c

    .line 1285
    const/16 v7, -0x8000

    .line 1286
    :cond_14c
    :goto_14c
    add-int/2addr v7, v2

    .line 1287
    add-int/lit8 v8, v4, 0x1

    .end local v4  # "index":I
    .local v8, "index":I
    ushr-int/lit8 v15, v7, 0x8

    int-to-byte v15, v15

    aput-byte v15, p1, v4

    .line 1288
    add-int/lit8 v4, v8, 0x1

    .end local v8  # "index":I
    .restart local v4  # "index":I
    int-to-byte v15, v7

    aput-byte v15, p1, v8

    .line 1280
    add-int/lit8 v5, v5, 0x1

    goto :goto_132

    .line 1279
    .end local v5  # "i":I
    .end local v7  # "val":I
    :cond_15c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12f

    .end local v3  # "j":I
    :cond_15f
    goto :goto_199

    .line 1294
    .end local v4  # "index":I
    .restart local v23  # "index":I
    :cond_160
    const/4 v3, 0x0

    move/from16 v4, v23

    .end local v23  # "index":I
    .restart local v3  # "j":I
    .restart local v4  # "index":I
    :goto_163
    if-ge v3, v10, :cond_199

    .line 1295
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_166
    if-ge v5, v6, :cond_192

    .line 1296
    aget-object v7, v11, v5

    aget v7, v7, v3

    float-to-double v7, v7

    mul-double/2addr v7, v13

    const-wide/high16 v18, 0x3fe0000000000000L  # 0.5

    add-double v7, v7, v18

    double-to-int v7, v7

    .line 1297
    .restart local v7  # "val":I
    const/16 v8, 0x7fff

    if-le v7, v8, :cond_17c

    .line 1298
    const/16 v7, 0x7fff

    const/16 v15, -0x8000

    goto :goto_182

    .line 1299
    :cond_17c
    const/16 v15, -0x8000

    if-ge v7, v15, :cond_182

    .line 1300
    const/16 v7, -0x8000

    .line 1301
    :cond_182
    :goto_182
    add-int/2addr v7, v2

    .line 1302
    add-int/lit8 v20, v4, 0x1

    .end local v4  # "index":I
    .local v20, "index":I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 1303
    add-int/lit8 v4, v20, 0x1

    .end local v20  # "index":I
    .restart local v4  # "index":I
    ushr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    aput-byte v8, p1, v20

    .line 1295
    add-int/lit8 v5, v5, 0x1

    goto :goto_166

    .end local v7  # "val":I
    :cond_192
    const/16 v15, -0x8000

    const-wide/high16 v18, 0x3fe0000000000000L  # 0.5

    .line 1294
    .end local v5  # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_163

    .line 1310
    .end local v2  # "off":I
    .end local v3  # "j":I
    :cond_199
    :goto_199
    iget-object v2, v0, Lcom/jcraft/jorbis/VorbisFile;->vd:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v2, v10}, Lcom/jcraft/jorbis/DspState;->synthesis_read(I)I

    .line 1311
    iget-wide v2, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    int-to-long v7, v10

    add-long/2addr v2, v7

    iput-wide v2, v0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 1312
    if-eqz p6, :cond_1ab

    .line 1313
    iget v2, v0, Lcom/jcraft/jorbis/VorbisFile;->current_link:I

    const/4 v3, 0x0

    aput v2, p6, v3

    .line 1314
    :cond_1ab
    mul-int v2, v10, v12

    return v2

    .line 1218
    .end local v6  # "channels":I
    .end local v12  # "bytespersample":I
    .end local v17  # "_pcm":[[[F
    .end local v22  # "host_endian":I
    .local v3, "host_endian":I
    .local v5, "_pcm":[[[F
    :cond_1ae
    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v17, v5

    .end local v3  # "host_endian":I
    .end local v4  # "index":I
    .end local v5  # "_pcm":[[[F
    .restart local v17  # "_pcm":[[[F
    .restart local v22  # "host_endian":I
    .restart local v23  # "index":I
    goto :goto_1b9

    .line 1212
    .end local v9  # "_index":[I
    .end local v10  # "samples":I
    .end local v11  # "pcm":[[F
    .end local v17  # "_pcm":[[[F
    .end local v22  # "host_endian":I
    .end local v23  # "index":I
    .restart local v3  # "host_endian":I
    .restart local v4  # "index":I
    :cond_1b5
    move/from16 v22, v3

    move/from16 v23, v4

    .line 1319
    .end local v3  # "host_endian":I
    .end local v4  # "index":I
    .restart local v22  # "host_endian":I
    .restart local v23  # "index":I
    :goto_1b9
    invoke-virtual {v0, v8}, Lcom/jcraft/jorbis/VorbisFile;->process_packet(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1cc

    .line 1325
    move/from16 v2, p4

    move/from16 v3, v22

    move/from16 v4, v23

    goto/16 :goto_b

    .line 1321
    :pswitch_1c8  #0x0
    const/4 v2, 0x0

    return v2

    .line 1323
    :pswitch_1ca  #0xffffffff
    return v6

    nop

    :pswitch_data_1cc
    .packed-switch -0x1
        :pswitch_1ca  #ffffffff
        :pswitch_1c8  #00000000
    .end packed-switch
.end method

.method public seekable()Z
    .registers 2

    .line 711
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    return v0
.end method

.method public serialnumber(I)I
    .registers 4
    .param p1, "i"  # I

    .line 773
    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_6

    .line 774
    return v1

    .line 775
    :cond_6
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-nez v0, :cond_11

    if-ltz p1, :cond_11

    .line 776
    invoke-virtual {p0, v1}, Lcom/jcraft/jorbis/VorbisFile;->serialnumber(I)I

    move-result v0

    return v0

    .line 777
    :cond_11
    if-gez p1, :cond_16

    .line 778
    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->current_serialno:I

    return v0

    .line 781
    :cond_16
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->serialnos:[I

    aget v0, v0, p1

    return v0
.end method

.method public streams()I
    .registers 2

    .line 706
    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    return v0
.end method

.method time_seek(F)I
    .registers 9
    .param p1, "seconds"  # F

    .line 1031
    const/4 v0, -0x1

    .line 1032
    .local v0, "link":I
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/jcraft/jorbis/VorbisFile;->pcm_total(I)J

    move-result-wide v2

    .line 1033
    .local v2, "pcm_total":J
    invoke-virtual {p0, v1}, Lcom/jcraft/jorbis/VorbisFile;->time_total(I)F

    move-result v4

    .line 1035
    .local v4, "time_total":F
    iget-boolean v5, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-nez v5, :cond_f

    .line 1036
    return v1

    .line 1037
    :cond_f
    const/4 v5, 0x0

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_43

    cmpl-float v5, p1, v4

    if-lez v5, :cond_19

    goto :goto_43

    .line 1045
    :cond_19
    iget v1, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    add-int/lit8 v1, v1, -0x1

    .end local v0  # "link":I
    .local v1, "link":I
    :goto_1d
    if-ltz v1, :cond_31

    .line 1046
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->pcmlengths:[J

    aget-wide v5, v0, v1

    sub-long/2addr v2, v5

    .line 1047
    invoke-virtual {p0, v1}, Lcom/jcraft/jorbis/VorbisFile;->time_total(I)F

    move-result v0

    sub-float/2addr v4, v0

    .line 1048
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_2e

    .line 1049
    goto :goto_31

    .line 1045
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 1054
    :cond_31
    :goto_31
    long-to-float v0, v2

    sub-float v5, p1, v4

    iget-object v6, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/jcraft/jorbis/Info;->rate:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    float-to-long v5, v0

    .line 1055
    .local v5, "target":J
    invoke-virtual {p0, v5, v6}, Lcom/jcraft/jorbis/VorbisFile;->pcm_seek(J)I

    move-result v0

    return v0

    .line 1039
    .end local v1  # "link":I
    .end local v5  # "target":J
    .restart local v0  # "link":I
    :cond_43
    :goto_43
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    .line 1040
    invoke-virtual {p0}, Lcom/jcraft/jorbis/VorbisFile;->decode_clear()V

    .line 1041
    return v1
.end method

.method public time_tell()F
    .registers 8

    .line 1080
    const/4 v0, -0x1

    .line 1081
    .local v0, "link":I
    const-wide/16 v1, 0x0

    .line 1082
    .local v1, "pcm_total":J
    const/4 v3, 0x0

    .line 1084
    .local v3, "time_total":F
    iget-boolean v4, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-eqz v4, :cond_2c

    .line 1085
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/jcraft/jorbis/VorbisFile;->pcm_total(I)J

    move-result-wide v1

    .line 1086
    invoke-virtual {p0, v4}, Lcom/jcraft/jorbis/VorbisFile;->time_total(I)F

    move-result v3

    .line 1089
    iget v4, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    add-int/lit8 v4, v4, -0x1

    move v0, v4

    :goto_16
    if-ltz v0, :cond_2c

    .line 1090
    iget-object v4, p0, Lcom/jcraft/jorbis/VorbisFile;->pcmlengths:[J

    aget-wide v5, v4, v0

    sub-long/2addr v1, v5

    .line 1091
    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/VorbisFile;->time_total(I)F

    move-result v4

    sub-float/2addr v3, v4

    .line 1092
    iget-wide v4, p0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    cmp-long v4, v4, v1

    if-ltz v4, :cond_29

    .line 1093
    goto :goto_2c

    .line 1089
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 1097
    :cond_2c
    :goto_2c
    iget-wide v4, p0, Lcom/jcraft/jorbis/VorbisFile;->pcm_offset:J

    sub-long/2addr v4, v1

    long-to-float v4, v4

    iget-object v5, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/jcraft/jorbis/Info;->rate:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    return v4
.end method

.method public time_total(I)F
    .registers 5
    .param p1, "i"  # I

    .line 826
    iget-boolean v0, p0, Lcom/jcraft/jorbis/VorbisFile;->seekable:Z

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-lt p1, v0, :cond_9

    goto :goto_28

    .line 828
    :cond_9
    if-gez p1, :cond_1a

    .line 829
    const/4 v0, 0x0

    .line 830
    .local v0, "acc":F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    iget v2, p0, Lcom/jcraft/jorbis/VorbisFile;->links:I

    if-ge v1, v2, :cond_19

    .line 831
    invoke-virtual {p0, v1}, Lcom/jcraft/jorbis/VorbisFile;->time_total(I)F

    move-result v2

    add-float/2addr v0, v2

    .line 830
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 833
    .end local v1  # "j":I
    :cond_19
    return v0

    .line 836
    .end local v0  # "acc":F
    :cond_1a
    iget-object v0, p0, Lcom/jcraft/jorbis/VorbisFile;->pcmlengths:[J

    aget-wide v1, v0, p1

    long-to-float v0, v1

    iget-object v1, p0, Lcom/jcraft/jorbis/VorbisFile;->vi:[Lcom/jcraft/jorbis/Info;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/jcraft/jorbis/Info;->rate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 827
    :cond_28
    :goto_28
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method
