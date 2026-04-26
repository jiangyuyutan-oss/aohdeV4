.class public Lcom/jcraft/jorbis/Block;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field W:I

.field eofflag:I

.field floor_bits:I

.field glue_bits:I

.field granulepos:J

.field lW:I

.field mode:I

.field nW:I

.field opb:Lcom/jcraft/jogg/Buffer;

.field pcm:[[F

.field pcmend:I

.field res_bits:I

.field sequence:J

.field time_bits:I

.field vd:Lcom/jcraft/jorbis/DspState;


# direct methods
.method public constructor <init>(Lcom/jcraft/jorbis/DspState;)V
    .registers 3
    .param p1, "vd"  # Lcom/jcraft/jorbis/DspState;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    .line 34
    new-instance v0, Lcom/jcraft/jogg/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jogg/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    .line 54
    iput-object p1, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    .line 55
    iget v0, p1, Lcom/jcraft/jorbis/DspState;->analysisp:I

    if-eqz v0, :cond_1a

    .line 56
    iget-object v0, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->writeinit()V

    .line 58
    :cond_1a
    return-void
.end method


# virtual methods
.method public clear()I
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    if-eqz v0, :cond_f

    .line 66
    iget-object v0, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget v0, v0, Lcom/jcraft/jorbis/DspState;->analysisp:I

    if-eqz v0, :cond_f

    .line 67
    iget-object v0, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->writeclear()V

    .line 70
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/jcraft/jorbis/DspState;)V
    .registers 2
    .param p1, "vd"  # Lcom/jcraft/jorbis/DspState;

    .line 61
    iput-object p1, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    .line 62
    return-void
.end method

.method public synthesis(Lcom/jcraft/jogg/Packet;)I
    .registers 8
    .param p1, "op"  # Lcom/jcraft/jogg/Packet;

    .line 74
    iget-object v0, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v0, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    .line 77
    .local v0, "vi":Lcom/jcraft/jorbis/Info;
    iget-object v1, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget-object v2, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    iget v3, p1, Lcom/jcraft/jogg/Packet;->packet:I

    iget v4, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/jcraft/jogg/Buffer;->readinit([BII)V

    .line 80
    iget-object v1, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_1a

    .line 82
    return v3

    .line 86
    :cond_1a
    iget-object v1, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget-object v4, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget v4, v4, Lcom/jcraft/jorbis/DspState;->modebits:I

    invoke-virtual {v1, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    .line 87
    .local v1, "_mode":I
    if-ne v1, v3, :cond_27

    .line 88
    return v3

    .line 90
    :cond_27
    iput v1, p0, Lcom/jcraft/jorbis/Block;->mode:I

    .line 91
    iget-object v4, v0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    iget v5, p0, Lcom/jcraft/jorbis/Block;->mode:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jcraft/jorbis/InfoMode;->blockflag:I

    iput v4, p0, Lcom/jcraft/jorbis/Block;->W:I

    .line 92
    iget v4, p0, Lcom/jcraft/jorbis/Block;->W:I

    if-eqz v4, :cond_4c

    .line 93
    iget-object v4, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v4, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    iput v4, p0, Lcom/jcraft/jorbis/Block;->lW:I

    .line 94
    iget-object v4, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v4, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, p0, Lcom/jcraft/jorbis/Block;->nW:I

    .line 95
    iget v2, p0, Lcom/jcraft/jorbis/Block;->nW:I

    if-ne v2, v3, :cond_51

    .line 96
    return v3

    .line 99
    :cond_4c
    const/4 v2, 0x0

    iput v2, p0, Lcom/jcraft/jorbis/Block;->lW:I

    .line 100
    iput v2, p0, Lcom/jcraft/jorbis/Block;->nW:I

    .line 104
    :cond_51
    iget-wide v2, p1, Lcom/jcraft/jogg/Packet;->granulepos:J

    iput-wide v2, p0, Lcom/jcraft/jorbis/Block;->granulepos:J

    .line 105
    iget-wide v2, p1, Lcom/jcraft/jogg/Packet;->packetno:J

    const-wide/16 v4, 0x3

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jorbis/Block;->sequence:J

    .line 106
    iget v2, p1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    iput v2, p0, Lcom/jcraft/jorbis/Block;->eofflag:I

    .line 109
    iget-object v2, v0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v3, p0, Lcom/jcraft/jorbis/Block;->W:I

    aget v2, v2, v3

    iput v2, p0, Lcom/jcraft/jorbis/Block;->pcmend:I

    .line 110
    iget-object v2, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    array-length v2, v2

    iget v3, v0, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_75

    .line 111
    iget v2, v0, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v2, v2, [[F

    iput-object v2, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    .line 113
    :cond_75
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_76
    iget v3, v0, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_a4

    .line 114
    iget-object v3, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v3, v3, v2

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v3, v3, v2

    array-length v3, v3

    iget v4, p0, Lcom/jcraft/jorbis/Block;->pcmend:I

    if-ge v3, v4, :cond_8a

    goto :goto_99

    .line 118
    :cond_8a
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_8b
    iget v4, p0, Lcom/jcraft/jorbis/Block;->pcmend:I

    if-ge v3, v4, :cond_a1

    .line 119
    iget-object v4, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aput v5, v4, v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 115
    .end local v3  # "j":I
    :cond_99
    :goto_99
    iget-object v3, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    iget v4, p0, Lcom/jcraft/jorbis/Block;->pcmend:I

    new-array v4, v4, [F

    aput-object v4, v3, v2

    .line 113
    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 125
    .end local v2  # "i":I
    :cond_a4
    iget-object v2, v0, Lcom/jcraft/jorbis/Info;->map_type:[I

    iget-object v3, v0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    iget v4, p0, Lcom/jcraft/jorbis/Block;->mode:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    aget v2, v2, v3

    .line 126
    .local v2, "type":I
    sget-object v3, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v4, v4, Lcom/jcraft/jorbis/DspState;->mode:[Ljava/lang/Object;

    iget v5, p0, Lcom/jcraft/jorbis/Block;->mode:I

    aget-object v4, v4, v5

    invoke-virtual {v3, p0, v4}, Lcom/jcraft/jorbis/FuncMapping;->inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;)I

    move-result v3

    return v3
.end method
