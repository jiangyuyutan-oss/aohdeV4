.class public Lcom/jcraft/jorbis/Info;
.super Ljava/lang/Object;
.source "Info.java"


# static fields
.field private static final OV_EBADPACKET:I = -0x88

.field private static final OV_ENOTAUDIO:I = -0x87

.field private static final VI_FLOORB:I = 0x2

.field private static final VI_MAPB:I = 0x1

.field private static final VI_RESB:I = 0x3

.field private static final VI_TIMEB:I = 0x1

.field private static final VI_WINDOWB:I = 0x1

.field private static _vorbis:[B


# instance fields
.field bitrate_lower:I

.field bitrate_nominal:I

.field bitrate_upper:I

.field blocksizes:[I

.field book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

.field books:I

.field public channels:I

.field envelopesa:I

.field floor_param:[Ljava/lang/Object;

.field floor_type:[I

.field floors:I

.field map_param:[Ljava/lang/Object;

.field map_type:[I

.field maps:I

.field mode_param:[Lcom/jcraft/jorbis/InfoMode;

.field modes:I

.field preecho_clamp:F

.field preecho_thresh:F

.field psy_param:[Lcom/jcraft/jorbis/PsyInfo;

.field psys:I

.field public rate:I

.field residue_param:[Ljava/lang/Object;

.field residue_type:[I

.field residues:I

.field time_param:[Ljava/lang/Object;

.field time_type:[I

.field times:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-string v0, "vorbis"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jorbis/Info;->_vorbis:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    .line 86
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    .line 87
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    .line 89
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    .line 90
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    .line 92
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    .line 93
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    .line 95
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    .line 96
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    .line 98
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    .line 100
    const/16 v0, 0x40

    new-array v0, v0, [Lcom/jcraft/jorbis/PsyInfo;

    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->psy_param:[Lcom/jcraft/jorbis/PsyInfo;

    return-void
.end method


# virtual methods
.method public blocksize(Lcom/jcraft/jogg/Packet;)I
    .registers 6
    .param p1, "op"  # Lcom/jcraft/jogg/Packet;

    .line 437
    new-instance v0, Lcom/jcraft/jogg/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jogg/Buffer;-><init>()V

    .line 441
    .local v0, "opb":Lcom/jcraft/jogg/Buffer;
    iget-object v1, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    iget v2, p1, Lcom/jcraft/jogg/Packet;->packet:I

    iget v3, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jogg/Buffer;->readinit([BII)V

    .line 444
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    if-eqz v2, :cond_18

    .line 446
    const/16 v1, -0x87

    return v1

    .line 449
    :cond_18
    const/4 v2, 0x0

    .line 450
    .local v2, "modebits":I
    iget v3, p0, Lcom/jcraft/jorbis/Info;->modes:I

    .line 451
    .local v3, "v":I
    :goto_1b
    if-le v3, v1, :cond_22

    .line 452
    add-int/lit8 v2, v2, 0x1

    .line 453
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 457
    :cond_22
    invoke-virtual {v0, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    .line 459
    .end local v2  # "modebits":I
    .end local v3  # "v":I
    .local v1, "mode":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2c

    .line 460
    const/16 v2, -0x88

    return v2

    .line 461
    :cond_2c
    iget-object v2, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/jcraft/jorbis/InfoMode;->blockflag:I

    aget v2, v2, v3

    return v2
.end method

.method public clear()V
    .registers 5

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/jcraft/jorbis/Info;->modes:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    .line 114
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aput-object v2, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v0  # "i":I
    :cond_d
    iput-object v2, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    .line 118
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_10
    iget v1, p0, Lcom/jcraft/jorbis/Info;->maps:I

    if-ge v0, v1, :cond_26

    .line 119
    sget-object v1, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v3, v3, v0

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/jcraft/jorbis/FuncMapping;->free_info(Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 121
    .end local v0  # "i":I
    :cond_26
    iput-object v2, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    .line 123
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_29
    iget v1, p0, Lcom/jcraft/jorbis/Info;->times:I

    if-ge v0, v1, :cond_3f

    .line 124
    sget-object v1, Lcom/jcraft/jorbis/FuncTime;->time_P:[Lcom/jcraft/jorbis/FuncTime;

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v3, v3, v0

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/jcraft/jorbis/FuncTime;->free_info(Ljava/lang/Object;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 126
    .end local v0  # "i":I
    :cond_3f
    iput-object v2, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    .line 128
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_42
    iget v1, p0, Lcom/jcraft/jorbis/Info;->floors:I

    if-ge v0, v1, :cond_58

    .line 129
    sget-object v1, Lcom/jcraft/jorbis/FuncFloor;->floor_P:[Lcom/jcraft/jorbis/FuncFloor;

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v3, v3, v0

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/jcraft/jorbis/FuncFloor;->free_info(Ljava/lang/Object;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 131
    .end local v0  # "i":I
    :cond_58
    iput-object v2, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    .line 133
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_5b
    iget v1, p0, Lcom/jcraft/jorbis/Info;->residues:I

    if-ge v0, v1, :cond_71

    .line 134
    sget-object v1, Lcom/jcraft/jorbis/FuncResidue;->residue_P:[Lcom/jcraft/jorbis/FuncResidue;

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v3, v3, v0

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/jcraft/jorbis/FuncResidue;->free_info(Ljava/lang/Object;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 136
    .end local v0  # "i":I
    :cond_71
    iput-object v2, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_74
    iget v1, p0, Lcom/jcraft/jorbis/Info;->books:I

    if-ge v0, v1, :cond_8c

    .line 144
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aget-object v1, v1, v0

    if-eqz v1, :cond_89

    .line 145
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    .line 146
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aput-object v2, v1, v0

    .line 142
    :cond_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 150
    .end local v0  # "i":I
    :cond_8c
    iput-object v2, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    .line 152
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_8f
    iget v1, p0, Lcom/jcraft/jorbis/Info;->psys:I

    if-ge v0, v1, :cond_9d

    .line 153
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->psy_param:[Lcom/jcraft/jorbis/PsyInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jcraft/jorbis/PsyInfo;->free()V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 156
    .end local v0  # "i":I
    :cond_9d
    return-void
.end method

.method public init()V
    .registers 2

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jorbis/Info;->rate:I

    .line 110
    return-void
.end method

.method pack_books(Lcom/jcraft/jogg/Buffer;)I
    .registers 9
    .param p1, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 383
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 384
    sget-object v0, Lcom/jcraft/jorbis/Info;->_vorbis:[B

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->write([B)V

    .line 387
    iget v0, p0, Lcom/jcraft/jorbis/Info;->books:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget v3, p0, Lcom/jcraft/jorbis/Info;->books:I

    if-ge v0, v3, :cond_26

    .line 389
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/jcraft/jorbis/StaticCodeBook;->pack(Lcom/jcraft/jogg/Buffer;)I

    move-result v3

    if-eqz v3, :cond_23

    .line 391
    const/4 v1, -0x1

    return v1

    .line 388
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 396
    .end local v0  # "i":I
    :cond_26
    iget v0, p0, Lcom/jcraft/jorbis/Info;->times:I

    sub-int/2addr v0, v2

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 397
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_2e
    iget v4, p0, Lcom/jcraft/jorbis/Info;->times:I

    const/16 v5, 0x10

    if-ge v0, v4, :cond_4d

    .line 398
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 399
    sget-object v4, Lcom/jcraft/jorbis/FuncTime;->time_P:[Lcom/jcraft/jorbis/FuncTime;

    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5, p1}, Lcom/jcraft/jorbis/FuncTime;->pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 403
    .end local v0  # "i":I
    :cond_4d
    iget v0, p0, Lcom/jcraft/jorbis/Info;->floors:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 404
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_54
    iget v4, p0, Lcom/jcraft/jorbis/Info;->floors:I

    if-ge v0, v4, :cond_71

    .line 405
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 406
    sget-object v4, Lcom/jcraft/jorbis/FuncFloor;->floor_P:[Lcom/jcraft/jorbis/FuncFloor;

    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v6, v6, v0

    aget-object v4, v4, v6

    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6, p1}, Lcom/jcraft/jorbis/FuncFloor;->pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 410
    .end local v0  # "i":I
    :cond_71
    iget v0, p0, Lcom/jcraft/jorbis/Info;->residues:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 411
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_78
    iget v4, p0, Lcom/jcraft/jorbis/Info;->residues:I

    if-ge v0, v4, :cond_95

    .line 412
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 413
    sget-object v4, Lcom/jcraft/jorbis/FuncResidue;->residue_P:[Lcom/jcraft/jorbis/FuncResidue;

    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v6, v6, v0

    aget-object v4, v4, v6

    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6, p1}, Lcom/jcraft/jorbis/FuncResidue;->pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 417
    .end local v0  # "i":I
    :cond_95
    iget v0, p0, Lcom/jcraft/jorbis/Info;->maps:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 418
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_9c
    iget v4, p0, Lcom/jcraft/jorbis/Info;->maps:I

    if-ge v0, v4, :cond_b9

    .line 419
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 420
    sget-object v4, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v6, v6, v0

    aget-object v4, v4, v6

    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    aget-object v6, v6, v0

    invoke-virtual {v4, p0, v6, p1}, Lcom/jcraft/jorbis/FuncMapping;->pack(Lcom/jcraft/jorbis/Info;Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 424
    .end local v0  # "i":I
    :cond_b9
    iget v0, p0, Lcom/jcraft/jorbis/Info;->modes:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 425
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_c0
    iget v3, p0, Lcom/jcraft/jorbis/Info;->modes:I

    if-ge v0, v3, :cond_eb

    .line 426
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jcraft/jorbis/InfoMode;->blockflag:I

    invoke-virtual {p1, v3, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 427
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jcraft/jorbis/InfoMode;->windowtype:I

    invoke-virtual {p1, v3, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 428
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jcraft/jorbis/InfoMode;->transformtype:I

    invoke-virtual {p1, v3, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 429
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    invoke-virtual {p1, v3, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    .line 431
    .end local v0  # "i":I
    :cond_eb
    invoke-virtual {p1, v2, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method pack_info(Lcom/jcraft/jogg/Buffer;)I
    .registers 7
    .param p1, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 364
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 365
    sget-object v2, Lcom/jcraft/jorbis/Info;->_vorbis:[B

    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->write([B)V

    .line 368
    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 369
    iget v4, p0, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-virtual {p1, v4, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 370
    iget v1, p0, Lcom/jcraft/jorbis/Info;->rate:I

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 372
    iget v1, p0, Lcom/jcraft/jorbis/Info;->bitrate_upper:I

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 373
    iget v1, p0, Lcom/jcraft/jorbis/Info;->bitrate_nominal:I

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 374
    iget v1, p0, Lcom/jcraft/jorbis/Info;->bitrate_lower:I

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 376
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v2

    invoke-static {v1}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v1

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 377
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 378
    invoke-virtual {p1, v0, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 379
    return v2
.end method

.method public synthesis_headerin(Lcom/jcraft/jorbis/Comment;Lcom/jcraft/jogg/Packet;)I
    .registers 9
    .param p1, "vc"  # Lcom/jcraft/jorbis/Comment;
    .param p2, "op"  # Lcom/jcraft/jogg/Packet;

    .line 312
    new-instance v0, Lcom/jcraft/jogg/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jogg/Buffer;-><init>()V

    .line 314
    .local v0, "opb":Lcom/jcraft/jogg/Buffer;
    const/4 v1, -0x1

    if-eqz p2, :cond_75

    .line 315
    iget-object v2, p2, Lcom/jcraft/jogg/Packet;->packet_base:[B

    iget v3, p2, Lcom/jcraft/jogg/Packet;->packet:I

    iget v4, p2, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/jcraft/jogg/Buffer;->readinit([BII)V

    .line 320
    const/4 v2, 0x6

    new-array v3, v2, [B

    .line 321
    .local v3, "buffer":[B
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    .line 322
    .local v4, "packtype":I
    invoke-virtual {v0, v3, v2}, Lcom/jcraft/jogg/Buffer;->read([BI)V

    .line 323
    const/4 v2, 0x0

    aget-byte v2, v3, v2

    const/16 v5, 0x76

    if-ne v2, v5, :cond_74

    const/4 v2, 0x1

    aget-byte v2, v3, v2

    const/16 v5, 0x6f

    if-ne v2, v5, :cond_74

    const/4 v2, 0x2

    aget-byte v2, v3, v2

    const/16 v5, 0x72

    if-ne v2, v5, :cond_74

    const/4 v2, 0x3

    aget-byte v2, v3, v2

    const/16 v5, 0x62

    if-ne v2, v5, :cond_74

    const/4 v2, 0x4

    aget-byte v2, v3, v2

    const/16 v5, 0x69

    if-ne v2, v5, :cond_74

    const/4 v2, 0x5

    aget-byte v2, v3, v2

    const/16 v5, 0x73

    if-eq v2, v5, :cond_48

    goto :goto_74

    .line 328
    :cond_48
    packed-switch v4, :pswitch_data_76

    :pswitch_4b  #0x2, 0x4
    goto :goto_75

    .line 346
    :pswitch_4c  #0x5
    iget v2, p0, Lcom/jcraft/jorbis/Info;->rate:I

    if-eqz v2, :cond_5a

    iget-object v2, p1, Lcom/jcraft/jorbis/Comment;->vendor:[B

    if-nez v2, :cond_55

    goto :goto_5a

    .line 350
    :cond_55
    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/Info;->unpack_books(Lcom/jcraft/jogg/Buffer;)I

    move-result v1

    return v1

    .line 348
    :cond_5a
    :goto_5a
    return v1

    .line 340
    :pswitch_5b  #0x3
    iget v2, p0, Lcom/jcraft/jorbis/Info;->rate:I

    if-nez v2, :cond_60

    .line 342
    return v1

    .line 344
    :cond_60
    invoke-virtual {p1, v0}, Lcom/jcraft/jorbis/Comment;->unpack(Lcom/jcraft/jogg/Buffer;)I

    move-result v1

    return v1

    .line 330
    :pswitch_65  #0x1
    iget v2, p2, Lcom/jcraft/jogg/Packet;->b_o_s:I

    if-nez v2, :cond_6a

    .line 332
    return v1

    .line 334
    :cond_6a
    iget v2, p0, Lcom/jcraft/jorbis/Info;->rate:I

    if-eqz v2, :cond_6f

    .line 336
    return v1

    .line 338
    :cond_6f
    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/Info;->unpack_info(Lcom/jcraft/jogg/Buffer;)I

    move-result v1

    return v1

    .line 326
    :cond_74
    :goto_74
    return v1

    .line 358
    .end local v3  # "buffer":[B
    .end local v4  # "packtype":I
    :cond_75
    :goto_75
    return v1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_65  #00000001
        :pswitch_4b  #00000002
        :pswitch_5b  #00000003
        :pswitch_4b  #00000004
        :pswitch_4c  #00000005
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/jcraft/jorbis/Info;->version:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/jcraft/jorbis/Info;->rate:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/jcraft/jorbis/Info;->bitrate_upper:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/jcraft/jorbis/Info;->bitrate_nominal:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/jcraft/jorbis/Info;->bitrate_lower:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpack_books(Lcom/jcraft/jogg/Buffer;)I
    .registers 11
    .param p1, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 186
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jcraft/jorbis/Info;->books:I

    .line 188
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    array-length v1, v1

    iget v3, p0, Lcom/jcraft/jorbis/Info;->books:I

    if-eq v1, v3, :cond_1b

    .line 189
    :cond_15
    iget v1, p0, Lcom/jcraft/jorbis/Info;->books:I

    new-array v1, v1, [Lcom/jcraft/jorbis/StaticCodeBook;

    iput-object v1, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    .line 190
    :cond_1b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget v3, p0, Lcom/jcraft/jorbis/Info;->books:I

    const/4 v4, -0x1

    if-ge v1, v3, :cond_3b

    .line 191
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    new-instance v5, Lcom/jcraft/jorbis/StaticCodeBook;

    invoke-direct {v5}, Lcom/jcraft/jorbis/StaticCodeBook;-><init>()V

    aput-object v5, v3, v1

    .line 192
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/jcraft/jorbis/StaticCodeBook;->unpack(Lcom/jcraft/jogg/Buffer;)I

    move-result v3

    if-eqz v3, :cond_38

    .line 193
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 194
    return v4

    .line 190
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 199
    .end local v1  # "i":I
    :cond_3b
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jcraft/jorbis/Info;->times:I

    .line 200
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    array-length v3, v3

    iget v5, p0, Lcom/jcraft/jorbis/Info;->times:I

    if-eq v3, v5, :cond_54

    .line 201
    :cond_4e
    iget v3, p0, Lcom/jcraft/jorbis/Info;->times:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    .line 202
    :cond_54
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    array-length v3, v3

    iget v5, p0, Lcom/jcraft/jorbis/Info;->times:I

    if-eq v3, v5, :cond_65

    .line 203
    :cond_5f
    iget v3, p0, Lcom/jcraft/jorbis/Info;->times:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    .line 204
    :cond_65
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_66
    iget v5, p0, Lcom/jcraft/jorbis/Info;->times:I

    const/16 v6, 0x10

    if-ge v3, v5, :cond_a2

    .line 205
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    invoke-virtual {p1, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    aput v6, v5, v3

    .line 206
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v5, v5, v3

    if-ltz v5, :cond_9e

    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v5, v5, v3

    if-lt v5, v2, :cond_81

    goto :goto_9e

    .line 210
    :cond_81
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    sget-object v6, Lcom/jcraft/jorbis/FuncTime;->time_P:[Lcom/jcraft/jorbis/FuncTime;

    iget-object v7, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v7, v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6, p0, p1}, Lcom/jcraft/jorbis/FuncTime;->unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v3

    .line 211
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    aget-object v5, v5, v3

    if-nez v5, :cond_9b

    .line 212
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 213
    return v4

    .line 204
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 207
    :cond_9e
    :goto_9e
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 208
    return v4

    .line 218
    .end local v3  # "i":I
    :cond_a2
    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jcraft/jorbis/Info;->floors:I

    .line 219
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    if-eqz v3, :cond_b4

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    array-length v3, v3

    iget v5, p0, Lcom/jcraft/jorbis/Info;->floors:I

    if-eq v3, v5, :cond_ba

    .line 220
    :cond_b4
    iget v3, p0, Lcom/jcraft/jorbis/Info;->floors:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    .line 221
    :cond_ba
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    if-eqz v3, :cond_c5

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    array-length v3, v3

    iget v5, p0, Lcom/jcraft/jorbis/Info;->floors:I

    if-eq v3, v5, :cond_cb

    .line 222
    :cond_c5
    iget v3, p0, Lcom/jcraft/jorbis/Info;->floors:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    .line 224
    :cond_cb
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_cc
    iget v5, p0, Lcom/jcraft/jorbis/Info;->floors:I

    if-ge v3, v5, :cond_107

    .line 225
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    invoke-virtual {p1, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v7

    aput v7, v5, v3

    .line 226
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v5, v5, v3

    if-ltz v5, :cond_103

    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v5, v5, v3

    const/4 v7, 0x2

    if-lt v5, v7, :cond_e6

    goto :goto_103

    .line 231
    :cond_e6
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    sget-object v7, Lcom/jcraft/jorbis/FuncFloor;->floor_P:[Lcom/jcraft/jorbis/FuncFloor;

    iget-object v8, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v8, v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v7, p0, p1}, Lcom/jcraft/jorbis/FuncFloor;->unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v3

    .line 232
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    aget-object v5, v5, v3

    if-nez v5, :cond_100

    .line 233
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 234
    return v4

    .line 224
    :cond_100
    add-int/lit8 v3, v3, 0x1

    goto :goto_cc

    .line 227
    :cond_103
    :goto_103
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 228
    return v4

    .line 239
    .end local v3  # "i":I
    :cond_107
    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jcraft/jorbis/Info;->residues:I

    .line 241
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    if-eqz v3, :cond_119

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    array-length v3, v3

    iget v5, p0, Lcom/jcraft/jorbis/Info;->residues:I

    if-eq v3, v5, :cond_11f

    .line 242
    :cond_119
    iget v3, p0, Lcom/jcraft/jorbis/Info;->residues:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    .line 244
    :cond_11f
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    if-eqz v3, :cond_12a

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    array-length v3, v3

    iget v5, p0, Lcom/jcraft/jorbis/Info;->residues:I

    if-eq v3, v5, :cond_130

    .line 245
    :cond_12a
    iget v3, p0, Lcom/jcraft/jorbis/Info;->residues:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    .line 247
    :cond_130
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_131
    iget v5, p0, Lcom/jcraft/jorbis/Info;->residues:I

    if-ge v3, v5, :cond_16c

    .line 248
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    invoke-virtual {p1, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v7

    aput v7, v5, v3

    .line 249
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v5, v5, v3

    if-ltz v5, :cond_168

    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v5, v5, v3

    const/4 v7, 0x3

    if-lt v5, v7, :cond_14b

    goto :goto_168

    .line 253
    :cond_14b
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    sget-object v7, Lcom/jcraft/jorbis/FuncResidue;->residue_P:[Lcom/jcraft/jorbis/FuncResidue;

    iget-object v8, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v8, v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v7, p0, p1}, Lcom/jcraft/jorbis/FuncResidue;->unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v3

    .line 254
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    aget-object v5, v5, v3

    if-nez v5, :cond_165

    .line 255
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 256
    return v4

    .line 247
    :cond_165
    add-int/lit8 v3, v3, 0x1

    goto :goto_131

    .line 250
    :cond_168
    :goto_168
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 251
    return v4

    .line 261
    .end local v3  # "i":I
    :cond_16c
    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jcraft/jorbis/Info;->maps:I

    .line 262
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    if-eqz v3, :cond_17e

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    array-length v3, v3

    iget v5, p0, Lcom/jcraft/jorbis/Info;->maps:I

    if-eq v3, v5, :cond_184

    .line 263
    :cond_17e
    iget v3, p0, Lcom/jcraft/jorbis/Info;->maps:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    .line 264
    :cond_184
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    if-eqz v3, :cond_18f

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    array-length v3, v3

    iget v5, p0, Lcom/jcraft/jorbis/Info;->maps:I

    if-eq v3, v5, :cond_195

    .line 265
    :cond_18f
    iget v3, p0, Lcom/jcraft/jorbis/Info;->maps:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    .line 266
    :cond_195
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_196
    iget v5, p0, Lcom/jcraft/jorbis/Info;->maps:I

    if-ge v3, v5, :cond_1d0

    .line 267
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    invoke-virtual {p1, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v7

    aput v7, v5, v3

    .line 268
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v5, v5, v3

    if-ltz v5, :cond_1cc

    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v5, v5, v3

    if-lt v5, v2, :cond_1af

    goto :goto_1cc

    .line 272
    :cond_1af
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    sget-object v7, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    iget-object v8, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v8, v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v7, p0, p1}, Lcom/jcraft/jorbis/FuncMapping;->unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v3

    .line 273
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    aget-object v5, v5, v3

    if-nez v5, :cond_1c9

    .line 274
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 275
    return v4

    .line 266
    :cond_1c9
    add-int/lit8 v3, v3, 0x1

    goto :goto_196

    .line 269
    :cond_1cc
    :goto_1cc
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 270
    return v4

    .line 280
    .end local v3  # "i":I
    :cond_1d0
    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jcraft/jorbis/Info;->modes:I

    .line 281
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    if-eqz v1, :cond_1e2

    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    array-length v1, v1

    iget v3, p0, Lcom/jcraft/jorbis/Info;->modes:I

    if-eq v1, v3, :cond_1e8

    .line 282
    :cond_1e2
    iget v1, p0, Lcom/jcraft/jorbis/Info;->modes:I

    new-array v1, v1, [Lcom/jcraft/jorbis/InfoMode;

    iput-object v1, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    .line 283
    :cond_1e8
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_1e9
    iget v3, p0, Lcom/jcraft/jorbis/Info;->modes:I

    if-ge v1, v3, :cond_240

    .line 284
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    new-instance v5, Lcom/jcraft/jorbis/InfoMode;

    invoke-direct {v5}, Lcom/jcraft/jorbis/InfoMode;-><init>()V

    aput-object v5, v3, v1

    .line 285
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v1

    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    iput v5, v3, Lcom/jcraft/jorbis/InfoMode;->blockflag:I

    .line 286
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v1

    invoke-virtual {p1, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    iput v5, v3, Lcom/jcraft/jorbis/InfoMode;->windowtype:I

    .line 287
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v1

    invoke-virtual {p1, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    iput v5, v3, Lcom/jcraft/jorbis/InfoMode;->transformtype:I

    .line 288
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v1

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    iput v5, v3, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    .line 290
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/jcraft/jorbis/InfoMode;->windowtype:I

    if-ge v3, v2, :cond_23c

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/jcraft/jorbis/InfoMode;->transformtype:I

    if-ge v3, v2, :cond_23c

    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    iget v5, p0, Lcom/jcraft/jorbis/Info;->maps:I

    if-lt v3, v5, :cond_239

    goto :goto_23c

    .line 283
    :cond_239
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e9

    .line 293
    :cond_23c
    :goto_23c
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 294
    return v4

    .line 298
    .end local v1  # "i":I
    :cond_240
    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v0

    if-eq v0, v2, :cond_24a

    .line 299
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 300
    return v4

    .line 303
    :cond_24a
    const/4 v0, 0x0

    return v0
.end method

.method unpack_info(Lcom/jcraft/jogg/Buffer;)I
    .registers 9
    .param p1, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 160
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    iput v1, p0, Lcom/jcraft/jorbis/Info;->version:I

    .line 161
    iget v1, p0, Lcom/jcraft/jorbis/Info;->version:I

    const/4 v2, -0x1

    if-eqz v1, :cond_e

    .line 162
    return v2

    .line 164
    :cond_e
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, p0, Lcom/jcraft/jorbis/Info;->channels:I

    .line 165
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, p0, Lcom/jcraft/jorbis/Info;->rate:I

    .line 167
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, p0, Lcom/jcraft/jorbis/Info;->bitrate_upper:I

    .line 168
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, p0, Lcom/jcraft/jorbis/Info;->bitrate_nominal:I

    .line 169
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jorbis/Info;->bitrate_lower:I

    .line 171
    iget-object v0, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    const/4 v6, 0x0

    aput v4, v0, v6

    .line 172
    iget-object v0, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    shl-int v3, v5, v3

    aput v3, v0, v5

    .line 174
    iget v0, p0, Lcom/jcraft/jorbis/Info;->rate:I

    if-lt v0, v5, :cond_65

    iget v0, p0, Lcom/jcraft/jorbis/Info;->channels:I

    if-lt v0, v5, :cond_65

    iget-object v0, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v0, v0, v6

    if-lt v0, v1, :cond_65

    iget-object v0, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v6

    if-lt v0, v1, :cond_65

    invoke-virtual {p1, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v0

    if-eq v0, v5, :cond_64

    goto :goto_65

    .line 179
    :cond_64
    return v6

    .line 176
    :cond_65
    :goto_65
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 177
    return v2
.end method
