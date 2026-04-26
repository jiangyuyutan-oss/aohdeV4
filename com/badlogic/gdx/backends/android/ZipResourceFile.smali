.class public Lcom/badlogic/gdx/backends/android/ZipResourceFile;
.super Ljava/lang/Object;
.source "ZipResourceFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
    }
.end annotation


# static fields
.field static final LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "zipro"

.field static final kCDECRC:I = 0x10

.field static final kCDECommentLen:I = 0x20

.field static final kCDECompLen:I = 0x14

.field static final kCDEExtraLen:I = 0x1e

.field static final kCDELen:I = 0x2e

.field static final kCDELocalOffset:I = 0x2a

.field static final kCDEMethod:I = 0xa

.field static final kCDEModWhen:I = 0xc

.field static final kCDENameLen:I = 0x1c

.field static final kCDESignature:I = 0x2014b50

.field static final kCDEUncompLen:I = 0x18

.field static final kCompressDeflated:I = 0x8

.field static final kCompressStored:I = 0x0

.field static final kEOCDFileOffset:I = 0x10

.field static final kEOCDLen:I = 0x16

.field static final kEOCDNumEntries:I = 0x8

.field static final kEOCDSignature:I = 0x6054b50

.field static final kEOCDSize:I = 0xc

.field static final kLFHExtraLen:I = 0x1c

.field static final kLFHLen:I = 0x1e

.field static final kLFHNameLen:I = 0x1a

.field static final kLFHSignature:I = 0x4034b50

.field static final kMaxCommentLen:I = 0xffff

.field static final kMaxEOCDSearch:I = 0x10015

.field static final kZipEntryAdj:I = 0x2710


# instance fields
.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;",
            ">;"
        }
    .end annotation
.end field

.field mLEByteBuffer:Ljava/nio/ByteBuffer;

