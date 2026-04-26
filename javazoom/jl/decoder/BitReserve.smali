.class final Ljavazoom/jl/decoder/BitReserve;
.super Ljava/lang/Object;
.source "BitReserve.java"


# static fields
.field private static final BUFSIZE:I = 0x8000

.field private static final BUFSIZE_MASK:I = 0x7fff


# instance fields
.field private final buf:[I

.field private buf_byte_idx:I

.field private offset:I

.field private totbit:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x8000

    new-array v0, v0, [I

    iput-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Ljavazoom/jl/decoder/BitReserve;->offset:I

    .line 53
    iput v0, p0, Ljavazoom/jl/decoder/BitReserve;->totbit:I

    .line 54
    iput v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    .line 55
    return-void
.end method


# virtual methods
.method public hget1bit()I
    .registers 3

    .line 102
    iget v0, p0, Ljavazoom/jl/decoder/BitReserve;->totbit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavazoom/jl/decoder/BitReserve;->totbit:I

    .line 103
    iget-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    iget v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    aget v0, v0, v1

    .line 104
    .local v0, "val":I
    iget v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    .line 105
    return v0
.end method

.method public hgetbits(I)I
    .registers 8
    .param p1, "N"  # I

    .line 69
    iget v0, p0, Ljavazoom/jl/decoder/BitReserve;->totbit:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavazoom/jl/decoder/BitReserve;->totbit:I

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "val":I
    iget v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    .line 74
    .local v1, "pos":I
    add-int v2, v1, p1

    const v3, 0x8000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_26

    .line 75
    :goto_11
    add-int/lit8 v2, p1, -0x1

    .end local p1  # "N":I
    .local v2, "N":I
    if-lez p1, :cond_3c

    .line 76
    shl-int/lit8 p1, v0, 0x1

    .line 77
    .end local v0  # "val":I
    .local p1, "val":I
    iget-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    add-int/lit8 v3, v1, 0x1

    .end local v1  # "pos":I
    .local v3, "pos":I
    aget v0, v0, v1

    if-eqz v0, :cond_21

    move v0, v5

    goto :goto_22

    :cond_21
    move v0, v4

    :goto_22
    or-int/2addr v0, p1

    move p1, v2

    move v1, v3

    .end local p1  # "val":I
    .restart local v0  # "val":I
    goto :goto_11

    .line 80
    .end local v2  # "N":I
    .end local v3  # "pos":I
    .restart local v1  # "pos":I
    .local p1, "N":I
    :cond_26
    :goto_26
    add-int/lit8 v2, p1, -0x1

    .end local p1  # "N":I
    .restart local v2  # "N":I
    if-lez p1, :cond_3c

    .line 81
    shl-int/lit8 p1, v0, 0x1

    .line 82
    .end local v0  # "val":I
    .local p1, "val":I
    iget-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    aget v0, v0, v1

    if-eqz v0, :cond_34

    move v0, v5

    goto :goto_35

    :cond_34
    move v0, v4

    :goto_35
    or-int/2addr v0, p1

    .line 83
    .end local p1  # "val":I
    .restart local v0  # "val":I
    add-int/lit8 p1, v1, 0x1

    and-int/lit16 v1, p1, 0x7fff

    move p1, v2

    goto :goto_26

    .line 85
    :cond_3c
    iput v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    .line 86
    return v0
.end method

.method public hputbuf(I)V
    .registers 6
    .param p1, "val"  # I

    .line 130
    iget v0, p0, Ljavazoom/jl/decoder/BitReserve;->offset:I

    .line 131
    .local v0, "ofs":I
    iget-object v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    add-int/lit8 v2, v0, 0x1

    .end local v0  # "ofs":I
    .local v2, "ofs":I
    and-int/lit16 v3, p1, 0x80

    aput v3, v1, v0

    .line 132
    iget-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2  # "ofs":I
    .local v1, "ofs":I
    and-int/lit8 v3, p1, 0x40

    aput v3, v0, v2

    .line 133
    iget-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1  # "ofs":I
    .restart local v2  # "ofs":I
    and-int/lit8 v3, p1, 0x20

    aput v3, v0, v1

    .line 134
    iget-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2  # "ofs":I
    .restart local v1  # "ofs":I
    and-int/lit8 v3, p1, 0x10

    aput v3, v0, v2

    .line 135
    iget-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1  # "ofs":I
    .restart local v2  # "ofs":I
    and-int/lit8 v3, p1, 0x8

    aput v3, v0, v1

    .line 136
    iget-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2  # "ofs":I
    .restart local v1  # "ofs":I
    and-int/lit8 v3, p1, 0x4

    aput v3, v0, v2

    .line 137
    iget-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1  # "ofs":I
    .restart local v2  # "ofs":I
    and-int/lit8 v3, p1, 0x2

    aput v3, v0, v1

    .line 138
    iget-object v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2  # "ofs":I
    .restart local v1  # "ofs":I
    and-int/lit8 v3, p1, 0x1

    aput v3, v0, v2

    .line 140
    const v0, 0x8000

    if-ne v1, v0, :cond_4b

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Ljavazoom/jl/decoder/BitReserve;->offset:I

    goto :goto_4d

    .line 143
    :cond_4b
    iput v1, p0, Ljavazoom/jl/decoder/BitReserve;->offset:I

    .line 145
    :goto_4d
    return-void
.end method

.method public hsstell()I
    .registers 2

    .line 61
    iget v0, p0, Ljavazoom/jl/decoder/BitReserve;->totbit:I

    return v0
.end method

.method public rewindNbits(I)V
    .registers 4
    .param p1, "N"  # I

    .line 151
    iget v0, p0, Ljavazoom/jl/decoder/BitReserve;->totbit:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljavazoom/jl/decoder/BitReserve;->totbit:I

    .line 152
    iget v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    .line 153
    iget v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    if-gez v0, :cond_16

    iget v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    const v1, 0x8000

    add-int/2addr v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    .line 154
    :cond_16
    return-void
.end method

.method public rewindNbytes(I)V
    .registers 5
    .param p1, "N"  # I

    .line 160
    shl-int/lit8 v0, p1, 0x3

    .line 161
    .local v0, "bits":I
    iget v1, p0, Ljavazoom/jl/decoder/BitReserve;->totbit:I

    sub-int/2addr v1, v0

    iput v1, p0, Ljavazoom/jl/decoder/BitReserve;->totbit:I

    .line 162
    iget v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    sub-int/2addr v1, v0

    iput v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    .line 163
    iget v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    if-gez v1, :cond_18

    iget v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    const v2, 0x8000

    add-int/2addr v1, v2

    iput v1, p0, Ljavazoom/jl/decoder/BitReserve;->buf_byte_idx:I

    .line 164
    :cond_18
    return-void
.end method
