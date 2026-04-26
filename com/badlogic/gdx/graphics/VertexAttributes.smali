.class public final Lcom/badlogic/gdx/graphics/VertexAttributes;
.super Ljava/lang/Object;
.source "VertexAttributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;,
        Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;,
        Lcom/badlogic/gdx/graphics/VertexAttributes$Usage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/graphics/VertexAttribute;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/badlogic/gdx/graphics/VertexAttributes;",
        ">;"
    }
.end annotation


# instance fields
.field private final attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

.field private iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable<",
            "Lcom/badlogic/gdx/graphics/VertexAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mask:J

.field public final vertexSize:I


# direct methods
.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .registers 5
    .param p1, "attributes"  # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    .line 58
    array-length v0, p1

    if-eqz v0, :cond_21

    .line 60
    array-length v0, p1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 61
    .local v0, "list":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 62
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 64
    .end local v1  # "i":I
    :cond_18
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 65
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->calculateOffsets()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    .line 66
    return-void

    .line 58
    .end local v0  # "list":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateOffsets()I
    .registers 5

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 94
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    .line 95
    .local v2, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iput v0, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    .line 96
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttribute;->getSizeInBytes()I

    move-result v3

    add-int/2addr v0, v3

    .line 93
    .end local v2  # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 99
    .end local v1  # "i":I
    :cond_15
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/VertexAttributes;)I
    .registers 13
    .param p1, "o"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v1, v1

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v1, v1

    sub-int/2addr v0, v1

    return v0

    .line 175
    :cond_10
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v0

    .line 176
    .local v0, "m1":J
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v2

    .line 177
    .local v2, "m2":J
    cmp-long v4, v0, v2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_25

    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    goto :goto_24

    :cond_23
    move v5, v6

    :goto_24
    return v5

    .line 178
    :cond_25
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v4, v4

    sub-int/2addr v4, v6

    .local v4, "i":I
    :goto_29
    if-ltz v4, :cond_72

    .line 179
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v7, v7, v4

    .line 180
    .local v7, "va0":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v8, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v8, v8, v4

    .line 181
    .local v8, "va1":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iget v10, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-eq v9, v10, :cond_3f

    iget v5, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iget v6, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    sub-int/2addr v5, v6

    return v5

    .line 182
    :cond_3f
    iget v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    iget v10, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    if-eq v9, v10, :cond_4b

    iget v5, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    iget v6, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    sub-int/2addr v5, v6

    return v5

    .line 183
    :cond_4b
    iget v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v10, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    if-eq v9, v10, :cond_57

    iget v5, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v6, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    sub-int/2addr v5, v6

    return v5

    .line 184
    :cond_57
    iget-boolean v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-boolean v10, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    if-eq v9, v10, :cond_63

    iget-boolean v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    if-eqz v9, :cond_62

    move v5, v6

    :cond_62
    return v5

    .line 185
    :cond_63
    iget v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget v10, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    if-eq v9, v10, :cond_6f

    iget v5, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget v6, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    sub-int/2addr v5, v6

    return v5

    .line 178
    .end local v7  # "va0":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v8  # "va1":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_6f
    add-int/lit8 v4, v4, -0x1

    goto :goto_29

    .line 187
    .end local v4  # "i":I
    :cond_72
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->compareTo(Lcom/badlogic/gdx/graphics/VertexAttributes;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"  # Ljava/lang/Object;

    .line 134
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 135
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 136
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 137
    .local v1, "other":Lcom/badlogic/gdx/graphics/VertexAttributes;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v3

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v4, v4

    if-eq v3, v4, :cond_16

    return v2

    .line 138
    :cond_16
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v4, v4

    if-ge v3, v4, :cond_2e

    .line 139
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v4, v4, v3

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;->equals(Lcom/badlogic/gdx/graphics/VertexAttribute;)Z

    move-result v4

    if-nez v4, :cond_2b

    return v2

    .line 138
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 141
    .end local v3  # "i":I
    :cond_2e
    return v0
.end method

.method public findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 5
    .param p1, "usage"  # I

    .line 85
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    .line 86
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 87
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v2, p1, :cond_14

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    return-object v2

    .line 86
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 88
    .end local v1  # "i":I
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 3
    .param p1, "index"  # I

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMask()J
    .registers 6

    .line 156
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    .line 157
    const-wide/16 v0, 0x0

    .line 158
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v3

    if-ge v2, v3, :cond_1b

    .line 159
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 161
    .end local v2  # "i":I
    :cond_1b
    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    .line 163
    .end local v0  # "result":J
    :cond_1d
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    return-wide v0
.end method

.method public getMaskWithSizePacked()J
    .registers 6

    .line 169
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v2, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getOffset(I)I
    .registers 3
    .param p1, "usage"  # I

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getOffset(II)I

    move-result v0

    return v0
.end method

.method public getOffset(II)I
    .registers 5
    .param p1, "usage"  # I
    .param p2, "defaultIfNotFound"  # I

    .line 71
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 72
    .local v0, "vertexAttribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-nez v0, :cond_7

    return p2

    .line 73
    :cond_7
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    return v1
.end method

.method public hashCode()I
    .registers 8

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3d

    int-to-long v0, v0

    .line 147
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v3

    if-ge v2, v3, :cond_1d

    .line 148
    const-wide/16 v3, 0x3d

    mul-long/2addr v3, v0

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;->hashCode()I

    move-result v5

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 149
    .end local v2  # "i":I
    :cond_1d
    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/graphics/VertexAttribute;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    if-nez v0, :cond_d

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    .line 194
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v2, v2

    if-ge v1, v2, :cond_51

    .line 117
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 128
    .end local v1  # "i":I
    :cond_51
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
