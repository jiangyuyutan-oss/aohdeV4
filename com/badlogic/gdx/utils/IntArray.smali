.class public Lcom/badlogic/gdx/utils/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field public items:[I

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"  # I

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntArray;)V
    .registers 6
    .param p1, "array"  # Lcom/badlogic/gdx/utils/IntArray;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    .line 46
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 47
    return-void
.end method

.method public constructor <init>(Z[III)V
    .registers 7
    .param p1, "ordered"  # Z
    .param p2, "array"  # [I
    .param p3, "startIndex"  # I
    .param p4, "count"  # I

    .line 70
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([I)V
    .registers 5
    .param p1, "array"  # [I

    .line 62
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(Z[III)V

    .line 63
    return-void
.end method

.method public static varargs with([I)Lcom/badlogic/gdx/utils/IntArray;
    .registers 2
    .param p0, "array"  # [I

    .line 431
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntArray;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 5
    .param p1, "value"  # I

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 77
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_18

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 78
    :cond_18
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    .line 79
    return-void
.end method

.method public add(II)V
    .registers 6
    .param p1, "value1"  # I
    .param p2, "value2"  # I

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 83
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 84
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    .line 85
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 86
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 87
    return-void
.end method

.method public add(III)V
    .registers 7
    .param p1, "value1"  # I
    .param p2, "value2"  # I
    .param p3, "value3"  # I

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 91
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x2

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 92
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    .line 93
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 94
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 95
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 96
    return-void
.end method

.method public add(IIII)V
    .registers 8
    .param p1, "value1"  # I
    .param p2, "value2"  # I
    .param p3, "value3"  # I
    .param p4, "value4"  # I

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 100
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x3

    array-length v2, v0

    if-lt v1, v2, :cond_1b

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v1, v1

    const v2, 0x3fe66666  # 1.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 101
    :cond_1b
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    .line 102
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 103
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 104
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x3

    aput p4, v0, v1

    .line 105
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 106
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;)V
    .registers 5
    .param p1, "array"  # Lcom/badlogic/gdx/utils/IntArray;

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->addAll([III)V

    .line 110
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;II)V
    .registers 7
    .param p1, "array"  # Lcom/badlogic/gdx/utils/IntArray;
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 113
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-gt v0, v1, :cond_c

    .line 115
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/IntArray;->addAll([III)V

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

    iget v2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([I)V
    .registers 4
    .param p1, "array"  # [I

    .line 119
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->addAll([III)V

    .line 120
    return-void
.end method

.method public addAll([III)V
    .registers 9
    .param p1, "array"  # [I
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 124
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v1, p3

    .line 125
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-le v1, v2, :cond_1d

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v3, v3

    const/high16 v4, 0x3fe00000  # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 126
    :cond_1d
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 128
    return-void
.end method

.method public clear()V
    .registers 2

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 301
    return-void
.end method

.method public contains(I)Z
    .registers 6
    .param p1, "value"  # I

    .line 194
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 195
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 196
    .local v2, "items":[I
    :goto_6
    if-ltz v0, :cond_11

    .line 197
    add-int/lit8 v3, v0, -0x1

    .end local v0  # "i":I
    .local v3, "i":I
    aget v0, v2, v0

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

.method public ensureCapacity(I)[I
    .registers 6
    .param p1, "additionalCapacity"  # I

    .line 315
    if-ltz p1, :cond_21

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v0, p1

    .line 317
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v1, v1

    if-le v0, v1, :cond_1e

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    .line 318
    :cond_1e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

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

    .line 390
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 391
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 392
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntArray;

    if-nez v1, :cond_f

    return v2

    .line 393
    :cond_f
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IntArray;

    .line 394
    .local v1, "array":Lcom/badlogic/gdx/utils/IntArray;
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-nez v3, :cond_17

    return v2

    .line 395
    :cond_17
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 396
    .local v3, "n":I
    iget v4, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-eq v3, v4, :cond_1e

    return v2

    .line 397
    :cond_1e
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .local v4, "items1":[I
    iget-object v5, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 398
    .local v5, "items2":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v3, :cond_2f

    .line 399
    aget v7, v4, v6

    aget v8, v5, v6

    if-eq v7, v8, :cond_2c

    return v2

    .line 398
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 400
    .end local v6  # "i":I
    :cond_2f
    return v0
.end method

.method public first()I
    .registers 3

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-eqz v0, :cond_a

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 285
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)I
    .registers 5
    .param p1, "index"  # I

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v0, v0, p1

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

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 382
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 383
    .local v0, "items":[I
    const/4 v1, 0x1

    .line 384
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v3, "n":I
    :goto_f
    if-ge v2, v3, :cond_1a

    .line 385
    mul-int/lit8 v4, v1, 0x1f

    aget v5, v0, v2

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

.method public incr(I)V
    .registers 6
    .param p1, "value"  # I

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 147
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_f

    .line 148
    aget v3, v0, v1

    add-int/2addr v3, p1

    aput v3, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 149
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_f
    return-void
.end method

.method public incr(II)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # I

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_c

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v0, p1

    add-int/2addr v1, p2

    aput v1, v0, p1

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

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(I)I
    .registers 6
    .param p1, "value"  # I

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 203
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_f

    .line 204
    aget v3, v0, v1

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

.method public insert(II)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # I

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-gt p1, v0, :cond_38

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 165
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1c

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 166
    :cond_1c
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v1, :cond_29

    .line 167
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    .line 169
    :cond_29
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v2, v0, p1

    aput v2, v0, v1

    .line 170
    :goto_2f
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 171
    aput p2, v0, p1

    .line 172
    return-void

    .line 163
    .end local v0  # "items":[I
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

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-gt p1, v0, :cond_32

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v0, p2

    .line 179
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v1, v1

    if-le v0, v1, :cond_23

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 180
    :cond_23
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int v3, p1, p2

    iget v4, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public lastIndexOf(I)I
    .registers 5
    .param p1, "value"  # I

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 210
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_10

    .line 211
    aget v2, v0, v1

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

.method public mul(I)V
    .registers 6
    .param p1, "value"  # I

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 158
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_f

    .line 159
    aget v3, v0, v1

    mul-int/2addr v3, p1

    aput v3, v0, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 160
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_f
    return-void
.end method

.method public mul(II)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # I

    .line 152
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_c

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v0, p1

    mul-int/2addr v1, p2

    aput v1, v0, p1

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

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()I
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()I
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v0, v0, v1

    return v0
.end method

.method public random()I
    .registers 4

    .line 370
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 371
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/IntArray;)Z
    .registers 10
    .param p1, "array"  # Lcom/badlogic/gdx/utils/IntArray;

    .line 257
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 258
    .local v0, "size":I
    move v1, v0

    .line 259
    .local v1, "startSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 260
    .local v2, "items":[I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v4, "n":I
    :goto_8
    if-ge v3, v4, :cond_21

    .line 261
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    .line 262
    .local v5, "item":I
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_f
    if-ge v6, v0, :cond_1e

    .line 263
    aget v7, v2, v6

    if-ne v5, v7, :cond_1b

    .line 264
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

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
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_22

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 230
    .local v0, "items":[I
    aget v1, v0, p1

    .line 231
    .local v1, "value":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 232
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v2, :cond_1b

    .line 233
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 235
    :cond_1b
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v2, v0, v2

    aput v2, v0, p1

    .line 236
    :goto_21
    return v1

    .line 228
    .end local v0  # "items":[I
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

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v3, :cond_1e

    .line 246
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int v4, p1, v1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

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
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    sub-int v6, v0, v3

    invoke-static {v4, v3, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .end local v3  # "i":I
    :goto_2d
    sub-int v3, v0, v1

    iput v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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

    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeValue(I)Z
    .registers 6
    .param p1, "value"  # I

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 217
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_13

    .line 218
    aget v3, v0, v1

    if-ne v3, p1, :cond_10

    .line 219
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

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

.method protected resize(I)[I
    .registers 6
    .param p1, "newSize"  # I

    .line 331
    new-array v0, p1, [I

    .line 332
    .local v0, "newItems":[I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 333
    .local v1, "items":[I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 335
    return-object v0
.end method

.method public reverse()V
    .registers 8

    .line 343
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 344
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "lastIndex":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v3, v3, 0x2

    .local v3, "n":I
    :goto_b
    if-ge v1, v3, :cond_1a

    .line 345
    sub-int v4, v2, v1

    .line 346
    .local v4, "ii":I
    aget v5, v0, v1

    .line 347
    .local v5, "temp":I
    aget v6, v0, v4

    aput v6, v0, v1

    .line 348
    aput v5, v0, v4

    .line 344
    .end local v4  # "ii":I
    .end local v5  # "temp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 350
    .end local v1  # "i":I
    .end local v2  # "lastIndex":I
    .end local v3  # "n":I
    :cond_1a
    return-void
.end method

.method public set(II)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # I

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_9

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aput p2, v0, p1

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

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[I
    .registers 5
    .param p1, "newSize"  # I

    .line 324
    if-ltz p1, :cond_15

    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v0, v0

    if-le p1, v0, :cond_10

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    .line 326
    :cond_10
    iput p1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

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

.method public shrink()[I
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    .line 308
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    return-object v0
.end method

.method public shuffle()V
    .registers 6

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 354
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_17

    .line 355
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 356
    .local v2, "ii":I
    aget v3, v0, v1

    .line 357
    .local v3, "temp":I
    aget v4, v0, v2

    aput v4, v0, v1

    .line 358
    aput v3, v0, v2

    .line 354
    .end local v2  # "ii":I
    .end local v3  # "temp":I
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
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 340
    return-void
.end method

.method public swap(II)V
    .registers 7
    .param p1, "first"  # I
    .param p2, "second"  # I

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_38

    .line 186
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p2, v0, :cond_15

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 188
    .local v0, "items":[I
    aget v1, v0, p1

    .line 189
    .local v1, "firstValue":I
    aget v2, v0, p2

    aput v2, v0, p1

    .line 190
    aput v1, v0, p2

    .line 191
    return-void

    .line 186
    .end local v0  # "items":[I
    .end local v1  # "firstValue":I
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

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[I
    .registers 5

    .line 375
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    new-array v0, v0, [I

    .line 376
    .local v0, "array":[I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 404
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 405
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 406
    .local v0, "items":[I
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 407
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 408
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 409
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_2d

    .line 410
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 411
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 413
    .end local v2  # "i":I
    :cond_2d
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 414
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "separator"  # Ljava/lang/String;

    .line 418
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 419
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 420
    .local v0, "items":[I
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 421
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 422
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_26

    .line 423
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 424
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 426
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
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-le v0, p1, :cond_6

    iput p1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 366
    :cond_6
    return-void
.end method
