.class public Lcom/jcraft/jogg/StreamState;
.super Ljava/lang/Object;
.source "StreamState.java"


# instance fields
.field b_o_s:I

.field body_data:[B

.field body_fill:I

.field private body_returned:I

.field body_storage:I

.field public e_o_s:I

.field granule_vals:[J

.field granulepos:J

.field header:[B

.field header_fill:I

.field lacing_fill:I

.field lacing_packet:I

.field lacing_returned:I

.field lacing_storage:I

.field lacing_vals:[I

.field packetno:J

.field pageno:I

.field serialno:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x11a

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->header:[B

    .line 61
    invoke-virtual {p0}, Lcom/jcraft/jogg/StreamState;->init()V

    .line 62
    return-void
.end method

.method constructor <init>(I)V
    .registers 2
    .param p1, "serialno"  # I

    .line 65
    invoke-direct {p0}, Lcom/jcraft/jogg/StreamState;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/jcraft/jogg/StreamState;->init(I)V

    .line 67
    return-void
.end method


# virtual methods
.method body_expand(I)V
    .registers 6
    .param p1, "needed"  # I

    .line 103
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->body_storage:I

    iget v1, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_1d

    .line 104
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->body_storage:I

    add-int/lit16 v1, p1, 0x400

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jogg/StreamState;->body_storage:I

    .line 105
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->body_storage:I

    new-array v0, v0, [B

    .line 106
    .local v0, "foo":[B
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iget-object v2, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    .line 109
    .end local v0  # "foo":[B
    :cond_1d
    return-void
.end method

.method public clear()V
    .registers 2

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    .line 94
    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    .line 95
    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    .line 96
    return-void
.end method

.method destroy()V
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/jcraft/jogg/StreamState;->clear()V

    .line 100
    return-void
.end method

.method public eof()I
    .registers 2

    .line 506
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    return v0
.end method

.method public flush(Lcom/jcraft/jogg/Page;)I
    .registers 18
    .param p1, "og"  # Lcom/jcraft/jogg/Page;

    .line 375
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 376
    .local v2, "vals":I
    iget v3, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    const/16 v4, 0xff

    if-le v3, v4, :cond_d

    move v3, v4

    goto :goto_f

    :cond_d
    iget v3, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 377
    .local v3, "maxvals":I
    :goto_f
    const/4 v5, 0x0

    .line 378
    .local v5, "bytes":I
    const/4 v6, 0x0

    .line 379
    .local v6, "acc":I
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    const/4 v8, 0x0

    aget-wide v9, v7, v8

    .line 381
    .local v9, "granule_pos":J
    if-nez v3, :cond_19

    .line 382
    return v8

    .line 389
    :cond_19
    iget v7, v0, Lcom/jcraft/jogg/StreamState;->b_o_s:I

    if-nez v7, :cond_2f

    .line 390
    const-wide/16 v9, 0x0

    .line 391
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v3, :cond_44

    .line 392
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v7, v7, v2

    and-int/2addr v7, v4

    if-ge v7, v4, :cond_2c

    .line 393
    add-int/lit8 v2, v2, 0x1

    .line 394
    goto :goto_44

    .line 391
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 399
    :cond_2f
    const/4 v2, 0x0

    :goto_30
    if-ge v2, v3, :cond_44

    .line 400
    const/16 v7, 0x1000

    if-le v6, v7, :cond_37

    .line 401
    goto :goto_44

    .line 402
    :cond_37
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v7, v7, v2

    and-int/2addr v7, v4

    add-int/2addr v6, v7

    .line 403
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    aget-wide v9, v7, v2

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 408
    :cond_44
    :goto_44
    const-string v7, "OggS"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    const/4 v12, 0x4

    invoke-static {v7, v8, v11, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    aput-byte v8, v7, v12

    .line 414
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    const/4 v11, 0x5

    aput-byte v8, v7, v11

    .line 415
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v7, v7, v8

    and-int/lit16 v7, v7, 0x100

    const/4 v13, 0x1

    if-nez v7, :cond_6a

    .line 416
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    aget-byte v14, v7, v11

    or-int/2addr v14, v13

    int-to-byte v14, v14

    aput-byte v14, v7, v11

    .line 418
    :cond_6a
    iget v7, v0, Lcom/jcraft/jogg/StreamState;->b_o_s:I

    if-nez v7, :cond_77

    .line 419
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    aget-byte v14, v7, v11

    or-int/lit8 v14, v14, 0x2

    int-to-byte v14, v14

    aput-byte v14, v7, v11

    .line 421
    :cond_77
    iget v7, v0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    if-eqz v7, :cond_87

    iget v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    if-ne v7, v2, :cond_87

    .line 422
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    aget-byte v14, v7, v11

    or-int/2addr v14, v12

    int-to-byte v14, v14

    aput-byte v14, v7, v11

    .line 423
    :cond_87
    iput v13, v0, Lcom/jcraft/jogg/StreamState;->b_o_s:I

    .line 426
    const/4 v7, 0x6

    .local v7, "i":I
    :goto_8a
    const/16 v11, 0xe

    const/16 v14, 0x8

    if-ge v7, v11, :cond_9a

    .line 427
    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    long-to-int v15, v9

    int-to-byte v15, v15

    aput-byte v15, v11, v7

    .line 428
    ushr-long/2addr v9, v14

    .line 426
    add-int/lit8 v7, v7, 0x1

    goto :goto_8a

    .line 433
    :cond_9a
    iget v11, v0, Lcom/jcraft/jogg/StreamState;->serialno:I

    .line 434
    .local v11, "_serialno":I
    const/16 v7, 0xe

    :goto_9e
    const/16 v15, 0x12

    if-ge v7, v15, :cond_ad

    .line 435
    iget-object v15, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    int-to-byte v13, v11

    aput-byte v13, v15, v7

    .line 436
    ushr-int/lit8 v11, v11, 0x8

    .line 434
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x1

    goto :goto_9e

    .line 442
    .end local v11  # "_serialno":I
    :cond_ad
    iget v11, v0, Lcom/jcraft/jogg/StreamState;->pageno:I

    const/4 v13, -0x1

    if-ne v11, v13, :cond_b4

    .line 443
    iput v8, v0, Lcom/jcraft/jogg/StreamState;->pageno:I

    .line 449
    :cond_b4
    iget v11, v0, Lcom/jcraft/jogg/StreamState;->pageno:I

    add-int/lit8 v13, v11, 0x1

    iput v13, v0, Lcom/jcraft/jogg/StreamState;->pageno:I

    .line 450
    .local v11, "_pageno":I
    const/16 v7, 0x12

    :goto_bc
    const/16 v13, 0x16

    if-ge v7, v13, :cond_ca

    .line 451
    iget-object v13, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    int-to-byte v15, v11

    aput-byte v15, v13, v7

    .line 452
    ushr-int/lit8 v11, v11, 0x8

    .line 450
    add-int/lit8 v7, v7, 0x1

    goto :goto_bc

    .line 457
    .end local v11  # "_pageno":I
    :cond_ca
    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    aput-byte v8, v11, v13

    .line 458
    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    const/16 v13, 0x17

    aput-byte v8, v11, v13

    .line 459
    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    const/16 v13, 0x18

    aput-byte v8, v11, v13

    .line 460
    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    const/16 v13, 0x19

    aput-byte v8, v11, v13

    .line 463
    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    const/16 v13, 0x1a

    int-to-byte v15, v2

    aput-byte v15, v11, v13

    .line 464
    const/4 v7, 0x0

    :goto_e8
    if-ge v7, v2, :cond_100

    .line 465
    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    add-int/lit8 v13, v7, 0x1b

    iget-object v15, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v15, v15, v7

    int-to-byte v15, v15

    aput-byte v15, v11, v13

    .line 466
    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    add-int/lit8 v13, v7, 0x1b

    aget-byte v11, v11, v13

    and-int/2addr v11, v4

    add-int/2addr v5, v11

    .line 464
    add-int/lit8 v7, v7, 0x1

    goto :goto_e8

    .line 470
    :cond_100
    iget-object v4, v0, Lcom/jcraft/jogg/StreamState;->header:[B

    iput-object v4, v1, Lcom/jcraft/jogg/Page;->header_base:[B

    .line 471
    iput v8, v1, Lcom/jcraft/jogg/Page;->header:I

    .line 472
    add-int/lit8 v4, v2, 0x1b

    iput v4, v0, Lcom/jcraft/jogg/StreamState;->header_fill:I

    iput v4, v1, Lcom/jcraft/jogg/Page;->header_len:I

    .line 473
    iget-object v4, v0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iput-object v4, v1, Lcom/jcraft/jogg/Page;->body_base:[B

    .line 474
    iget v4, v0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    iput v4, v1, Lcom/jcraft/jogg/Page;->body:I

    .line 475
    iput v5, v1, Lcom/jcraft/jogg/Page;->body_len:I

    .line 479
    iget v4, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    sub-int/2addr v4, v2

    iput v4, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 480
    iget-object v4, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v13, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    mul-int/2addr v13, v12

    invoke-static {v4, v2, v11, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    iget-object v4, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget v12, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    mul-int/2addr v12, v14

    invoke-static {v4, v2, v11, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iget v4, v0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->checksum()V

    .line 489
    const/4 v4, 0x1

    return v4
.end method

.method init()V
    .registers 2

    .line 70
    const/16 v0, 0x4000

    iput v0, p0, Lcom/jcraft/jogg/StreamState;->body_storage:I

    .line 71
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->body_storage:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    .line 72
    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    .line 73
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    .line 74
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    .line 75
    return-void
.end method

.method public init(I)V
    .registers 6
    .param p1, "serialno"  # I

    .line 78
    iget-object v0, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    if-nez v0, :cond_8

    .line 79
    invoke-virtual {p0}, Lcom/jcraft/jogg/StreamState;->init()V

    goto :goto_32

    .line 82
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_16

    .line 83
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    aput-byte v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 84
    .end local v0  # "i":I
    :cond_16
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_17
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 85
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aput v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 86
    .end local v0  # "i":I
    :cond_23
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_24
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 87
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 89
    .end local v0  # "i":I
    :cond_32
    :goto_32
    iput p1, p0, Lcom/jcraft/jogg/StreamState;->serialno:I

    .line 90
    return-void
.end method

.method lacing_expand(I)V
    .registers 7
    .param p1, "needed"  # I

    .line 112
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    iget v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_2b

    .line 113
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    add-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    .line 114
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    new-array v0, v0, [I

    .line 115
    .local v0, "foo":[I
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget-object v2, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    .line 118
    iget v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    new-array v1, v1, [J

    .line 119
    .local v1, "bar":[J
    iget-object v2, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget-object v4, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    array-length v4, v4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput-object v1, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    .line 122
    .end local v0  # "foo":[I
    .end local v1  # "bar":[J
    :cond_2b
    return-void
.end method

.method public packetin(Lcom/jcraft/jogg/Packet;)I
    .registers 11
    .param p1, "op"  # Lcom/jcraft/jogg/Packet;

    .line 126
    iget v0, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    const/16 v1, 0xff

    div-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 128
    .local v0, "lacing_val":I
    iget v3, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    .line 133
    iget v3, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    iget v5, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    .line 134
    iget v3, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    if-eqz v3, :cond_22

    .line 135
    iget-object v3, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iget v5, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    iget-object v6, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iget v7, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    invoke-static {v3, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    :cond_22
    iput v4, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    .line 141
    :cond_24
    iget v3, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-virtual {p0, v3}, Lcom/jcraft/jogg/StreamState;->body_expand(I)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/jcraft/jogg/StreamState;->lacing_expand(I)V

    .line 149
    iget-object v3, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    iget v5, p1, Lcom/jcraft/jogg/Packet;->packet:I

    iget-object v6, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iget v7, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    iget v8, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget v3, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    iget v5, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    .line 154
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_41
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_58

    .line 155
    iget-object v5, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v6, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/2addr v6, v3

    aput v1, v5, v6

    .line 156
    iget-object v5, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget v6, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/2addr v6, v3

    iget-wide v7, p0, Lcom/jcraft/jogg/StreamState;->granulepos:J

    aput-wide v7, v5, v6

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 158
    :cond_58
    iget-object v5, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v6, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/2addr v6, v3

    iget v7, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    rem-int/2addr v7, v1

    aput v7, v5, v6

    .line 159
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget v5, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/2addr v5, v3

    iget-wide v6, p1, Lcom/jcraft/jogg/Packet;->granulepos:J

    aput-wide v6, v1, v5

    iput-wide v6, p0, Lcom/jcraft/jogg/StreamState;->granulepos:J

    .line 162
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v5, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    aget v6, v1, v5

    or-int/lit16 v6, v6, 0x100

    aput v6, v1, v5

    .line 164
    iget v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 167
    iget-wide v5, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    .line 169
    iget v1, p1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    if-eqz v1, :cond_89

    .line 170
    iput v2, p0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    .line 171
    :cond_89
    return v4
.end method

.method public packetout(Lcom/jcraft/jogg/Packet;)I
    .registers 12
    .param p1, "op"  # Lcom/jcraft/jogg/Packet;

    .line 180
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 182
    .local v0, "ptr":I
    iget v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    if-gt v1, v0, :cond_8

    .line 183
    const/4 v1, 0x0

    return v1

    .line 186
    :cond_8
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v1, v1, v0

    and-int/lit16 v1, v1, 0x400

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_1f

    .line 188
    iget v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 192
    iget-wide v4, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    .line 193
    const/4 v1, -0x1

    return v1

    .line 198
    :cond_1f
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v1, v1, v0

    const/16 v5, 0xff

    and-int/2addr v1, v5

    .line 199
    .local v1, "size":I
    const/4 v6, 0x0

    .line 201
    .local v6, "bytes":I
    iget-object v7, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iput-object v7, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    .line 202
    iget v7, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    iput v7, p1, Lcom/jcraft/jogg/Packet;->packet:I

    .line 203
    iget-object v7, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v7, v7, v0

    const/16 v8, 0x200

    and-int/2addr v7, v8

    iput v7, p1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    .line 204
    iget-object v7, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v7, v7, v0

    and-int/lit16 v7, v7, 0x100

    iput v7, p1, Lcom/jcraft/jogg/Packet;->b_o_s:I

    .line 205
    add-int/2addr v6, v1

    .line 207
    :goto_41
    if-ne v1, v5, :cond_53

    .line 208
    iget-object v7, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    add-int/lit8 v0, v0, 0x1

    aget v7, v7, v0

    .line 209
    .local v7, "val":I
    and-int/lit16 v1, v7, 0xff

    .line 210
    and-int/lit16 v9, v7, 0x200

    if-eqz v9, :cond_51

    .line 211
    iput v8, p1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    .line 212
    :cond_51
    add-int/2addr v6, v1

    .line 213
    .end local v7  # "val":I
    goto :goto_41

    .line 215
    :cond_53
    iget-wide v7, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    iput-wide v7, p1, Lcom/jcraft/jogg/Packet;->packetno:J

    .line 216
    iget-object v5, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    aget-wide v7, v5, v0

    iput-wide v7, p1, Lcom/jcraft/jogg/Packet;->granulepos:J

    .line 217
    iput v6, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    .line 219
    iget v5, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    .line 221
    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 223
    .end local v1  # "size":I
    .end local v6  # "bytes":I
    iget-wide v5, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    .line 224
    return v4
.end method

.method public pagein(Lcom/jcraft/jogg/Page;)I
    .registers 27
    .param p1, "og"  # Lcom/jcraft/jogg/Page;

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/jcraft/jogg/Page;->header_base:[B

    .line 232
    .local v2, "header_base":[B
    iget v3, v1, Lcom/jcraft/jogg/Page;->header:I

    .line 233
    .local v3, "header":I
    iget-object v4, v1, Lcom/jcraft/jogg/Page;->body_base:[B

    .line 234
    .local v4, "body_base":[B
    iget v5, v1, Lcom/jcraft/jogg/Page;->body:I

    .line 235
    .local v5, "body":I
    iget v6, v1, Lcom/jcraft/jogg/Page;->body_len:I

    .line 236
    .local v6, "bodysize":I
    const/4 v7, 0x0

    .line 238
    .local v7, "segptr":I
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->version()I

    move-result v8

    .line 239
    .local v8, "version":I
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->continued()I

    move-result v9

    .line 240
    .local v9, "continued":I
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->bos()I

    move-result v10

    .line 241
    .local v10, "bos":I
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->eos()I

    move-result v11

    .line 242
    .local v11, "eos":I
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->granulepos()J

    move-result-wide v12

    .line 243
    .local v12, "granulepos":J
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v14

    .line 244
    .local v14, "_serialno":I
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->pageno()I

    move-result v15

    .line 245
    .local v15, "_pageno":I
    add-int/lit8 v16, v3, 0x1a

    aget-byte v1, v2, v16

    move/from16 v16, v5

    .end local v5  # "body":I
    .local v16, "body":I
    const/16 v5, 0xff

    and-int/2addr v1, v5

    .line 249
    .local v1, "segments":I
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 250
    .local v5, "lr":I
    move/from16 v17, v6

    .end local v6  # "bodysize":I
    .local v17, "bodysize":I
    iget v6, v0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    .line 253
    .local v6, "br":I
    move/from16 v18, v7

    .end local v7  # "segptr":I
    .local v18, "segptr":I
    if-eqz v6, :cond_62

    .line 254
    iget v7, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    sub-int/2addr v7, v6

    iput v7, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    .line 255
    iget v7, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    if-eqz v7, :cond_58

    .line 256
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    move/from16 v19, v10

    .end local v10  # "bos":I
    .local v19, "bos":I
    iget-object v10, v0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    move/from16 v20, v11

    .end local v11  # "eos":I
    .local v20, "eos":I
    iget v11, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    move-wide/from16 v21, v12

    const/4 v12, 0x0

    .end local v12  # "granulepos":J
    .local v21, "granulepos":J
    invoke-static {v7, v6, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5f

    .line 255
    .end local v19  # "bos":I
    .end local v20  # "eos":I
    .end local v21  # "granulepos":J
    .restart local v10  # "bos":I
    .restart local v11  # "eos":I
    .restart local v12  # "granulepos":J
    :cond_58
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide/from16 v21, v12

    const/4 v12, 0x0

    .line 258
    .end local v10  # "bos":I
    .end local v11  # "eos":I
    .end local v12  # "granulepos":J
    .restart local v19  # "bos":I
    .restart local v20  # "eos":I
    .restart local v21  # "granulepos":J
    :goto_5f
    iput v12, v0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    goto :goto_68

    .line 253
    .end local v19  # "bos":I
    .end local v20  # "eos":I
    .end local v21  # "granulepos":J
    .restart local v10  # "bos":I
    .restart local v11  # "eos":I
    .restart local v12  # "granulepos":J
    :cond_62
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide/from16 v21, v12

    .line 261
    .end local v10  # "bos":I
    .end local v11  # "eos":I
    .end local v12  # "granulepos":J
    .restart local v19  # "bos":I
    .restart local v20  # "eos":I
    .restart local v21  # "granulepos":J
    :goto_68
    if-eqz v5, :cond_91

    .line 263
    iget v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    sub-int/2addr v7, v5

    if-eqz v7, :cond_84

    .line 264
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget-object v10, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v11, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    sub-int/2addr v11, v5

    const/4 v12, 0x0

    invoke-static {v7, v5, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget-object v7, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget-object v10, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget v11, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    sub-int/2addr v11, v5

    invoke-static {v7, v5, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    :cond_84
    iget v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    sub-int/2addr v7, v5

    iput v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 268
    iget v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    sub-int/2addr v7, v5

    iput v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    .line 269
    const/4 v7, 0x0

    iput v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 274
    .end local v5  # "lr":I
    .end local v6  # "br":I
    :cond_91
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->serialno:I

    const/4 v6, -0x1

    if-eq v14, v5, :cond_97

    .line 275
    return v6

    .line 276
    :cond_97
    if-lez v8, :cond_9a

    .line 277
    return v6

    .line 279
    :cond_9a
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Lcom/jcraft/jogg/StreamState;->lacing_expand(I)V

    .line 282
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->pageno:I

    const/4 v7, 0x1

    if-eq v15, v5, :cond_fa

    .line 286
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    .local v5, "i":I
    :goto_a6
    iget v10, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    if-ge v5, v10, :cond_b9

    .line 287
    iget v10, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    iget-object v11, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v11, v11, v5

    const/16 v12, 0xff

    and-int/2addr v11, v12

    sub-int/2addr v10, v11

    iput v10, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_a6

    .line 290
    :cond_b9
    iget v10, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    iput v10, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 293
    iget v10, v0, Lcom/jcraft/jogg/StreamState;->pageno:I

    if-eq v10, v6, :cond_d2

    .line 294
    iget-object v10, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v11, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    const/16 v12, 0x400

    aput v12, v10, v11

    .line 295
    iget v10, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    add-int/2addr v10, v7

    iput v10, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    .line 300
    :cond_d2
    if-eqz v9, :cond_fa

    .line 301
    const/4 v10, 0x0

    move/from16 v11, v18

    .line 302
    .end local v18  # "segptr":I
    .end local v19  # "bos":I
    .restart local v10  # "bos":I
    .local v11, "segptr":I
    :goto_d7
    if-ge v11, v1, :cond_f3

    .line 303
    add-int/lit8 v12, v3, 0x1b

    add-int/2addr v12, v11

    aget-byte v12, v2, v12

    const/16 v13, 0xff

    and-int/2addr v12, v13

    .line 304
    .local v12, "val":I
    add-int v16, v16, v12

    .line 305
    sub-int v17, v17, v12

    .line 306
    if-ge v12, v13, :cond_f0

    .line 307
    add-int/lit8 v11, v11, 0x1

    .line 308
    move/from16 v19, v10

    move/from16 v5, v16

    move/from16 v10, v17

    goto :goto_100

    .line 302
    .end local v12  # "val":I
    :cond_f0
    add-int/lit8 v11, v11, 0x1

    goto :goto_d7

    :cond_f3
    move/from16 v19, v10

    move/from16 v5, v16

    move/from16 v10, v17

    goto :goto_100

    .line 314
    .end local v5  # "i":I
    .end local v10  # "bos":I
    .end local v11  # "segptr":I
    .restart local v18  # "segptr":I
    .restart local v19  # "bos":I
    :cond_fa
    move/from16 v5, v16

    move/from16 v10, v17

    move/from16 v11, v18

    .end local v16  # "body":I
    .end local v17  # "bodysize":I
    .end local v18  # "segptr":I
    .local v5, "body":I
    .local v10, "bodysize":I
    .restart local v11  # "segptr":I
    :goto_100
    if-eqz v10, :cond_111

    .line 315
    invoke-virtual {v0, v10}, Lcom/jcraft/jogg/StreamState;->body_expand(I)V

    .line 316
    iget-object v12, v0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iget v13, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    invoke-static {v4, v5, v12, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    iget v12, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    add-int/2addr v12, v10

    iput v12, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    .line 321
    :cond_111
    const/4 v12, -0x1

    .line 322
    .local v12, "saved":I
    :goto_112
    if-ge v11, v1, :cond_15a

    .line 323
    add-int/lit8 v13, v3, 0x1b

    add-int/2addr v13, v11

    aget-byte v13, v2, v13

    const/16 v6, 0xff

    and-int/2addr v13, v6

    .line 324
    .local v13, "val":I
    iget-object v6, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    aput v13, v6, v7

    .line 325
    iget-object v6, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    const-wide/16 v23, -0x1

    aput-wide v23, v6, v7

    .line 327
    if-eqz v19, :cond_13c

    .line 328
    iget-object v6, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    move/from16 v18, v1

    .end local v1  # "segments":I
    .local v18, "segments":I
    aget v1, v6, v7

    or-int/lit16 v1, v1, 0x100

    aput v1, v6, v7

    .line 329
    const/4 v1, 0x0

    move/from16 v19, v1

    .end local v19  # "bos":I
    .local v1, "bos":I
    goto :goto_13e

    .line 327
    .end local v18  # "segments":I
    .local v1, "segments":I
    .restart local v19  # "bos":I
    :cond_13c
    move/from16 v18, v1

    .line 332
    .end local v1  # "segments":I
    .restart local v18  # "segments":I
    :goto_13e
    const/16 v1, 0xff

    if-ge v13, v1, :cond_145

    .line 333
    iget v1, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    move v12, v1

    .line 335
    :cond_145
    iget v1, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    const/4 v6, 0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 336
    add-int/lit8 v11, v11, 0x1

    .line 338
    const/16 v1, 0xff

    if-ge v13, v1, :cond_155

    .line 339
    iget v6, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    iput v6, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    .line 340
    .end local v13  # "val":I
    :cond_155
    move/from16 v1, v18

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto :goto_112

    .line 343
    .end local v18  # "segments":I
    .restart local v1  # "segments":I
    :cond_15a
    move/from16 v18, v1

    .end local v1  # "segments":I
    .restart local v18  # "segments":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_163

    .line 344
    iget-object v1, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    aput-wide v21, v1, v12

    .line 348
    .end local v12  # "saved":I
    :cond_163
    if-eqz v20, :cond_177

    .line 349
    const/4 v1, 0x1

    iput v1, v0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    .line 350
    iget v6, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    if-lez v6, :cond_177

    .line 351
    iget-object v6, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v7, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    sub-int/2addr v7, v1

    aget v1, v6, v7

    or-int/lit16 v1, v1, 0x200

    aput v1, v6, v7

    .line 354
    :cond_177
    add-int/lit8 v1, v15, 0x1

    iput v1, v0, Lcom/jcraft/jogg/StreamState;->pageno:I

    .line 355
    const/4 v1, 0x0

    return v1
.end method

.method public pageout(Lcom/jcraft/jogg/Page;)I
    .registers 4
    .param p1, "og"  # Lcom/jcraft/jogg/Page;

    .line 496
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    if-nez v0, :cond_22

    :cond_8
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    iget v1, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    sub-int/2addr v0, v1

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_22

    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_22

    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/jcraft/jogg/StreamState;->b_o_s:I

    if-nez v0, :cond_20

    goto :goto_22

    .line 502
    :cond_20
    const/4 v0, 0x0

    return v0

    .line 500
    :cond_22
    :goto_22
    invoke-virtual {p0, p1}, Lcom/jcraft/jogg/StreamState;->flush(Lcom/jcraft/jogg/Page;)I

    move-result v0

    return v0
.end method

.method public reset()I
    .registers 4

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    .line 511
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    .line 513
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 514
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    .line 515
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 517
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->header_fill:I

    .line 519
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    .line 520
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->b_o_s:I

    .line 521
    const/4 v1, -0x1

    iput v1, p0, Lcom/jcraft/jogg/StreamState;->pageno:I

    .line 522
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    .line 523
    iput-wide v1, p0, Lcom/jcraft/jogg/StreamState;->granulepos:J

    .line 524
    return v0
.end method
