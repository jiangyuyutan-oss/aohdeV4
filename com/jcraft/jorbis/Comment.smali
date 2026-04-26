.class public Lcom/jcraft/jorbis/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# static fields
.field private static final OV_EIMPL:I = -0x82

.field private static _vendor:[B

.field private static _vorbis:[B


# instance fields
.field public comment_lengths:[I

.field public comments:I

.field public user_comments:[[B

.field public vendor:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-string v0, "vorbis"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jorbis/Comment;->_vorbis:[B

    .line 35
    const-string v0, "Xiphophorus libVorbis I 20000508"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jorbis/Comment;->_vendor:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private add([B)V
    .registers 8
    .param p1, "comment"  # [B

    .line 56
    iget v0, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [[B

    .line 57
    .local v0, "foo":[[B
    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 58
    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    iget v3, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :cond_12
    iput-object v0, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    .line 62
    iget v1, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 63
    .local v1, "goo":[I
    iget-object v3, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    if-eqz v3, :cond_25

    .line 64
    iget-object v3, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    iget v4, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    :cond_25
    iput-object v1, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    .line 68
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [B

    .line 69
    .local v3, "bar":[B
    array-length v4, p1

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget-object v2, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    iget v4, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    aput-object v3, v2, v4

    .line 71
    iget-object v2, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    iget v4, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    array-length v5, p1

    aput v5, v2, v4

    .line 72
    iget v2, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    .line 73
    iget-object v2, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    iget v4, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    const/4 v5, 0x0

    aput-object v5, v2, v4

    .line 74
    return-void
.end method

.method private query([BI)I
    .registers 9
    .param p1, "tag"  # [B
    .param p2, "count"  # I

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "i":I
    const/4 v1, 0x0

    .line 120
    .local v1, "found":I
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    .line 121
    .local v2, "fulltaglen":I
    new-array v3, v2, [B

    .line 122
    .local v3, "fulltag":[B
    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    array-length v4, p1

    const/16 v5, 0x3d

    aput-byte v5, v3, v4

    .line 125
    const/4 v0, 0x0

    :goto_12
    iget v4, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-ge v0, v4, :cond_28

    .line 126
    iget-object v4, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v4, v4, v0

    invoke-static {v4, v3, v2}, Lcom/jcraft/jorbis/Comment;->tagcompare([B[BI)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 127
    if-ne p2, v1, :cond_23

    .line 130
    return v0

    .line 133
    :cond_23
    add-int/lit8 v1, v1, 0x1

    .line 125
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 137
    :cond_28
    const/4 v4, -0x1

    return v4
.end method

.method static tagcompare([B[BI)Z
    .registers 9
    .param p0, "s1"  # [B
    .param p1, "s2"  # [B
    .param p2, "n"  # I

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "c":I
    :goto_1
    if-ge v0, p2, :cond_24

    .line 86
    aget-byte v1, p0, v0

    .line 87
    .local v1, "u1":B
    aget-byte v2, p1, v0

    .line 88
    .local v2, "u2":B
    const/16 v3, 0x5a

    const/16 v4, 0x41

    if-lt v3, v1, :cond_14

    if-lt v1, v4, :cond_14

    .line 89
    add-int/lit8 v5, v1, -0x41

    add-int/lit8 v5, v5, 0x61

    int-to-byte v1, v5

    .line 90
    :cond_14
    if-lt v3, v2, :cond_1d

    if-lt v2, v4, :cond_1d

    .line 91
    add-int/lit8 v3, v2, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-byte v2, v3

    .line 92
    :cond_1d
    if-eq v1, v2, :cond_21

    .line 93
    const/4 v3, 0x0

    return v3

    .line 95
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v1  # "u1":B
    .end local v2  # "u2":B
    :cond_24
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3
    .param p1, "comment"  # Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jorbis/Comment;->add([B)V

    .line 53
    return-void
.end method

.method public add_tag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "contents"  # Ljava/lang/String;

    .line 77
    if-nez p2, :cond_4

    .line 78
    const-string p2, ""

    .line 79
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/Comment;->add(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method clear()V
    .registers 4

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    .line 219
    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aput-object v2, v1, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    .end local v0  # "i":I
    :cond_d
    move-object v0, v2

    check-cast v0, [[B

    iput-object v2, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    .line 221
    iput-object v2, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    .line 222
    return-void
.end method

.method public getComment(I)Ljava/lang/String;
    .registers 6
    .param p1, "i"  # I

    .line 229
    iget v0, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-gt v0, p1, :cond_6

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v2, v2, p1

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 5

    .line 225
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    iget-object v2, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public header_out(Lcom/jcraft/jogg/Packet;)I
    .registers 7
    .param p1, "op"  # Lcom/jcraft/jogg/Packet;

    .line 201
    new-instance v0, Lcom/jcraft/jogg/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jogg/Buffer;-><init>()V

    .line 202
    .local v0, "opb":Lcom/jcraft/jogg/Buffer;
    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->writeinit()V

    .line 204
    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/Comment;->pack(Lcom/jcraft/jogg/Buffer;)I

    move-result v1

    if-eqz v1, :cond_11

    .line 205
    const/16 v1, -0x82

    return v1

    .line 207
    :cond_11
    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->bytes()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    .line 208
    const/4 v1, 0x0

    iput v1, p1, Lcom/jcraft/jogg/Packet;->packet:I

    .line 209
    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->bytes()I

    move-result v2

    iput v2, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    .line 210
    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->buffer()[B

    move-result-object v2

    iget-object v3, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    iget v4, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iput v1, p1, Lcom/jcraft/jogg/Packet;->b_o_s:I

    .line 212
    iput v1, p1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    .line 213
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/jcraft/jogg/Packet;->granulepos:J

    .line 214
    return v1
.end method

.method public init()V
    .registers 3

    .line 46
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[B

    iput-object v0, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    .line 48
    iput-object v0, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    .line 49
    return-void
.end method

.method pack(Lcom/jcraft/jogg/Buffer;)I
    .registers 6
    .param p1, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 176
    const/4 v0, 0x3

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 177
    sget-object v0, Lcom/jcraft/jorbis/Comment;->_vorbis:[B

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->write([B)V

    .line 180
    sget-object v0, Lcom/jcraft/jorbis/Comment;->_vendor:[B

    array-length v0, v0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 181
    sget-object v0, Lcom/jcraft/jorbis/Comment;->_vendor:[B

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->write([B)V

    .line 184
    iget v0, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 185
    iget v0, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    iget v3, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-ge v0, v3, :cond_42

    .line 187
    iget-object v3, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v3, v3, v0

    if-eqz v3, :cond_3c

    .line 188
    iget-object v3, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 189
    iget-object v3, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->write([B)V

    goto :goto_3f

    .line 192
    :cond_3c
    invoke-virtual {p1, v2, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 186
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 196
    .end local v0  # "i":I
    :cond_42
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 197
    return v2
.end method

.method public query(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "tag"  # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jorbis/Comment;->query(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "count"  # I

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jorbis/Comment;->query([BI)I

    move-result v0

    .line 106
    .local v0, "foo":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    .line 107
    return-object v2

    .line 108
    :cond_d
    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v1, v1, v0

    .line 109
    .local v1, "comment":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    iget-object v4, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    aget v4, v4, v0

    if-ge v3, v4, :cond_30

    .line 110
    aget-byte v4, v1, v3

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_2d

    .line 111
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    aget v5, v5, v0

    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v5, v6

    invoke-direct {v2, v1, v4, v5}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    .line 109
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 114
    .end local v3  # "i":I
    :cond_30
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vendor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    iget-object v3, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "foo":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    iget v2, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-ge v1, v2, :cond_4f

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nComment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v6, v6, v1

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v5, v4, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 240
    .end local v1  # "i":I
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    return-object v0
.end method

.method unpack(Lcom/jcraft/jogg/Buffer;)I
    .registers 10
    .param p1, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 141
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    .line 142
    .local v1, "vendorlen":I
    const/4 v2, -0x1

    if-gez v1, :cond_d

    .line 143
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Comment;->clear()V

    .line 144
    return v2

    .line 146
    :cond_d
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    .line 147
    iget-object v3, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    invoke-virtual {p1, v3, v1}, Lcom/jcraft/jogg/Buffer;->read([BI)V

    .line 148
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    .line 149
    iget v3, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-gez v3, :cond_26

    .line 150
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Comment;->clear()V

    .line 151
    return v2

    .line 153
    :cond_26
    iget v3, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [[B

    iput-object v3, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    .line 154
    iget v3, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    add-int/2addr v3, v4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    .line 156
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    iget v5, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-ge v3, v5, :cond_5a

    .line 157
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    .line 158
    .local v5, "len":I
    if-gez v5, :cond_44

    .line 159
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Comment;->clear()V

    .line 160
    return v2

    .line 162
    :cond_44
    iget-object v6, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    aput v5, v6, v3

    .line 163
    iget-object v6, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    add-int/lit8 v7, v5, 0x1

    new-array v7, v7, [B

    aput-object v7, v6, v3

    .line 164
    iget-object v6, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v6, v6, v3

    invoke-virtual {p1, v6, v5}, Lcom/jcraft/jogg/Buffer;->read([BI)V

    .line 156
    .end local v5  # "len":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 166
    .end local v3  # "i":I
    :cond_5a
    invoke-virtual {p1, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v0

    if-eq v0, v4, :cond_64

    .line 167
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Comment;->clear()V

    .line 168
    return v2

    .line 171
    :cond_64
    const/4 v0, 0x0

    return v0
.end method
