.class public Lcom/badlogic/gdx/utils/ShortArray;
.super Ljava/lang/Object;
.source "ShortArray.java"


# instance fields
.field public items:[S

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"  # I

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ShortArray;)V
    .registers 6
    .param p1, "array"  # Lcom/badlogic/gdx/utils/ShortArray;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    .line 46
    new-array v0, p2, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 47
    return-void
.end method

.method public constructor <init>(Z[SII)V
    .registers 7
    .param p1, "ordered"  # Z
    .param p2, "array"  # [S
    .param p3, "startIndex"  # I
    .param p4, "count"  # I

    .line 70
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([S)V
    .registers 5
    .param p1, "array"  # [S

    .line 62
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(Z[SII)V

    .line 63
    return-void
.end method

.method public static varargs with([S)Lcom/badlogic/gdx/utils/ShortArray;
    .registers 2
    .param p0, "array"  # [S

    .line 438
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>([S)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 5
    .param p1, "value"  # I

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 78
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_18

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 79
    :cond_18
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    .line 80
    return-void
.end method

.method public add(S)V
    .registers 5
    .param p1, "value"  # S

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 84
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_18

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 85
    :cond_18
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aput-short p1, v0, v1

    .line 86
    return-void
.end method

.method public add(SS)V
    .registers 6
    .param p1, "value1"  # S
    .param p2, "value2"  # S

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 90
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 91
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aput-short p1, v0, v1

    .line 92
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-short p2, v0, v1

    .line 93
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 94
    return-void
.end method

.method public add(SSS)V
    .registers 7
    .param p1, "value1"  # S
    .param p2, "value2"  # S
    .param p3, "value3"  # S

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 98
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x2

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 99
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aput-short p1, v0, v1

    .line 100
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-short p2, v0, v1

    .line 101
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput-short p3, v0, v1

    .line 102
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 103
    return-void
.end method

.method public add(SSSS)V
    .registers 8
    .param p1, "value1"  # S
    .param p2, "value2"  # S
    .param p3, "value3"  # S
    .param p4, "value4"  # S

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 107
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x3

    array-length v2, v0

    if-lt v1, v2, :cond_1b

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v1, v1

    const v2, 0x3fe66666  # 1.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 108
    :cond_1b
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aput-short p1, v0, v1

    .line 109
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-short p2, v0, v1

    .line 110
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput-short p3, v0, v1

    .line 111
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x3

    aput-short p4, v0, v1

    .line 112
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 113
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ShortArray;)V
    .registers 5
    .param p1, "array"  # Lcom/badlogic/gdx/utils/ShortArray;

    .line 116
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->addAll([SII)V

    .line 117
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ShortArray;II)V
    .registers 7
    .param p1, "array"  # Lcom/badlogic/gdx/utils/ShortArray;
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 120
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-gt v0, v1, :cond_c

    .line 122
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/ShortArray;->addAll([SII)V

    .line 123
    return-void

    .line 121
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

    iget v2, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([S)V
    .registers 4
    .param p1, "array"  # [S

    .line 126
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->addAll([SII)V

    .line 127
    return-void
.end method

.method public addAll([SII)V
    .registers 9
    .param p1, "array"  # [S
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 131
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/2addr v1, p3

    .line 132
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-le v1, v2, :cond_1d

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v3, v3

    const/high16 v4, 0x3fe00000  # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 133
    :cond_1d
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 135
    return-void
.end method

.method public clear()V
    .registers 2

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 308
    return-void
.end method

.method public contains(S)Z
    .registers 6
    .param p1, "value"  # S

    .line 201
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 202
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 203
    .local v2, "items":[S
    :goto_6
    if-ltz v0, :cond_11

    .line 204
    add-int/lit8 v3, v0, -0x1

    .end local v0  # "i":I
    .local v3, "i":I
    aget-short v0, v2, v0

    if-ne v0, p1, :cond_f

    return v1

    :cond_f
    move v0, v3

    goto :goto_6

    .line 205
    .end local v3  # "i":I
    .restart local v0  # "i":I
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)[S
    .registers 6
    .param p1, "additionalCapacity"  # I

    .line 322
    if-ltz p1, :cond_21

    .line 323
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/2addr v0, p1

    .line 324
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    array-length v1, v1

    if-le v0, v1, :cond_1e

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    .line 325
    :cond_1e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v1

    .line 322
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

    .line 397
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 398
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 399
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ShortArray;

    if-nez v1, :cond_f

    return v2

    .line 400
    :cond_f
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ShortArray;

    .line 401
    .local v1, "array":Lcom/badlogic/gdx/utils/ShortArray;
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-nez v3, :cond_17

    return v2

    .line 402
    :cond_17
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 403
    .local v3, "n":I
    iget v4, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-eq v3, v4, :cond_1e

    return v2

    .line 404
    :cond_1e
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .local v4, "items1":[S
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 405
    .local v5, "items2":[S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v3, :cond_2f

    .line 406
    aget-short v7, v4, v6

    aget-short v8, v5, v6

    if-eq v7, v8, :cond_2c

    return v2

    .line 405
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 407
    .end local v6  # "i":I
    :cond_2f
    return v0
.end method

.method public first()S
    .registers 3

    .line 292
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-eqz v0, :cond_a

    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    return v0

    .line 292
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)S
    .registers 5
    .param p1, "index"  # I

    .line 138
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p1, v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v0, v0, p1

    return v0

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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 7

    .line 388
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 389
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 390
    .local v0, "items":[S
    const/4 v1, 0x1

    .line 391
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v3, "n":I
    :goto_f
    if-ge v2, v3, :cond_1a

    .line 392
    mul-int/lit8 v4, v1, 0x1f

    aget-short v5, v0, v2

    add-int v1, v4, v5

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 393
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_1a
    return v1
.end method

.method public incr(IS)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # S

    .line 148
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p1, v0, :cond_d

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v1, v0, p1

    add-int/2addr v1, p2

    int-to-short v1, v1

    aput-short v1, v0, p1

    .line 150
    return-void

    .line 148
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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public incr(S)V
    .registers 6
    .param p1, "value"  # S

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 154
    .local v0, "items":[S
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_10

    .line 155
    aget-short v3, v0, v1

    add-int/2addr v3, p1

    int-to-short v3, v3

    aput-short v3, v0, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 156
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_10
    return-void
.end method

.method public indexOf(S)I
    .registers 6
    .param p1, "value"  # S

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 210
    .local v0, "items":[S
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_f

    .line 211
    aget-short v3, v0, v1

    if-ne v3, p1, :cond_c

    return v1

    .line 210
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 212
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public insert(IS)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # S

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-gt p1, v0, :cond_38

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 172
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1c

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 173
    :cond_1c
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-eqz v1, :cond_29

    .line 174
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    .line 176
    :cond_29
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aget-short v2, v0, p1

    aput-short v2, v0, v1

    .line 177
    :goto_2f
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 178
    aput-short p2, v0, p1

    .line 179
    return-void

    .line 170
    .end local v0  # "items":[S
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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-gt p1, v0, :cond_32

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/2addr v0, p2

    .line 186
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    array-length v1, v1

    if-le v0, v1, :cond_23

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 187
    :cond_23
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    add-int v3, p1, p2

    iget v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iput v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 189
    return-void

    .line 184
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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 303
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public lastIndexOf(C)I
    .registers 5
    .param p1, "value"  # C

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 217
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_10

    .line 218
    aget-short v2, v0, v1

    if-ne v2, p1, :cond_d

    return v1

    .line 217
    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 219
    .end local v1  # "i":I
    :cond_10
    const/4 v1, -0x1

    return v1
.end method

.method public mul(IS)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # S

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p1, v0, :cond_d

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v1, v0, p1

    mul-int/2addr v1, p2

    int-to-short v1, v1

    aput-short v1, v0, p1

    .line 161
    return-void

    .line 159
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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mul(S)V
    .registers 6
    .param p1, "value"  # S

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 165
    .local v0, "items":[S
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_10

    .line 166
    aget-short v3, v0, v1

    mul-int/2addr v3, p1

    int-to-short v3, v3

    aput-short v3, v0, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 167
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_10
    return-void
.end method

.method public notEmpty()Z
    .registers 2

    .line 298
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()S
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-short v0, v0, v1

    return v0
.end method

.method public pop()S
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aget-short v0, v0, v1

    return v0
.end method

.method public random()S
    .registers 4

    .line 377
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 378
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    aget-short v0, v0, v1

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/ShortArray;)Z
    .registers 10
    .param p1, "array"  # Lcom/badlogic/gdx/utils/ShortArray;

    .line 264
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 265
    .local v0, "size":I
    move v1, v0

    .line 266
    .local v1, "startSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 267
    .local v2, "items":[S
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v4, "n":I
    :goto_8
    if-ge v3, v4, :cond_21

    .line 268
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v5

    .line 269
    .local v5, "item":S
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_f
    if-ge v6, v0, :cond_1e

    .line 270
    aget-short v7, v2, v6

    if-ne v5, v7, :cond_1b

    .line 271
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 272
    add-int/lit8 v0, v0, -0x1

    .line 273
    goto :goto_1e

    .line 269
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 267
    .end local v5  # "item":S
    .end local v6  # "ii":I
    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 277
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

.method public removeIndex(I)S
    .registers 6
    .param p1, "index"  # I

    .line 235
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p1, v0, :cond_22

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 237
    .local v0, "items":[S
    aget-short v1, v0, p1

    .line 238
    .local v1, "value":S
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 239
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-eqz v2, :cond_1b

    .line 240
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 242
    :cond_1b
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aget-short v2, v0, v2

    aput-short v2, v0, p1

    .line 243
    :goto_21
    return v1

    .line 235
    .end local v0  # "items":[S
    .end local v1  # "value":S
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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

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

    .line 248
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 249
    .local v0, "n":I
    if-ge p2, v0, :cond_55

    .line 250
    if-gt p1, p2, :cond_32

    .line 251
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    .local v1, "count":I
    sub-int v2, v0, v1

    .line 252
    .local v2, "lastIndex":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-eqz v3, :cond_1e

    .line 253
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    add-int v4, p1, v1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    add-int v6, p1, v1

    sub-int v6, v0, v6

    invoke-static {v3, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    .line 255
    :cond_1e
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 256
    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    sub-int v6, v0, v3

    invoke-static {v4, v3, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    .end local v3  # "i":I
    :goto_2d
    sub-int v3, v0, v1

    iput v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 259
    return-void

    .line 250
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

    .line 249
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

    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeValue(S)Z
    .registers 6
    .param p1, "value"  # S

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 224
    .local v0, "items":[S
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_13

    .line 225
    aget-short v3, v0, v1

    if-ne v3, p1, :cond_10

    .line 226
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 227
    const/4 v3, 0x1

    return v3

    .line 224
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 230
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method protected resize(I)[S
    .registers 6
    .param p1, "newSize"  # I

    .line 338
    new-array v0, p1, [S

    .line 339
    .local v0, "newItems":[S
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 340
    .local v1, "items":[S
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 342
    return-object v0
.end method

.method public reverse()V
    .registers 8

    .line 350
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 351
    .local v0, "items":[S
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "lastIndex":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    div-int/lit8 v3, v3, 0x2

    .local v3, "n":I
    :goto_b
    if-ge v1, v3, :cond_1a

    .line 352
    sub-int v4, v2, v1

    .line 353
    .local v4, "ii":I
    aget-short v5, v0, v1

    .line 354
    .local v5, "temp":S
    aget-short v6, v0, v4

    aput-short v6, v0, v1

    .line 355
    aput-short v5, v0, v4

    .line 351
    .end local v4  # "ii":I
    .end local v5  # "temp":S
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 357
    .end local v1  # "i":I
    .end local v2  # "lastIndex":I
    .end local v3  # "n":I
    :cond_1a
    return-void
.end method

.method public set(IS)V
    .registers 6
    .param p1, "index"  # I
    .param p2, "value"  # S

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p1, v0, :cond_9

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aput-short p2, v0, p1

    .line 145
    return-void

    .line 143
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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[S
    .registers 5
    .param p1, "newSize"  # I

    .line 331
    if-ltz p1, :cond_15

    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    array-length v0, v0

    if-le p1, v0, :cond_10

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    .line 333
    :cond_10
    iput p1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v0

    .line 331
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

.method public shrink()[S
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    .line 315
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v0
.end method

.method public shuffle()V
    .registers 6

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 361
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_17

    .line 362
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 363
    .local v2, "ii":I
    aget-short v3, v0, v1

    .line 364
    .local v3, "temp":S
    aget-short v4, v0, v2

    aput-short v4, v0, v1

    .line 365
    aput-short v3, v0, v2

    .line 361
    .end local v2  # "ii":I
    .end local v3  # "temp":S
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 367
    .end local v1  # "i":I
    :cond_17
    return-void
.end method

.method public sort()V
    .registers 4

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([SII)V

    .line 347
    return-void
.end method

.method public swap(II)V
    .registers 7
    .param p1, "first"  # I
    .param p2, "second"  # I

    .line 192
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_38

    .line 193
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p2, v0, :cond_15

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 195
    .local v0, "items":[S
    aget-short v1, v0, p1

    .line 196
    .local v1, "firstValue":S
    aget-short v2, v0, p2

    aput-short v2, v0, p1

    .line 197
    aput-short v1, v0, p2

    .line 198
    return-void

    .line 193
    .end local v0  # "items":[S
    .end local v1  # "firstValue":S
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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
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

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[S
    .registers 5

    .line 382
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    new-array v0, v0, [S

    .line 383
    .local v0, "array":[S
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 411
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 412
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 413
    .local v0, "items":[S
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 414
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 415
    const/4 v2, 0x0

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 416
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge v2, v3, :cond_2d

    .line 417
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 418
    aget-short v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 416
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 420
    .end local v2  # "i":I
    :cond_2d
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 421
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "separator"  # Ljava/lang/String;

    .line 425
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 427
    .local v0, "items":[S
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 428
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 429
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge v2, v3, :cond_26

    .line 430
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 431
    aget-short v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 433
    .end local v2  # "i":I
    :cond_26
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate(I)V
    .registers 3
    .param p1, "newSize"  # I

    .line 372
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-le v0, p1, :cond_6

    iput p1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 373
    :cond_6
    return-void
.end method