.field public mZipFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "zipFileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    .line 264
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->mLEByteBuffer:Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->addPatchFile(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private static read4LE(Ljava/io/RandomAccessFile;)I
    .registers 2
    .param p0, "f"  # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->swapEndian(I)I

    move-result v0

    return v0
.end method

.method private static swapEndian(I)I
    .registers 3
    .param p0, "i"  # I

    .line 49
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static swapEndian(S)I
    .registers 3
    .param p0, "i"  # S

    .line 55
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method addPatchFile(Ljava/lang/String;)V
    .registers 38
    .param p1, "zipFileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    move-object/from16 v0, p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    .local v2, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    .line 280
    .local v3, "fileLength":J
    const-wide/16 v5, 0x16

    cmp-long v5, v3, v5

    if-ltz v5, :cond_214

    .line 285
    const-wide/32 v5, 0x10015

    .line 286
    .local v5, "readAmount":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_20

    .line 287
    move-wide v5, v3

    .line 292
    :cond_20
    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 294
    invoke-static {v2}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->read4LE(Ljava/io/RandomAccessFile;)I

    move-result v7

    .line 295
    .local v7, "header":I
    const v8, 0x6054b50

    const-string v9, "zipro"

    if-eq v7, v8, :cond_207

    .line 298
    const v10, 0x4034b50

    if-ne v7, v10, :cond_1fa

    .line 312
    sub-long v10, v3, v5

    .line 314
    .local v10, "searchStart":J
    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 315
    long-to-int v12, v5

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 316
    .local v12, "bbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    .line 317
    .local v13, "buffer":[B
    invoke-virtual {v2, v13}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 318
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 329
    array-length v14, v13

    add-int/lit8 v14, v14, -0x16

    .local v14, "eocdIdx":I
    :goto_4e
    if-ltz v14, :cond_67

    .line 330
    aget-byte v15, v13, v14

    const/16 v8, 0x50

    if-ne v15, v8, :cond_60

    .line 331
    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const v15, 0x6054b50

    if-ne v8, v15, :cond_63

    .line 335
    goto :goto_67

    .line 330
    :cond_60
    const v15, 0x6054b50

    .line 329
    :cond_63
    add-int/lit8 v14, v14, -0x1

    move v8, v15

    goto :goto_4e

    .line 339
    :cond_67
    :goto_67
    if-gez v14, :cond_85

    .line 340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Zip: EOCD not found, "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, " is not zip"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_85
    add-int/lit8 v8, v14, 0x8

    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    .line 350
    .local v8, "numEntries":I
    add-int/lit8 v15, v14, 0xc

    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v15

    move-wide/from16 v16, v5

    .end local v5  # "readAmount":J
    .local v16, "readAmount":J
    int-to-long v5, v15

    const-wide v18, 0xffffffffL

    and-long v5, v5, v18

    .line 351
    .local v5, "dirSize":J
    add-int/lit8 v15, v14, 0x10

    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v15

    move-wide/from16 v26, v10

    .end local v10  # "searchStart":J
    .local v26, "searchStart":J
    int-to-long v10, v15

    and-long v10, v10, v18

    .line 354
    .local v10, "dirOffset":J
    add-long v20, v10, v5

    cmp-long v15, v20, v3

    move-wide/from16 v28, v3

    .end local v3  # "fileLength":J
    .local v28, "fileLength":J
    const-string v3, ")"

    if-gtz v15, :cond_1ba

    .line 359
    if-eqz v8, :cond_1ad

    .line 369
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v20

    sget-object v21, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide/from16 v22, v10

    move-wide/from16 v24, v5

    invoke-virtual/range {v20 .. v25}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    .line 371
    .local v4, "directoryMap":Ljava/nio/MappedByteBuffer;
    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v15}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 373
    const v15, 0xffff

    move/from16 v20, v7

    .end local v7  # "header":I
    .local v20, "header":I
    new-array v7, v15, [B

    .line 379
    .local v7, "tempBuf":[B
    const/16 v21, 0x0

    .line 384
    .local v21, "currentOffset":I
    const/16 v22, 0x1e

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 385
    .local v15, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v22, v12

    .end local v12  # "bbuf":Ljava/nio/ByteBuffer;
    .local v22, "bbuf":Ljava/nio/ByteBuffer;
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v15, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 387
    const/4 v12, 0x0

    move/from16 v35, v21

    move-object/from16 v21, v13

    move/from16 v13, v35

    .local v12, "i":I
    .local v13, "currentOffset":I
    .local v21, "buffer":[B
    :goto_e2
    if-ge v12, v8, :cond_1ac

    .line 388
    move/from16 v24, v8

    .end local v8  # "numEntries":I
    .local v24, "numEntries":I
    invoke-virtual {v4, v13}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v8

    move/from16 v25, v14

    .end local v14  # "eocdIdx":I
    .local v25, "eocdIdx":I
    const v14, 0x2014b50

    if-ne v8, v14, :cond_188

    .line 395
    add-int/lit8 v8, v13, 0x1c

    .line 396
    invoke-virtual {v4, v8}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v8

    const v14, 0xffff

    and-int/2addr v8, v14

    .line 397
    .local v8, "fileNameLen":I
    move-wide/from16 v30, v5

    .end local v5  # "dirSize":J
    .local v30, "dirSize":J
    add-int/lit8 v5, v13, 0x1e

    invoke-virtual {v4, v5}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v5

    and-int/2addr v5, v14

    .line 398
    .local v5, "extraLen":I
    add-int/lit8 v6, v13, 0x20

    invoke-virtual {v4, v6}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v6

    and-int/2addr v6, v14

    .line 403
    .local v6, "commentLen":I
    add-int/lit8 v14, v13, 0x2e

    invoke-virtual {v4, v14}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 404
    const/4 v14, 0x0

    invoke-virtual {v4, v7, v14, v8}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 405
    invoke-virtual {v4, v14}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 408
    move-wide/from16 v32, v10

    .end local v10  # "dirOffset":J
    .local v32, "dirOffset":J
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7, v14, v8}, Ljava/lang/String;-><init>([BII)V

    .line 413
    .local v10, "str":Ljava/lang/String;
    new-instance v11, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    invoke-direct {v11, v0, v1, v10}, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 414
    .local v11, "ze":Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
    add-int/lit8 v14, v13, 0xa

    invoke-virtual {v4, v14}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v14

    const v23, 0xffff

    and-int v14, v14, v23

    iput v14, v11, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mMethod:I

    .line 415
    add-int/lit8 v14, v13, 0xc

    invoke-virtual {v4, v14}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v14

    move-object/from16 v34, v1

    .end local v1  # "file":Ljava/io/File;
    .local v34, "file":Ljava/io/File;
    int-to-long v0, v14

    and-long v0, v0, v18

    iput-wide v0, v11, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mWhenModified:J

    .line 416
    add-int/lit8 v0, v13, 0x10

    invoke-virtual {v4, v0}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    and-long v0, v0, v18

    iput-wide v0, v11, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mCRC32:J

    .line 417
    add-int/lit8 v0, v13, 0x14

    invoke-virtual {v4, v0}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    and-long v0, v0, v18

    iput-wide v0, v11, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    .line 419
    add-int/lit8 v0, v13, 0x18

    invoke-virtual {v4, v0}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    and-long v0, v0, v18

    iput-wide v0, v11, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    .line 421
    add-int/lit8 v0, v13, 0x2a

    invoke-virtual {v4, v0}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long v0, v0, v18

    iput-wide v0, v11, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    .line 425
    invoke-virtual {v15}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 426
    invoke-virtual {v11, v2, v15}, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    add-int/lit8 v1, v8, 0x2e

    add-int/2addr v1, v5

    add-int/2addr v1, v6

    add-int/2addr v13, v1

    .line 387
    .end local v5  # "extraLen":I
    .end local v6  # "commentLen":I
    .end local v8  # "fileNameLen":I
    .end local v10  # "str":Ljava/lang/String;
    .end local v11  # "ze":Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v8, v24

    move/from16 v14, v25

    move-wide/from16 v5, v30

    move-wide/from16 v10, v32

    move-object/from16 v1, v34

    goto/16 :goto_e2

    .line 389
    .end local v30  # "dirSize":J
    .end local v32  # "dirOffset":J
    .end local v34  # "file":Ljava/io/File;
    .restart local v1  # "file":Ljava/io/File;
    .local v5, "dirSize":J
    .local v10, "dirOffset":J
    :cond_188
    move-object/from16 v34, v1

    move-wide/from16 v30, v5

    .end local v1  # "file":Ljava/io/File;
    .end local v5  # "dirSize":J
    .restart local v30  # "dirSize":J
    .restart local v34  # "file":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missed a central dir sig (at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 437
    .end local v12  # "i":I
    .end local v24  # "numEntries":I
    .end local v25  # "eocdIdx":I
    .end local v30  # "dirSize":J
    .end local v34  # "file":Ljava/io/File;
    .restart local v1  # "file":Ljava/io/File;
    .restart local v5  # "dirSize":J
    .local v8, "numEntries":I
    .restart local v14  # "eocdIdx":I
    :cond_1ac
    return-void

    .line 360
    .end local v4  # "directoryMap":Ljava/nio/MappedByteBuffer;
    .end local v15  # "buf":Ljava/nio/ByteBuffer;
    .end local v20  # "header":I
    .end local v21  # "buffer":[B
    .end local v22  # "bbuf":Ljava/nio/ByteBuffer;
    .local v7, "header":I
    .local v12, "bbuf":Ljava/nio/ByteBuffer;
    .local v13, "buffer":[B
    :cond_1ad
    move-object/from16 v34, v1

    .end local v1  # "file":Ljava/io/File;
    .restart local v34  # "file":Ljava/io/File;
    const-string v1, "empty archive?"

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 355
    .end local v34  # "file":Ljava/io/File;
    .restart local v1  # "file":Ljava/io/File;
    :cond_1ba
    move-object/from16 v34, v1

    move-wide/from16 v30, v5

    move/from16 v24, v8

    move-wide/from16 v32, v10

    .end local v1  # "file":Ljava/io/File;
    .end local v5  # "dirSize":J
    .end local v8  # "numEntries":I
    .end local v10  # "dirOffset":J
    .restart local v24  # "numEntries":I
    .restart local v30  # "dirSize":J
    .restart local v32  # "dirOffset":J
    .restart local v34  # "file":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad offsets (dir "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v4, v32

    .end local v32  # "dirOffset":J
    .local v4, "dirOffset":J
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", size "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v6, v30

    .end local v30  # "dirSize":J
    .local v6, "dirSize":J
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", eocd "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 299
    .end local v4  # "dirOffset":J
    .end local v6  # "dirSize":J
    .end local v12  # "bbuf":Ljava/nio/ByteBuffer;
    .end local v13  # "buffer":[B
    .end local v14  # "eocdIdx":I
    .end local v16  # "readAmount":J
    .end local v24  # "numEntries":I
    .end local v26  # "searchStart":J
    .end local v28  # "fileLength":J
    .end local v34  # "file":Ljava/io/File;
    .restart local v1  # "file":Ljava/io/File;
    .restart local v3  # "fileLength":J
    .local v5, "readAmount":J
    :cond_1fa
    move-object/from16 v34, v1

    .end local v1  # "file":Ljava/io/File;
    .restart local v34  # "file":Ljava/io/File;
    const-string v1, "Not a Zip archive"

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 296
    .end local v34  # "file":Ljava/io/File;
    .restart local v1  # "file":Ljava/io/File;
    :cond_207
    move-object/from16 v34, v1

    .end local v1  # "file":Ljava/io/File;
    .restart local v34  # "file":Ljava/io/File;
    const-string v1, "Found Zip archive, but it looks empty"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 281
    .end local v5  # "readAmount":J
    .end local v7  # "header":I
    .end local v34  # "file":Ljava/io/File;
    .restart local v1  # "file":Ljava/io/File;
    :cond_214
    move-object/from16 v34, v1

    .end local v1  # "file":Ljava/io/File;
    .restart local v34  # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 282
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method public getAllEntries()[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 213
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    return-object v1
.end method

.method public getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .param p1, "assetPath"  # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    .line 229
    .local v0, "entry":Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
    if-eqz v0, :cond_f

    .line 230
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    .line 232
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method getEntriesAt(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
    .registers 9
    .param p1, "path"  # Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 196
    .local v0, "zev":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 197
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;>;"
    if-nez p1, :cond_f

    .line 198
    const-string p1, ""

    .line 199
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 200
    .local v2, "length":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    .line 201
    .local v4, "ze":Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
    iget-object v5, v4, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 202
    iget-object v5, v4, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v6, v5, :cond_39

    .line 203
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v4  # "ze":Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
    :cond_39
    goto :goto_17

    .line 207
    :cond_3a
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    .line 208
    .local v3, "entries":[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    return-object v4
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7
    .param p1, "assetPath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    .line 246
    .local v0, "entry":Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
    if-eqz v0, :cond_46

    .line 247
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->isUncompressed()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 248
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    return-object v1

    .line 250
    :cond_19
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipFile;

    .line 252
    .local v1, "zf":Ljava/util/zip/ZipFile;
    if-nez v1, :cond_3b

    .line 253
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    move-object v1, v2

    .line 254
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_3b
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 257
    .local v2, "zi":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_46

    .line 258
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    .line 261
    .end local v1  # "zf":Ljava/util/zip/ZipFile;
    .end local v2  # "zi":Ljava/util/zip/ZipEntry;
    :cond_46
    const/4 v1, 0x0

    return-object v1
.end method
