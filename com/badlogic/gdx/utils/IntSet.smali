.class public Lcom/badlogic/gdx/utils/IntSet;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    }
.end annotation


# instance fields
.field hasZeroValue:Z

.field private transient iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field private transient iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field keyTable:[I

.field private final loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 67
    const/16 v0, 0x33

    const v1, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"  # I

    .line 73
    const v0, 0x3f4ccccd  # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 74
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"  # I
    .param p2, "loadFactor"  # F

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2b

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_2b

    .line 82
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    .line 84
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 85
    .local v0, "tableSize":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    .line 86
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 87
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->shift:I

    .line 89
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 90
    return-void

    .line 81
    .end local v0  # "tableSize":I
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor must be > 0 and < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntSet;)V
    .registers 6
    .param p1, "set"  # Lcom/badlogic/gdx/utils/IntSet;

    .line 94
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 95
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 97
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 98
    return-void
.end method

.method private addResize(I)V
    .registers 6
    .param p1, "key"  # I

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 178
    .local v0, "keyTable":[I
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v1

    .line 179
    .local v1, "i":I
    :goto_6
    aget v2, v0, v1

    if-nez v2, :cond_d

    .line 180
    aput p1, v0, v1

    .line 181
    return-void

    .line 178
    :cond_d
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private locateKey(I)I
    .registers 6
    .param p1, "key"  # I

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 122
    .local v0, "keyTable":[I
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v1

    .line 123
    .local v1, "i":I
    :goto_6
    aget v2, v0, v1

    .line 124
    .local v2, "other":I
    if-nez v2, :cond_e

    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3

    .line 125
    :cond_e
    if-ne v2, p1, :cond_11

    return v1

    .line 122
    .end local v2  # "other":I
    :cond_11
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int v1, v2, v3

    goto :goto_6
.end method

.method private resize(I)V
    .registers 6
    .param p1, "newSize"  # I

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v0, v0

    .line 272
    .local v0, "oldCapacity":I
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    .line 273
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 274
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->shift:I

    .line 276
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 278
    .local v1, "oldKeyTable":[I
    new-array v2, p1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 280
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-lez v2, :cond_2e

    .line 281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v0, :cond_2e

    .line 282
    aget v3, v1, v2

    .line 283
    .local v3, "key":I
    if-eqz v3, :cond_2b

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/utils/IntSet;->addResize(I)V

    .line 281
    .end local v3  # "key":I
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 286
    .end local v2  # "i":I
    :cond_2e
    return-void
.end method

.method public static varargs with([I)Lcom/badlogic/gdx/utils/IntSet;
    .registers 2
    .param p0, "array"  # [I

    .line 358
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    .line 359
    .local v0, "set":Lcom/badlogic/gdx/utils/IntSet;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/IntSet;->addAll([I)V

    .line 360
    return-object v0
.end method


# virtual methods
.method public add(I)Z
    .registers 6
    .param p1, "key"  # I

    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_11

    .line 132
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v2, :cond_9

    return v0

    .line 133
    :cond_9
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 135
    return v1

    .line 137
    :cond_11
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->locateKey(I)I

    move-result v2

    .line 138
    .local v2, "i":I
    if-ltz v2, :cond_18

    return v0

    .line 139
    :cond_18
    add-int/lit8 v0, v2, 0x1

    neg-int v0, v0

    .line 140
    .end local v2  # "i":I
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput p1, v2, v0

    .line 141
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v2, v3, :cond_2f

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v2, v2

    shl-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 142
    :cond_2f
    return v1
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;)V
    .registers 5
    .param p1, "array"  # Lcom/badlogic/gdx/utils/IntArray;

    .line 146
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    .line 147
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;II)V
    .registers 7
    .param p1, "array"  # Lcom/badlogic/gdx/utils/IntArray;
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 150
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-gt v0, v1, :cond_c

    .line 152
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    .line 153
    return-void

    .line 151
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

.method public addAll(Lcom/badlogic/gdx/utils/IntSet;)V
    .registers 6
    .param p1, "set"  # Lcom/badlogic/gdx/utils/IntSet;

    .line 166
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->ensureCapacity(I)V

    .line 167
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 168
    :cond_d
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 169
    .local v0, "keyTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_11
    if-ge v1, v2, :cond_1d

    .line 170
    aget v3, v0, v1

    .line 171
    .local v3, "key":I
    if-eqz v3, :cond_1a

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 169
    .end local v3  # "key":I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 173
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_1d
    return-void
.end method

.method public varargs addAll([I)V
    .registers 4
    .param p1, "array"  # [I

    .line 156
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    .line 157
    return-void
.end method

.method public addAll([III)V
    .registers 7
    .param p1, "array"  # [I
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 160
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/IntSet;->ensureCapacity(I)V

    .line 161
    move v0, p2

    .local v0, "i":I
    add-int v1, v0, p3

    .local v1, "n":I
    :goto_6
    if-ge v0, v1, :cond_10

    .line 162
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 163
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_10
    return-void
.end method

.method public clear()V
    .registers 3

    .line 244
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_5

    return-void

    .line 245
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 246
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 247
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 248
    return-void
.end method

.method public clear(I)V
    .registers 4
    .param p1, "maximumCapacity"  # I

    .line 233
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 234
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v1, v1

    if-gt v1, v0, :cond_f

    .line 235
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    .line 236
    return-void

    .line 238
    :cond_f
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 239
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 240
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 241
    return-void
.end method

.method public contains(I)Z
    .registers 3
    .param p1, "key"  # I

    .line 251
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return v0

    .line 252
    :cond_5
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->locateKey(I)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public ensureCapacity(I)V
    .registers 4
    .param p1, "additionalCapacity"  # I

    .line 266
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 267
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v1, v1

    if-ge v1, v0, :cond_11

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 268
    :cond_11
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"  # Ljava/lang/Object;

    .line 299
    instance-of v0, p1, Lcom/badlogic/gdx/utils/IntSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 300
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/IntSet;

    .line 301
    .local v0, "other":Lcom/badlogic/gdx/utils/IntSet;
    iget v2, v0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-eq v2, v3, :cond_10

    return v1

    .line 302
    :cond_10
    iget-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eq v2, v3, :cond_17

    return v1

    .line 303
    :cond_17
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 304
    .local v2, "keyTable":[I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v2

    .local v4, "n":I
    :goto_1b
    if-ge v3, v4, :cond_2d

    .line 305
    aget v5, v2, v3

    if-eqz v5, :cond_2a

    aget v5, v2, v3

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_2a

    return v1

    .line 304
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 306
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_2d
    const/4 v1, 0x1

    return v1
.end method

.method public first()I
    .registers 5

    .line 256
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 258
    .local v0, "keyTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_a
    if-ge v1, v2, :cond_16

    .line 259
    aget v3, v0, v1

    if-eqz v3, :cond_13

    aget v3, v0, v1

    return v3

    .line 258
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 260
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IntSet is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .registers 6

    .line 289
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 290
    .local v0, "h":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 291
    .local v1, "keyTable":[I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "n":I
    :goto_6
    if-ge v2, v3, :cond_10

    .line 292
    aget v4, v1, v2

    .line 293
    .local v4, "key":I
    if-eqz v4, :cond_d

    add-int/2addr v0, v4

    .line 291
    .end local v4  # "key":I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 295
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_10
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    .registers 4

    .line 340
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    return-object v0

    .line 341
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    if-nez v0, :cond_1c

    .line 342
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 343
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 345
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    return-object v0

    .line 351
    :cond_34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 214
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected place(I)I
    .registers 6
    .param p1, "item"  # I

    .line 115
    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->shift:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public remove(I)Z
    .registers 11
    .param p1, "key"  # I

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_11

    .line 189
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-nez v2, :cond_9

    return v0

    .line 190
    :cond_9
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 191
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 192
    return v1

    .line 195
    :cond_11
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->locateKey(I)I

    move-result v2

    .line 196
    .local v2, "i":I
    if-gez v2, :cond_18

    return v0

    .line 197
    :cond_18
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 198
    .local v3, "keyTable":[I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .local v4, "mask":I
    add-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v4

    .line 199
    .local v5, "next":I
    :goto_1f
    aget v6, v3, v5

    move p1, v6

    if-eqz v6, :cond_38

    .line 200
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v6

    .line 201
    .local v6, "placement":I
    sub-int v7, v5, v6

    and-int/2addr v7, v4

    sub-int v8, v2, v6

    and-int/2addr v8, v4

    if-le v7, v8, :cond_33

    .line 202
    aput p1, v3, v2

    .line 203
    move v2, v5

    .line 205
    :cond_33
    add-int/lit8 v7, v5, 0x1

    and-int v5, v7, v4

    .line 206
    .end local v6  # "placement":I
    goto :goto_1f

    .line 207
    :cond_38
    aput v0, v3, v2

    .line 208
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 209
    return v1
.end method

.method public shrink(I)V
    .registers 5
    .param p1, "maximumCapacity"  # I

    .line 226
    if-ltz p1, :cond_11

    .line 227
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result v0

    .line 228
    .local v0, "tableSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v1, v1

    if-le v1, v0, :cond_10

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 229
    :cond_10
    return-void

    .line 226
    .end local v0  # "tableSize":I
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 310
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 311
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 314
    .local v1, "keyTable":[I
    array-length v2, v1

    .line 315
    .local v2, "i":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v3, :cond_20

    .line 316
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 318
    :cond_20
    :goto_20
    add-int/lit8 v3, v2, -0x1

    .end local v2  # "i":I
    .local v3, "i":I
    if-lez v2, :cond_2e

    .line 319
    aget v2, v1, v3

    .line 320
    .local v2, "key":I
    if-nez v2, :cond_2a

    move v2, v3

    goto :goto_20

    .line 321
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    nop

    .line 325
    .end local v2  # "key":I
    :cond_2e
    :goto_2e
    move v2, v3

    .end local v3  # "i":I
    .local v2, "i":I
    :goto_2f
    add-int/lit8 v3, v2, -0x1

    .end local v2  # "i":I
    .restart local v3  # "i":I
    if-lez v2, :cond_41

    .line 326
    aget v2, v1, v3

    .line 327
    .local v2, "key":I
    if-nez v2, :cond_38

    goto :goto_2e

    .line 328
    :cond_38
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .end local v2  # "key":I
    goto :goto_2e

    .line 331
    :cond_41
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
