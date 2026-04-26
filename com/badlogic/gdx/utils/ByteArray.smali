.class public Lcom/badlogic/gdx/utils/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field public items:[B

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"  # I

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ByteArray;)V
    .registers 6
    .param p1, "array"  # Lcom/badlogic/gdx/utils/ByteArray;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4
    .param p1, "ordered"  # Z
    .param p2, "capacity"  # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    .line 46
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 47
    return-void
.end method

.method public constructor <init>(Z[BII)V
    .registers 7
    .param p1, "ordered"  # Z
    .param p2, "array"  # [B
    .param p3, "startIndex"  # I
    .param p4, "count"  # I

    .line 70
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(ZI)V

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "array"  # [B

    .line 62
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(Z[BII)V

    .line 63
    return-void
.end method

.method public static varargs with([B)Lcom/badlogic/gdx/utils/ByteArray;
    .registers 2
    .param p0, "array"  # [B

    .line 432
    new-instance v0, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ByteArray;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public add(B)V
    .registers 5
    .param p1, "value"  # B

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 77
    .local v0, "items":[B
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_18

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    move-result-object v0

    .line 78
    :cond_18
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aput-byte p1, v0, v1

    .line 79
    return-void
.end method

.method public add(BB)V
    .registers 6
    .param p1, "value1"  # B
    .param p2, "value2"  # B

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 83
    .local v0, "items":[B
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    move-result-object v0

    .line 84
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aput-byte p1, v0, v1

    .line 85
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-byte p2, v0, v1

    .line 86
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 87
    return-void
.end method

.method public add(BBB)V
    .registers 7
    .param p1, "value1"  # B
    .param p2, "value2"  # B
    .param p3, "value3"  # B

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 91
    .local v0, "items":[B
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x2

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    move-result-object v0

    .line 92
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aput-byte p1, v0, v1

    .line 93
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-byte p2, v0, v1

    .line 94
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput-byte p3, v0, v1

    .line 95
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 96
    return-void
.end method

.method public add(BBBB)V
    .registers 8
    .param p1, "value1"  # B
    .param p2, "value2"  # B
    .param p3, "value3"  # B
    .param p4, "value4"  # B

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 100
    .local v0, "items":[B
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x3

    array-length v2, v0

    if-lt v1, v2, :cond_1b

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v1, v1

    const v2, 0x3fe66666  # 1.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    move-result-object v0

    .line 101
    :cond_1b
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aput-byte p1, v0, v1

    .line 102
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-byte p2, v0, v1

    .line 103
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput-byte p3, v0, v1

    .line 104
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x3

    aput-byte p4, v0, v1

    .line 105
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 106
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ByteArray;)V
    .registers 5
    .param p1, "array"  # Lcom/badlogic/gdx/utils/ByteArray;

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/ByteArray;->addAll([BII)V

    .line 110
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ByteArray;II)V
    .registers 7
    .param p1, "array"  # Lcom/badlogic/gdx/utils/ByteArray;
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 113
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-gt v0, v1, :cond_c

    .line 115
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/ByteArray;->addAll([BII)V

    .line 116
    return-void

    .line 114
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([B)V
    .registers 4
    .param p1, "array"  # [B

    .line 119
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->addAll([BII)V

    .line 120
    return-void
.end method

.method public addAll([BII)V
    .registers 9
    .param p1, "array"  # [B
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 124
    .local v0, "items":[B
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/2addr v1, p3

    .line 125
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-le v1, v2, :cond_1d

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v3, v3

    const/high16 v4, 0x3fe00000  # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    move-result-object v0

    .line 126
    :cond_1d
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 128
    return-void
.end method

.method public clear()V
    .registers 2

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 301
    return-void
.end method

.method public contains(B)Z
    .registers 6
    .param p1, "value"  # B

    .line 194
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 195
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 196
    .local v2, "items":[B
    :goto_6
    if-ltz v0, :cond_11

    .line 197
    add-int/lit8 v3, v0, -0x1

    .end local v0  # "i":I
    .local v3, "i":I
    aget-byte v0, v2, v0

    if-ne v0, p1, :cond_f

    return v1

    :cond_f
    move v0, v3

    goto :goto_6

    .line 198
    .end local v3  # "i":I
    .restart local v0  # "i":I
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)[B
    .registers 6
    .param p1, "additionalCapacity"  # I

    .line 315
    if-ltz p1, :cond_21

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/2addr v0, p1

    .line 317
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    array-length v1, v1

    if-le v0, v1, :cond_1e

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    .line 318
    :cond_1e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    return-object v1

    .line 315
    .end local v0  # "sizeNeeded":I
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "object"  # Ljava/lang/Object;

    .line 391
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 392
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 393
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ByteArray;

    if-nez v1, :cond_f

    return v2

    .line 394
    :cond_f
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ByteArray;

    .line 395
    .local v1, "array":Lcom/badlogic/gdx/utils/ByteArray;
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    if-nez v3, :cond_17

    return v2

    .line 396
    :cond_17
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 397
    .local v3, "n":I
    iget v4, v1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-eq v3, v4, :cond_1e

    return v2

    .line 398
    :cond_1e
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .local v4, "items1":[B
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 399
    .local v5, "items2":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v3, :cond_2f

    .line 400
    aget-byte v7, v4, v6

    aget-byte v8, v5, v6

    if-eq v7, v8, :cond_2c

    return v2

    .line 399
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 401
    .end local v6  # "i":I
    :cond_2f
    return v0
.end method

.method public first()B
    .registers 3

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-eqz v0, :cond_a

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0

    .line 285
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)B
    .registers 5
    .param p1, "index"  # I

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge p1, v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    aget-byte v0, v0, p1

    return v0

    .line 131
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 7

    .line 381
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 382
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 383
    .local v0, "items":[B
    const/4 v1, 0x1

    .line 384
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .local v3, "n":I
    :goto_f
    if-ge v2, v3, :cond_1a

    .line 385
    mul-int/lit8 v4, v1, 0x1f

    aget-byte v5, v0, v2

    add-int v1, v4, v5

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 386
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_1a
    return v1
.end method

.method public incr(B)V
    .registers 6
    .param p1, "value"  # B

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 147
    .local v0, "items":[B
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_10

    .line 148
    aget-byte v3, v0, v1

    add-int/2addr v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 149
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_10
    return-void
.end method

.method public incr(IB)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # B

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge p1, v0, :cond_d

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    aget-byte v1, v0, p1

    add-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 143
    return-void

    .line 141
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(B)I
    .registers 6
    .param p1, "value"  # B

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 203
    .local v0, "items":[B
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_f

    .line 204
    aget-byte v3, v0, v1

    if-ne v3, p1, :cond_c

    return v1

    .line 203
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 205
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public insert(IB)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # B

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-gt p1, v0, :cond_38

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 165
    .local v0, "items":[B
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1c

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    move-result-object v0

    .line 166
    :cond_1c
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    if-eqz v1, :cond_29

    .line 167
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    .line 169
    :cond_29
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aget-byte v2, v0, p1

    aput-byte v2, v0, v1

    .line 170
    :goto_2f
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 171
    aput-byte p2, v0, p1

    .line 172
    return-void

    .line 163
    .end local v0  # "items":[B
    :cond_38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be > size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertRange(II)V
    .registers 8
    .param p1, "index"  # I
    .param p2, "count"  # I

    .line 177
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-gt p1, v0, :cond_32

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/2addr v0, p2

    .line 179
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    array-length v1, v1

    if-le v0, v1, :cond_23

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 180
    :cond_23
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    add-int v3, p1, p2

    iget v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iput v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 182
    return-void

    .line 177
    .end local v0  # "sizeNeeded":I
    :cond_32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be > size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 296
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public lastIndexOf(B)I
    .registers 5
    .param p1, "value"  # B

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 210
    .local v0, "items":[B
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_10

    .line 211
    aget-byte v2, v0, v1

    if-ne v2, p1, :cond_d

    return v1

    .line 210
    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 212
    .end local v1  # "i":I
    :cond_10
    const/4 v1, -0x1

    return v1
.end method

.method public mul(B)V
    .registers 6
    .param p1, "value"  # B

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 158
    .local v0, "items":[B
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_10

    .line 159
    aget-byte v3, v0, v1

    mul-int/2addr v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 160
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_10
    return-void
.end method

.method public mul(IB)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # B

    .line 152
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge p1, v0, :cond_d

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    aget-byte v1, v0, p1

    mul-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 154
    return-void

    .line 152
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 291
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()B
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public pop()B
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public random()B
    .registers 4

    .line 370
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 371
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    aget-byte v0, v0, v1

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/ByteArray;)Z
    .registers 10
    .param p1, "array"  # Lcom/badlogic/gdx/utils/ByteArray;

    .line 257
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 258
    .local v0, "size":I
    move v1, v0

    .line 259
    .local v1, "startSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 260
    .local v2, "items":[B
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .local v4, "n":I
    :goto_8
    if-ge v3, v4, :cond_21

    .line 261
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/ByteArray;->get(I)B

    move-result v5

    .line 262
    .local v5, "item":I
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_f
    if-ge v6, v0, :cond_1e

    .line 263
    aget-byte v7, v2, v6

    if-ne v5, v7, :cond_1b

    .line 264
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/ByteArray;->removeIndex(I)I

    .line 265
    add-int/lit8 v0, v0, -0x1

    .line 266
    goto :goto_1e

    .line 262
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 260
    .end local v5  # "item":I
    .end local v6  # "ii":I
    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 270
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_21
    if-eq v0, v1, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    return v3
.end method

.method public removeIndex(I)I
    .registers 6
    .param p1, "index"  # I

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge p1, v0, :cond_22

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 230
    .local v0, "items":[B
    aget-byte v1, v0, p1

    .line 231
    .local v1, "value":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 232
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    if-eqz v2, :cond_1b

    .line 233
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 235
    :cond_1b
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    aget-byte v2, v0, v2

    aput-byte v2, v0, p1

    .line 236
    :goto_21
    return v1

    .line 228
    .end local v0  # "items":[B
    .end local v1  # "value":I
    :cond_22
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRange(II)V
    .registers 10
    .param p1, "start"  # I
    .param p2, "end"  # I

    .line 241
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 242
    .local v0, "n":I
    if-ge p2, v0, :cond_55

    .line 243
    if-gt p1, p2, :cond_32

    .line 244
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    .local v1, "count":I
    sub-int v2, v0, v1

    .line 245
    .local v2, "lastIndex":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    if-eqz v3, :cond_1e

    .line 246
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    add-int v4, p1, v1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    add-int v6, p1, v1

    sub-int v6, v0, v6

    invoke-static {v3, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    .line 248
    :cond_1e
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 249
    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    sub-int v6, v0, v3

    invoke-static {v4, v3, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .end local v3  # "i":I
    :goto_2d
    sub-int v3, v0, v1

    iput v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 252
    return-void

    .line 243
    .end local v1  # "count":I
    .end local v2  # "lastIndex":I
    :cond_32
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start can\'t be > end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_55
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeValue(B)Z
    .registers 6
    .param p1, "value"  # B

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 217
    .local v0, "items":[B
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_13

    .line 218
    aget-byte v3, v0, v1

    if-ne v3, p1, :cond_10

    .line 219
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ByteArray;->removeIndex(I)I

    .line 220
    const/4 v3, 0x1

    return v3

    .line 217
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 223
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method protected resize(I)[B
    .registers 6
    .param p1, "newSize"  # I

    .line 331
    new-array v0, p1, [B

    .line 332
    .local v0, "newItems":[B
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 333
    .local v1, "items":[B
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 335
    return-object v0
.end method

.method public reverse()V
    .registers 8

    .line 343
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 344
    .local v0, "items":[B
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "lastIndex":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    div-int/lit8 v3, v3, 0x2

    .local v3, "n":I
    :goto_b
    if-ge v1, v3, :cond_1a

    .line 345
    sub-int v4, v2, v1

    .line 346
    .local v4, "ii":I
    aget-byte v5, v0, v1

    .line 347
    .local v5, "temp":B
    aget-byte v6, v0, v4

    aput-byte v6, v0, v1

    .line 348
    aput-byte v5, v0, v4

    .line 344
    .end local v4  # "ii":I
    .end local v5  # "temp":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 350
    .end local v1  # "i":I
    .end local v2  # "lastIndex":I
    .end local v3  # "n":I
    :cond_1a
    return-void
.end method

.method public set(IB)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # B

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge p1, v0, :cond_9

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    aput-byte p2, v0, p1

    .line 138
    return-void

    .line 136
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[B
    .registers 5
    .param p1, "newSize"  # I

    .line 324
    if-ltz p1, :cond_15

    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    array-length v0, v0

    if-le p1, v0, :cond_10

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    .line 326
    :cond_10
    iput p1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    return-object v0

    .line 324
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink()[B
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    .line 308
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    return-object v0
.end method

.method public shuffle()V
    .registers 6

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 354
    .local v0, "items":[B
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_17

    .line 355
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 356
    .local v2, "ii":I
    aget-byte v3, v0, v1

    .line 357
    .local v3, "temp":B
    aget-byte v4, v0, v2

    aput-byte v4, v0, v1

    .line 358
    aput-byte v3, v0, v2

    .line 354
    .end local v2  # "ii":I
    .end local v3  # "temp":B
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 360
    .end local v1  # "i":I
    :cond_17
    return-void
.end method

.method public sort()V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([BII)V

    .line 340
    return-void
.end method

.method public swap(II)V
    .registers 7
    .param p1, "first"  # I
    .param p2, "second"  # I

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_38

    .line 186
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge p2, v0, :cond_15

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 188
    .local v0, "items":[B
    aget-byte v1, v0, p1

    .line 189
    .local v1, "firstValue":B
    aget-byte v2, v0, p2

    aput-byte v2, v0, p1

    .line 190
    aput-byte v1, v0, p2

    .line 191
    return-void

    .line 186
    .end local v0  # "items":[B
    .end local v1  # "firstValue":B
    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "second can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[B
    .registers 5

    .line 375
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    new-array v0, v0, [B

    .line 376
    .local v0, "array":[B
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 405
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 407
    .local v0, "items":[B
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 408
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 409
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 410
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge v2, v3, :cond_2d

    .line 411
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 412
    aget-byte v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 414
    .end local v2  # "i":I
    :cond_2d
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 415
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "separator"  # Ljava/lang/String;

    .line 419
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 420
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 421
    .local v0, "items":[B
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 422
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 423
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge v2, v3, :cond_26

    .line 424
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 425
    aget-byte v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 427
    .end local v2  # "i":I
    :cond_26
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate(I)V
    .registers 3
    .param p1, "newSize"  # I

    .line 365
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-le v0, p1, :cond_6

    iput p1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 366
    :cond_6
    return-void
.end method
