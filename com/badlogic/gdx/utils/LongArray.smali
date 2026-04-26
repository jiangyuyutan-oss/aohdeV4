.class public Lcom/badlogic/gdx/utils/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# instance fields
.field public items:[J

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"  # I

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/LongArray;)V
    .registers 6
    .param p1, "array"  # Lcom/badlogic/gdx/utils/LongArray;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

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
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    .line 46
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 47
    return-void
.end method

.method public constructor <init>(Z[JII)V
    .registers 7
    .param p1, "ordered"  # Z
    .param p2, "array"  # [J
    .param p3, "startIndex"  # I
    .param p4, "count"  # I

    .line 70
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([J)V
    .registers 5
    .param p1, "array"  # [J

    .line 62
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(Z[JII)V

    .line 63
    return-void
.end method

.method public static varargs with([J)Lcom/badlogic/gdx/utils/LongArray;
    .registers 2
    .param p0, "array"  # [J

    .line 433
    new-instance v0, Lcom/badlogic/gdx/utils/LongArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongArray;-><init>([J)V

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .registers 6
    .param p1, "value"  # J

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 77
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_18

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 78
    :cond_18
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aput-wide p1, v0, v1

    .line 79
    return-void
.end method

.method public add(JJ)V
    .registers 8
    .param p1, "value1"  # J
    .param p3, "value2"  # J

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 83
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 84
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aput-wide p1, v0, v1

    .line 85
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-wide p3, v0, v1

    .line 86
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 87
    return-void
.end method

.method public add(JJJ)V
    .registers 10
    .param p1, "value1"  # J
    .param p3, "value2"  # J
    .param p5, "value3"  # J

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 91
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x2

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 92
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aput-wide p1, v0, v1

    .line 93
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-wide p3, v0, v1

    .line 94
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput-wide p5, v0, v1

    .line 95
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 96
    return-void
.end method

.method public add(JJJJ)V
    .registers 12
    .param p1, "value1"  # J
    .param p3, "value2"  # J
    .param p5, "value3"  # J
    .param p7, "value4"  # J

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 100
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x3

    array-length v2, v0

    if-lt v1, v2, :cond_1b

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v1, v1

    const v2, 0x3fe66666  # 1.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 101
    :cond_1b
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aput-wide p1, v0, v1

    .line 102
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-wide p3, v0, v1

    .line 103
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput-wide p5, v0, v1

    .line 104
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x3

    aput-wide p7, v0, v1

    .line 105
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 106
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/LongArray;)V
    .registers 5
    .param p1, "array"  # Lcom/badlogic/gdx/utils/LongArray;

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/LongArray;->addAll([JII)V

    .line 110
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/LongArray;II)V
    .registers 7
    .param p1, "array"  # Lcom/badlogic/gdx/utils/LongArray;
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 113
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-gt v0, v1, :cond_c

    .line 115
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/LongArray;->addAll([JII)V

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

    iget v2, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([J)V
    .registers 4
    .param p1, "array"  # [J

    .line 119
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;->addAll([JII)V

    .line 120
    return-void
.end method

.method public addAll([JII)V
    .registers 9
    .param p1, "array"  # [J
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 124
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/2addr v1, p3

    .line 125
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-le v1, v2, :cond_1d

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v3, v3

    const/high16 v4, 0x3fe00000  # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 126
    :cond_1d
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 128
    return-void
.end method

.method public clear()V
    .registers 2

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 301
    return-void
.end method

.method public contains(J)Z
    .registers 9
    .param p1, "value"  # J

    .line 194
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 195
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 196
    .local v2, "items":[J
    :goto_6
    if-ltz v0, :cond_13

    .line 197
    add-int/lit8 v3, v0, -0x1

    .end local v0  # "i":I
    .local v3, "i":I
    aget-wide v4, v2, v0

    cmp-long v0, v4, p1

    if-nez v0, :cond_11

    return v1

    :cond_11
    move v0, v3

    goto :goto_6

    .line 198
    .end local v3  # "i":I
    .restart local v0  # "i":I
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)[J
    .registers 6
    .param p1, "additionalCapacity"  # I

    .line 315
    if-ltz p1, :cond_21

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/2addr v0, p1

    .line 317
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    array-length v1, v1

    if-le v0, v1, :cond_1e

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    .line 318
    :cond_1e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

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
    .registers 13
    .param p1, "object"  # Ljava/lang/Object;

    .line 392
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 393
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 394
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/LongArray;

    if-nez v1, :cond_f

    return v2

    .line 395
    :cond_f
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/LongArray;

    .line 396
    .local v1, "array":Lcom/badlogic/gdx/utils/LongArray;
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-nez v3, :cond_17

    return v2

    .line 397
    :cond_17
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 398
    .local v3, "n":I
    iget v4, v1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-eq v3, v4, :cond_1e

    return v2

    .line 399
    :cond_1e
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .local v4, "items1":[J
    iget-object v5, v1, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 400
    .local v5, "items2":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v3, :cond_31

    .line 401
    aget-wide v7, v4, v6

    aget-wide v9, v5, v6

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2e

    return v2

    .line 400
    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 402
    .end local v6  # "i":I
    :cond_31
    return v0
.end method

.method public first()J
    .registers 4

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-eqz v0, :cond_a

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1

    .line 285
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)J
    .registers 5
    .param p1, "index"  # I

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-ge p1, v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v1, v0, p1

    return-wide v1

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

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 10

    .line 381
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 382
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 383
    .local v0, "items":[J
    const/4 v1, 0x1

    .line 384
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v3, "n":I
    :goto_f
    if-ge v2, v3, :cond_20

    .line 385
    aget-wide v4, v0, v2

    .line 386
    .local v4, "item":J
    mul-int/lit8 v6, v1, 0x1f

    const/16 v7, 0x20

    ushr-long v7, v4, v7

    xor-long/2addr v7, v4

    long-to-int v7, v7

    add-int v1, v6, v7

    .line 384
    .end local v4  # "item":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 388
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_20
    return v1
.end method

.method public incr(IJ)V
    .registers 7
    .param p1, "index"  # I
    .param p2, "value"  # J

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-ge p1, v0, :cond_c

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    .line 143
    return-void

    .line 141
    :cond_c
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

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public incr(J)V
    .registers 8
    .param p1, "value"  # J

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 147
    .local v0, "items":[J
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_f

    .line 148
    aget-wide v3, v0, v1

    add-long/2addr v3, p1

    aput-wide v3, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 149
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_f
    return-void
.end method

.method public indexOf(J)I
    .registers 8
    .param p1, "value"  # J

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 203
    .local v0, "items":[J
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_11

    .line 204
    aget-wide v3, v0, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_e

    return v1

    .line 203
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 205
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_11
    const/4 v1, -0x1

    return v1
.end method

.method public insert(IJ)V
    .registers 8
    .param p1, "index"  # I
    .param p2, "value"  # J

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-gt p1, v0, :cond_38

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 165
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1c

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 166
    :cond_1c
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-eqz v1, :cond_29

    .line 167
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    .line 169
    :cond_29
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v2, v0, p1

    aput-wide v2, v0, v1

    .line 170
    :goto_2f
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 171
    aput-wide p2, v0, p1

    .line 172
    return-void

    .line 163
    .end local v0  # "items":[J
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

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

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
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-gt p1, v0, :cond_32

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/2addr v0, p2

    .line 179
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    array-length v1, v1

    if-le v0, v1, :cond_23

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 180
    :cond_23
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    add-int v3, p1, p2

    iget v4, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

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

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

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
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public lastIndexOf(C)I
    .registers 8
    .param p1, "value"  # C

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 210
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_13

    .line 211
    aget-wide v2, v0, v1

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    return v1

    .line 210
    :cond_10
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 212
    .end local v1  # "i":I
    :cond_13
    const/4 v1, -0x1

    return v1
.end method

.method public mul(IJ)V
    .registers 7
    .param p1, "index"  # I
    .param p2, "value"  # J

    .line 152
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-ge p1, v0, :cond_c

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v1, v0, p1

    mul-long/2addr v1, p2

    aput-wide v1, v0, p1

    .line 154
    return-void

    .line 152
    :cond_c
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

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mul(J)V
    .registers 8
    .param p1, "value"  # J

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 158
    .local v0, "items":[J
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_f

    .line 159
    aget-wide v3, v0, v1

    mul-long/2addr v3, p1

    aput-wide v3, v0, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 160
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_f
    return-void
.end method

.method public notEmpty()Z
    .registers 2

    .line 291
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()J
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public pop()J
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public random()J
    .registers 4

    .line 370
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 371
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/LongArray;)Z
    .registers 12
    .param p1, "array"  # Lcom/badlogic/gdx/utils/LongArray;

    .line 257
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 258
    .local v0, "size":I
    move v1, v0

    .line 259
    .local v1, "startSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 260
    .local v2, "items":[J
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v4, "n":I
    :goto_8
    if-ge v3, v4, :cond_23

    .line 261
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/LongArray;->get(I)J

    move-result-wide v5

    .line 262
    .local v5, "item":J
    const/4 v7, 0x0

    .local v7, "ii":I
    :goto_f
    if-ge v7, v0, :cond_20

    .line 263
    aget-wide v8, v2, v7

    cmp-long v8, v5, v8

    if-nez v8, :cond_1d

    .line 264
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/utils/LongArray;->removeIndex(I)J

    .line 265
    add-int/lit8 v0, v0, -0x1

    .line 266
    goto :goto_20

    .line 262
    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 260
    .end local v5  # "item":J
    .end local v7  # "ii":I
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 270
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_23
    if-eq v0, v1, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    return v3
.end method

.method public removeIndex(I)J
    .registers 7
    .param p1, "index"  # I

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-ge p1, v0, :cond_22

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 230
    .local v0, "items":[J
    aget-wide v1, v0, p1

    .line 231
    .local v1, "value":J
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 232
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-eqz v3, :cond_1b

    .line 233
    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    sub-int/2addr v4, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 235
    :cond_1b
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v3, v0, v3

    aput-wide v3, v0, p1

    .line 236
    :goto_21
    return-wide v1

    .line 228
    .end local v0  # "items":[J
    .end local v1  # "value":J
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

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

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
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

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
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-eqz v3, :cond_1e

    .line 246
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    add-int v4, p1, v1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

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
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    sub-int v6, v0, v3

    invoke-static {v4, v3, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .end local v3  # "i":I
    :goto_2d
    sub-int v3, v0, v1

    iput v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

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

    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeValue(J)Z
    .registers 8
    .param p1, "value"  # J

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 217
    .local v0, "items":[J
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_15

    .line 218
    aget-wide v3, v0, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_12

    .line 219
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->removeIndex(I)J

    .line 220
    const/4 v3, 0x1

    return v3

    .line 217
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 223
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method protected resize(I)[J
    .registers 6
    .param p1, "newSize"  # I

    .line 331
    new-array v0, p1, [J

    .line 332
    .local v0, "newItems":[J
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 333
    .local v1, "items":[J
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 335
    return-object v0
.end method

.method public reverse()V
    .registers 10

    .line 343
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 344
    .local v0, "items":[J
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "lastIndex":I
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    div-int/lit8 v3, v3, 0x2

    .local v3, "n":I
    :goto_b
    if-ge v1, v3, :cond_1a

    .line 345
    sub-int v4, v2, v1

    .line 346
    .local v4, "ii":I
    aget-wide v5, v0, v1

    .line 347
    .local v5, "temp":J
    aget-wide v7, v0, v4

    aput-wide v7, v0, v1

    .line 348
    aput-wide v5, v0, v4

    .line 344
    .end local v4  # "ii":I
    .end local v5  # "temp":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 350
    .end local v1  # "i":I
    .end local v2  # "lastIndex":I
    .end local v3  # "n":I
    :cond_1a
    return-void
.end method

.method public set(IJ)V
    .registers 7
    .param p1, "index"  # I
    .param p2, "value"  # J

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-ge p1, v0, :cond_9

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aput-wide p2, v0, p1

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

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[J
    .registers 5
    .param p1, "newSize"  # I

    .line 324
    if-ltz p1, :cond_15

    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    array-length v0, v0

    if-le p1, v0, :cond_10

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    .line 326
    :cond_10
    iput p1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

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

.method public shrink()[J
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    .line 308
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    return-object v0
.end method

.method public shuffle()V
    .registers 8

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 354
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_17

    .line 355
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 356
    .local v2, "ii":I
    aget-wide v3, v0, v1

    .line 357
    .local v3, "temp":J
    aget-wide v5, v0, v2

    aput-wide v5, v0, v1

    .line 358
    aput-wide v3, v0, v2

    .line 354
    .end local v2  # "ii":I
    .end local v3  # "temp":J
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
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([JII)V

    .line 340
    return-void
.end method

.method public swap(II)V
    .registers 8
    .param p1, "first"  # I
    .param p2, "second"  # I

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_38

    .line 186
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-ge p2, v0, :cond_15

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 188
    .local v0, "items":[J
    aget-wide v1, v0, p1

    .line 189
    .local v1, "firstValue":J
    aget-wide v3, v0, p2

    aput-wide v3, v0, p1

    .line 190
    aput-wide v1, v0, p2

    .line 191
    return-void

    .line 186
    .end local v0  # "items":[J
    .end local v1  # "firstValue":J
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

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

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

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[J
    .registers 5

    .line 375
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    new-array v0, v0, [J

    .line 376
    .local v0, "array":[J
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 406
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 407
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 408
    .local v0, "items":[J
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 409
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 410
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 411
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-ge v2, v3, :cond_2d

    .line 412
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 413
    aget-wide v3, v0, v2

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 415
    .end local v2  # "i":I
    :cond_2d
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 416
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "separator"  # Ljava/lang/String;

    .line 420
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 421
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 422
    .local v0, "items":[J
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 423
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 424
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-ge v2, v3, :cond_26

    .line 425
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 426
    aget-wide v3, v0, v2

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 428
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
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-le v0, p1, :cond_6

    iput p1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 366
    :cond_6
    return-void
.end method
