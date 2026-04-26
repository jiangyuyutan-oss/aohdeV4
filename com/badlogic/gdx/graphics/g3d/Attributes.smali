.class public Lcom/badlogic/gdx/graphics/g3d/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Comparator;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
        ">;",
        "Ljava/util/Comparator<",
        "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/badlogic/gdx/graphics/g3d/Attributes;",
        ">;"
    }
.end annotation


# instance fields
.field protected final attributes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field protected mask:J

.field protected sorted:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sorted:Z

    return-void
.end method

.method private final disable(J)V
    .registers 7
    .param p1, "mask"  # J

    .line 81
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    .line 82
    return-void
.end method

.method private final enable(J)V
    .registers 5
    .param p1, "mask"  # J

    .line 77
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    .line 78
    return-void
.end method


# virtual methods
.method public attributesHash()I
    .registers 10

    .line 197
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sort()V

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 199
    .local v0, "n":I
    const-wide/16 v1, 0x47

    iget-wide v3, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    add-long/2addr v3, v1

    .line 200
    .local v3, "result":J
    const/4 v1, 0x1

    .line 201
    .local v1, "m":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_2d

    .line 202
    iget-wide v5, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    mul-int/lit8 v7, v1, 0x7

    const v8, 0xffff

    and-int/2addr v7, v8

    move v1, v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 203
    .end local v2  # "i":I
    :cond_2d
    const/16 v2, 0x20

    shr-long v5, v3, v2

    xor-long/2addr v5, v3

    long-to-int v2, v5

    return v2
.end method

.method public clear()V
    .registers 3

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 69
    return-void
.end method

.method public final compare(Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;)I
    .registers 7
    .param p1, "arg0"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p2, "arg1"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 185
    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    iget-wide v2, p2, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 24
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->compare(Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Attributes;)I
    .registers 8
    .param p1, "other"  # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .line 220
    const/4 v0, 0x0

    if-ne p1, p0, :cond_4

    .line 221
    return v0

    .line 222
    :cond_4
    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    iget-wide v3, p1, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    .line 223
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    iget-wide v4, p1, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    return v2

    .line 224
    :cond_19
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sort()V

    .line 225
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sort()V

    .line 226
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_45

    .line 227
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 228
    .local v4, "c":I
    if-eqz v4, :cond_42

    .line 229
    if-gez v4, :cond_3e

    move v0, v2

    goto :goto_41

    :cond_3e
    if-lez v4, :cond_41

    move v0, v3

    :cond_41
    :goto_41
    return v0

    .line 226
    .end local v4  # "c":I
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 231
    .end local v1  # "i":I
    :cond_45
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 24
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attributes;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"  # Ljava/lang/Object;

    .line 213
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 214
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 215
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->same(Lcom/badlogic/gdx/graphics/g3d/Attributes;Z)Z

    move-result v0

    return v0
.end method

.method public final get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .registers 6
    .param p1, "type"  # J

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_27

    .line 47
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-wide v1, v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    return-object v1

    .line 46
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 48
    .end local v0  # "i":I
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public final get(Ljava/lang/Class;J)Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .registers 5
    .param p2, "type"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .line 54
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public final get(Lcom/badlogic/gdx/utils/Array;J)Lcom/badlogic/gdx/utils/Array;
    .registers 9
    .param p2, "type"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;J)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;"
        }
    .end annotation

    .line 60
    .local p1, "out":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Attribute;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_24

    .line 61
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-wide v1, v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 60
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    .end local v0  # "i":I
    :cond_24
    return-object p1
.end method

.method public final getMask()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    return-wide v0
.end method

.method public final has(J)Z
    .registers 5
    .param p1, "type"  # J

    .line 151
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 208
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributesHash()I

    move-result v0

    return v0
.end method

.method protected indexOf(J)I
    .registers 6
    .param p1, "type"  # J

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1f

    .line 157
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-wide v1, v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_1c

    return v0

    .line 156
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 158
    .end local v0  # "i":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(J)V
    .registers 8
    .param p1, "mask"  # J

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_26

    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-wide v1, v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    .line 138
    .local v1, "type":J
    and-long v3, p1, v1

    cmp-long v3, v3, v1

    if-nez v3, :cond_23

    .line 139
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 140
    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->disable(J)V

    .line 141
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sorted:Z

    .line 136
    .end local v1  # "type":J
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 144
    .end local v0  # "i":I
    :cond_26
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sort()V

    .line 145
    return-void
.end method

.method public final same(Lcom/badlogic/gdx/graphics/g3d/Attributes;)Z
    .registers 3
    .param p1, "other"  # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->same(Lcom/badlogic/gdx/graphics/g3d/Attributes;Z)Z

    move-result v0

    return v0
.end method

.method public final same(Lcom/badlogic/gdx/graphics/g3d/Attributes;Z)Z
    .registers 9
    .param p1, "other"  # Lcom/badlogic/gdx/graphics/g3d/Attributes;
    .param p2, "compareValues"  # Z

    .line 166
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 167
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    iget-wide v4, p1, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    goto :goto_3b

    .line 168
    :cond_10
    if-nez p2, :cond_13

    return v0

    .line 169
    :cond_13
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sort()V

    .line 170
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sort()V

    .line 171
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_3a

    .line 172
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->equals(Lcom/badlogic/gdx/graphics/g3d/Attribute;)Z

    move-result v3

    if-nez v3, :cond_37

    return v1

    .line 171
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 173
    .end local v2  # "i":I
    :cond_3a
    return v0

    .line 167
    :cond_3b
    :goto_3b
    return v1
.end method

.method public final set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .registers 5
    .param p1, "attribute"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 86
    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->indexOf(J)I

    move-result v0

    .line 87
    .local v0, "idx":I
    if-gez v0, :cond_16

    .line 88
    iget-wide v1, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->enable(J)V

    .line 89
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sorted:Z

    goto :goto_1b

    .line 92
    :cond_16
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0, p1}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 94
    :goto_1b
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sort()V

    .line 95
    return-void
.end method

.method public final set(Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .registers 3
    .param p1, "attribute1"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p2, "attribute2"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 99
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 101
    return-void
.end method

.method public final set(Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .registers 4
    .param p1, "attribute1"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p2, "attribute2"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p3, "attribute3"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 105
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 107
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 108
    return-void
.end method

.method public final set(Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .registers 5
    .param p1, "attribute1"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p2, "attribute2"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p3, "attribute3"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p4, "attribute4"  # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 113
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 114
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 115
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 116
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 117
    return-void
.end method

.method public final set(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "attributes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/Attribute;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 130
    .local v1, "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .end local v1  # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    goto :goto_4

    .line 131
    :cond_14
    return-void
.end method

.method public final varargs set([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .registers 5
    .param p1, "attributes"  # [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 122
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 123
    .local v2, "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 122
    .end local v2  # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_c
    return-void
.end method

.method public size()I
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public final sort()V
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sorted:Z

    if-nez v0, :cond_c

    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sorted:Z

    .line 36
    :cond_c
    return-void
.end method
