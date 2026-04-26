.class public Lcom/badlogic/gdx/utils/BooleanArray;
.super Ljava/lang/Object;
.source "BooleanArray.java"


# instance fields
.field public items:[Z

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"  # I

    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .registers 6
    .param p1, "array"  # Lcom/badlogic/gdx/utils/BooleanArray;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 58
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4
    .param p1, "ordered"  # Z
    .param p2, "capacity"  # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 48
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 49
    return-void
.end method

.method public constructor <init>(Z[ZII)V
    .registers 7
    .param p1, "ordered"  # Z
    .param p2, "array"  # [Z
    .param p3, "startIndex"  # I
    .param p4, "count"  # I

    .line 72
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 73
    iput p4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    return-void
.end method

.method public constructor <init>([Z)V
    .registers 5
    .param p1, "array"  # [Z

    .line 64
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(Z[ZII)V

    .line 65
    return-void
.end method

.method public static varargs with([Z)Lcom/badlogic/gdx/utils/BooleanArray;
    .registers 2
    .param p0, "array"  # [Z

    .line 375
    new-instance v0, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>([Z)V

    return-object v0
.end method


# virtual methods
.method public add(Z)V
    .registers 5
    .param p1, "value"  # Z

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 79
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_18

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 80
    :cond_18
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    .line 81
    return-void
.end method

.method public add(ZZ)V
    .registers 6
    .param p1, "value1"  # Z
    .param p2, "value2"  # Z

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 85
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 86
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    .line 87
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-boolean p2, v0, v1

    .line 88
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 89
    return-void
.end method

.method public add(ZZZ)V
    .registers 7
    .param p1, "value1"  # Z
    .param p2, "value2"  # Z
    .param p3, "value3"  # Z

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 93
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x2

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 94
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    .line 95
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-boolean p2, v0, v1

    .line 96
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput-boolean p3, v0, v1

    .line 97
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 98
    return-void
.end method

.method public add(ZZZZ)V
    .registers 8
    .param p1, "value1"  # Z
    .param p2, "value2"  # Z
    .param p3, "value3"  # Z
    .param p4, "value4"  # Z

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 102
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x3

    array-length v2, v0

    if-lt v1, v2, :cond_1b

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v1, v1

    const v2, 0x3fe66666  # 1.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 103
    :cond_1b
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    .line 104
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-boolean p2, v0, v1

    .line 105
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput-boolean p3, v0, v1

    .line 106
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x3

    aput-boolean p4, v0, v1

    .line 107
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 108
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .registers 5
    .param p1, "array"  # Lcom/badlogic/gdx/utils/BooleanArray;

    .line 111
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    .line 112
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;II)V
    .registers 7
    .param p1, "array"  # Lcom/badlogic/gdx/utils/BooleanArray;
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 115
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-gt v0, v1, :cond_c

    .line 117
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    .line 118
    return-void

    .line 116
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

    iget v2, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([Z)V
    .registers 4
    .param p1, "array"  # [Z

    .line 121
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    .line 122
    return-void
.end method

.method public addAll([ZII)V
    .registers 9
    .param p1, "array"  # [Z
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 126
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v1, p3

    .line 127
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-le v1, v2, :cond_1d

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v3, v3

    const/high16 v4, 0x3fe00000  # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 128
    :cond_1d
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 130
    return-void
.end method

.method public clear()V
    .registers 2

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 248
    return-void
.end method

.method public ensureCapacity(I)[Z
    .registers 6
    .param p1, "additionalCapacity"  # I

    .line 262
    if-ltz p1, :cond_21

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v0, p1

    .line 264
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v1, v1

    if-le v0, v1, :cond_1e

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 265
    :cond_1e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v1

    .line 262
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

    .line 334
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 335
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 336
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;

    if-nez v1, :cond_f

    return v2

    .line 337
    :cond_f
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/BooleanArray;

    .line 338
    .local v1, "array":Lcom/badlogic/gdx/utils/BooleanArray;
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-nez v3, :cond_17

    return v2

    .line 339
    :cond_17
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 340
    .local v3, "n":I
    iget v4, v1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eq v3, v4, :cond_1e

    return v2

    .line 341
    :cond_1e
    iget-object v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .local v4, "items1":[Z
    iget-object v5, v1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 342
    .local v5, "items2":[Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v3, :cond_2f

    .line 343
    aget-boolean v7, v4, v6

    aget-boolean v8, v5, v6

    if-eq v7, v8, :cond_2c

    return v2

    .line 342
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 344
    .end local v6  # "i":I
    :cond_2f
    return v0
.end method

.method public first()Z
    .registers 3

    .line 232
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eqz v0, :cond_a

    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0

    .line 232
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Z
    .registers 5
    .param p1, "index"  # I

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_9

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 133
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

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 7

    .line 324
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 325
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 326
    .local v0, "items":[Z
    const/4 v1, 0x1

    .line 327
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .local v3, "n":I
    :goto_f
    if-ge v2, v3, :cond_21

    .line 328
    mul-int/lit8 v4, v1, 0x1f

    aget-boolean v5, v0, v2

    if-eqz v5, :cond_1a

    const/16 v5, 0x4cf

    goto :goto_1c

    :cond_1a
    const/16 v5, 0x4d5

    :goto_1c
    add-int v1, v4, v5

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 329
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_21
    return v1
.end method

.method public insert(IZ)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # Z

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-gt p1, v0, :cond_38

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 145
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1c

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 146
    :cond_1c
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v1, :cond_29

    .line 147
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    .line 149
    :cond_29
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v2, v0, p1

    aput-boolean v2, v0, v1

    .line 150
    :goto_2f
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 151
    aput-boolean p2, v0, p1

    .line 152
    return-void

    .line 143
    .end local v0  # "items":[Z
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

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    .line 157
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-gt p1, v0, :cond_32

    .line 158
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v0, p2

    .line 159
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v1, v1

    if-le v0, v1, :cond_23

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 160
    :cond_23
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    add-int v3, p1, p2

    iget v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 162
    return-void

    .line 157
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

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 243
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 238
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()Z
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public pop()Z
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public random()Z
    .registers 4

    .line 313
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 314
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/BooleanArray;)Z
    .registers 10
    .param p1, "array"  # Lcom/badlogic/gdx/utils/BooleanArray;

    .line 204
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 205
    .local v0, "size":I
    move v1, v0

    .line 206
    .local v1, "startSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 207
    .local v2, "items":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .local v4, "n":I
    :goto_8
    if-ge v3, v4, :cond_21

    .line 208
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/BooleanArray;->get(I)Z

    move-result v5

    .line 209
    .local v5, "item":Z
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_f
    if-ge v6, v0, :cond_1e

    .line 210
    aget-boolean v7, v2, v6

    if-ne v5, v7, :cond_1b

    .line 211
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/BooleanArray;->removeIndex(I)Z

    .line 212
    add-int/lit8 v0, v0, -0x1

    .line 213
    goto :goto_1e

    .line 209
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 207
    .end local v5  # "item":Z
    .end local v6  # "ii":I
    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 217
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

.method public removeIndex(I)Z
    .registers 6
    .param p1, "index"  # I

    .line 175
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_22

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 177
    .local v0, "items":[Z
    aget-boolean v1, v0, p1

    .line 178
    .local v1, "value":Z
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 179
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v2, :cond_1b

    .line 180
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 182
    :cond_1b
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v2, v0, v2

    aput-boolean v2, v0, p1

    .line 183
    :goto_21
    return v1

    .line 175
    .end local v0  # "items":[Z
    .end local v1  # "value":Z
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

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    .line 188
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 189
    .local v0, "n":I
    if-ge p2, v0, :cond_55

    .line 190
    if-gt p1, p2, :cond_32

    .line 191
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    .local v1, "count":I
    sub-int v2, v0, v1

    .line 192
    .local v2, "lastIndex":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v3, :cond_1e

    .line 193
    iget-object v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    add-int v4, p1, v1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    add-int v6, p1, v1

    sub-int v6, v0, v6

    invoke-static {v3, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    .line 195
    :cond_1e
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 196
    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget-object v5, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    sub-int v6, v0, v3

    invoke-static {v4, v3, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    .end local v3  # "i":I
    :goto_2d
    sub-int v3, v0, v1

    iput v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 199
    return-void

    .line 190
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

    .line 189
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

    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected resize(I)[Z
    .registers 6
    .param p1, "newSize"  # I

    .line 278
    new-array v0, p1, [Z

    .line 279
    .local v0, "newItems":[Z
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 280
    .local v1, "items":[Z
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 282
    return-object v0
.end method

.method public reverse()V
    .registers 8

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 287
    .local v0, "items":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "lastIndex":I
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    div-int/lit8 v3, v3, 0x2

    .local v3, "n":I
    :goto_b
    if-ge v1, v3, :cond_1a

    .line 288
    sub-int v4, v2, v1

    .line 289
    .local v4, "ii":I
    aget-boolean v5, v0, v1

    .line 290
    .local v5, "temp":Z
    aget-boolean v6, v0, v4

    aput-boolean v6, v0, v1

    .line 291
    aput-boolean v5, v0, v4

    .line 287
    .end local v4  # "ii":I
    .end local v5  # "temp":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 293
    .end local v1  # "i":I
    .end local v2  # "lastIndex":I
    .end local v3  # "n":I
    :cond_1a
    return-void
.end method

.method public set(IZ)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # Z

    .line 138
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aput-boolean p2, v0, p1

    .line 140
    return-void

    .line 138
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

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[Z
    .registers 5
    .param p1, "newSize"  # I

    .line 271
    if-ltz p1, :cond_15

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v0, v0

    if-le p1, v0, :cond_10

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 273
    :cond_10
    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v0

    .line 271
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

.method public shrink()[Z
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 255
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v0
.end method

.method public shuffle()V
    .registers 6

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 297
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_17

    .line 298
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 299
    .local v2, "ii":I
    aget-boolean v3, v0, v1

    .line 300
    .local v3, "temp":Z
    aget-boolean v4, v0, v2

    aput-boolean v4, v0, v1

    .line 301
    aput-boolean v3, v0, v2

    .line 297
    .end local v2  # "ii":I
    .end local v3  # "temp":Z
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 303
    .end local v1  # "i":I
    :cond_17
    return-void
.end method

.method public swap(II)V
    .registers 7
    .param p1, "first"  # I
    .param p2, "second"  # I

    .line 165
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_38

    .line 166
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p2, v0, :cond_15

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 168
    .local v0, "items":[Z
    aget-boolean v1, v0, p1

    .line 169
    .local v1, "firstValue":Z
    aget-boolean v2, v0, p2

    aput-boolean v2, v0, p1

    .line 170
    aput-boolean v1, v0, p2

    .line 171
    return-void

    .line 166
    .end local v0  # "items":[Z
    .end local v1  # "firstValue":Z
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

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
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

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[Z
    .registers 5

    .line 318
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    new-array v0, v0, [Z

    .line 319
    .local v0, "array":[Z
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 348
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 350
    .local v0, "items":[Z
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 351
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 352
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 353
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v2, v3, :cond_2d

    .line 354
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 355
    aget-boolean v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 357
    .end local v2  # "i":I
    :cond_2d
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 358
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "separator"  # Ljava/lang/String;

    .line 362
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 363
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 364
    .local v0, "items":[Z
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 365
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 366
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v2, v3, :cond_26

    .line 367
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 368
    aget-boolean v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 370
    .end local v2  # "i":I
    :cond_26
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate(I)V
    .registers 3
    .param p1, "newSize"  # I

    .line 308
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-le v0, p1, :cond_6

    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 309
    :cond_6
    return-void
.end method
