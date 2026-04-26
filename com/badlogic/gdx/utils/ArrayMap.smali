.class public Lcom/badlogic/gdx/utils/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ArrayMap$Keys;,
        Lcom/badlogic/gdx/utils/ArrayMap$Values;,
        Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private transient entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field private transient entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field public keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private transient keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field private transient keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field public ordered:Z

.field public size:I

.field public values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private transient values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

.field private transient values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 45
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"  # I

    .line 50
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .registers 6
    .param p1, "array"  # Lcom/badlogic/gdx/utils/ArrayMap;

    .line 81
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    .line 82
    iget v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 83
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .param p1, "keyArrayType"  # Ljava/lang/Class;
    .param p2, "valueArrayType"  # Ljava/lang/Class;

    .line 74
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    .line 75
    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4
    .param p1, "ordered"  # Z
    .param p2, "capacity"  # I

    .line 56
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    .line 58
    new-array v0, p2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 59
    new-array v0, p2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .param p1, "ordered"  # Z
    .param p2, "capacity"  # I
    .param p3, "keyArrayType"  # Ljava/lang/Class;
    .param p4, "valueArrayType"  # Ljava/lang/Class;

    .line 66
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    .line 68
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 69
    invoke-static {p4, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 348
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 350
    iput v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 351
    return-void
.end method

.method public clear(I)V
    .registers 3
    .param p1, "maximumCapacity"  # I

    .line 339
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_9

    .line 340
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    .line 341
    return-void

    .line 343
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 344
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 345
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 209
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 210
    .local v0, "keys":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 211
    .local v1, "i":I
    if-nez p1, :cond_13

    .line 212
    :goto_8
    if-ltz v1, :cond_22

    .line 213
    add-int/lit8 v3, v1, -0x1

    .end local v1  # "i":I
    .local v3, "i":I
    aget-object v1, v0, v1

    if-ne v1, p1, :cond_11

    return v2

    :cond_11
    move v1, v3

    goto :goto_8

    .line 215
    .end local v3  # "i":I
    .restart local v1  # "i":I
    :cond_13
    :goto_13
    if-ltz v1, :cond_22

    .line 216
    add-int/lit8 v3, v1, -0x1

    .end local v1  # "i":I
    .restart local v3  # "i":I
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v2

    :cond_20
    move v1, v3

    goto :goto_13

    .line 218
    .end local v3  # "i":I
    .restart local v1  # "i":I
    :cond_22
    const/4 v2, 0x0

    return v2
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .registers 7
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .line 223
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 224
    .local v0, "values":[Ljava/lang/Object;, "[TV;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 225
    .local v1, "i":I
    if-nez p2, :cond_1a

    if-nez p1, :cond_b

    goto :goto_1a

    .line 229
    :cond_b
    :goto_b
    if-ltz v1, :cond_25

    .line 230
    add-int/lit8 v3, v1, -0x1

    .end local v1  # "i":I
    .local v3, "i":I
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v2

    :cond_18
    move v1, v3

    goto :goto_b

    .line 226
    .end local v3  # "i":I
    .restart local v1  # "i":I
    :cond_1a
    :goto_1a
    if-ltz v1, :cond_25

    .line 227
    add-int/lit8 v3, v1, -0x1

    .end local v1  # "i":I
    .restart local v3  # "i":I
    aget-object v1, v0, v1

    if-ne v1, p1, :cond_23

    return v2

    :cond_23
    move v1, v3

    goto :goto_1a

    .line 232
    .end local v3  # "i":I
    .restart local v1  # "i":I
    :cond_25
    const/4 v2, 0x0

    return v2
.end method

.method public ensureCapacity(I)V
    .registers 6
    .param p1, "additionalCapacity"  # I

    .line 363
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    if-ltz p1, :cond_1f

    .line 364
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p1

    .line 365
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_1e

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 366
    :cond_1e
    return-void

    .line 363
    .end local v0  # "sizeNeeded":I
    :cond_1f
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

.method public entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    .line 490
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    if-nez v0, :cond_1c

    .line 491
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    .line 492
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    .line 494
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_33

    .line 495
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->index:I

    .line 496
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    return-object v0

    .line 500
    :cond_33
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->index:I

    .line 501
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"  # Ljava/lang/Object;

    .line 429
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 430
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 431
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ArrayMap;

    .line 432
    .local v1, "other":Lcom/badlogic/gdx/utils/ArrayMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eq v3, v4, :cond_14

    return v2

    .line 433
    :cond_14
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 434
    .local v3, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 435
    .local v4, "values":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v6, "n":I
    :goto_1b
    if-ge v5, v6, :cond_3a

    .line 436
    aget-object v7, v3, v5

    .line 437
    .local v7, "key":Ljava/lang/Object;, "TK;"
    aget-object v8, v4, v5

    .line 438
    .local v8, "value":Ljava/lang/Object;, "TV;"
    if-nez v8, :cond_2c

    .line 439
    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_37

    return v2

    .line 441
    :cond_2c
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_37

    return v2

    .line 435
    .end local v7  # "key":Ljava/lang/Object;, "TK;"
    .end local v8  # "value":Ljava/lang/Object;, "TV;"
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 444
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_3a
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"  # Ljava/lang/Object;

    .line 449
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 450
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 451
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ArrayMap;

    .line 452
    .local v1, "other":Lcom/badlogic/gdx/utils/ArrayMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eq v3, v4, :cond_14

    return v2

    .line 453
    :cond_14
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 454
    .local v3, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 455
    .local v4, "values":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v6, "n":I
    :goto_1b
    if-ge v5, v6, :cond_2d

    .line 456
    aget-object v7, v4, v5

    aget-object v8, v3, v5

    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_2a

    return v2

    .line 455
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 457
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_2d
    return v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eqz v0, :cond_a

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 174
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public firstValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eqz v0, :cond_a

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 179
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 136
    .local v0, "keys":[Ljava/lang/Object;
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 137
    .local v1, "i":I
    if-nez p1, :cond_16

    .line 138
    :goto_8
    if-ltz v1, :cond_28

    .line 139
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_13

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 138
    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 141
    :cond_16
    :goto_16
    if-ltz v1, :cond_28

    .line 142
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 141
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 144
    :cond_28
    return-object p2
.end method

.method public getKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 6
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)TK;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 152
    .local v0, "values":[Ljava/lang/Object;
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 153
    .local v1, "i":I
    if-nez p2, :cond_1d

    if-nez p1, :cond_b

    goto :goto_1d

    .line 157
    :cond_b
    :goto_b
    if-ltz v1, :cond_2b

    .line 158
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 157
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 154
    :cond_1d
    :goto_1d
    if-ltz v1, :cond_2b

    .line 155
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_28

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 154
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 160
    :cond_2b
    const/4 v2, 0x0

    return-object v2
.end method

.method public getKeyAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_9

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 164
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 169
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 9

    .line 416
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 417
    .local v0, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 418
    .local v1, "values":[Ljava/lang/Object;, "[TV;"
    const/4 v2, 0x0

    .line 419
    .local v2, "h":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v4, "n":I
    :goto_8
    if-ge v3, v4, :cond_21

    .line 420
    aget-object v5, v0, v3

    .line 421
    .local v5, "key":Ljava/lang/Object;, "TK;"
    aget-object v6, v1, v3

    .line 422
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    mul-int/lit8 v7, v7, 0x1f

    add-int/2addr v2, v7

    .line 423
    :cond_17
    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 419
    .end local v5  # "key":Ljava/lang/Object;, "TK;"
    .end local v6  # "value":Ljava/lang/Object;, "TV;"
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 425
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_21
    return v2
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 237
    .local v0, "keys":[Ljava/lang/Object;
    if-nez p1, :cond_12

    .line 238
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v2, "n":I
    :goto_7
    if-ge v1, v2, :cond_11

    .line 239
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_e

    return v1

    .line 238
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_11
    goto :goto_23

    .line 241
    :cond_12
    const/4 v1, 0x0

    .restart local v1  # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v2  # "n":I
    :goto_15
    if-ge v1, v2, :cond_23

    .line 242
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    return v1

    .line 241
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 244
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_23
    :goto_23
    const/4 v1, -0x1

    return v1
.end method

.method public indexOfValue(Ljava/lang/Object;Z)I
    .registers 7
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)I"
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 249
    .local v0, "values":[Ljava/lang/Object;
    if-nez p2, :cond_18

    if-nez p1, :cond_7

    goto :goto_18

    .line 253
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v2, "n":I
    :goto_a
    if-ge v1, v2, :cond_25

    .line 254
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return v1

    .line 253
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 250
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_18
    :goto_18
    const/4 v1, 0x0

    .restart local v1  # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v2  # "n":I
    :goto_1b
    if-ge v1, v2, :cond_25

    .line 251
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_22

    return v1

    .line 250
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 256
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_25
    const/4 v1, -0x1

    return v1
.end method

.method public insert(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .line 194
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt p1, v0, :cond_5b

    .line 195
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000  # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 196
    :cond_1b
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v0, :cond_38

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4c

    .line 200
    :cond_38
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    .line 203
    :goto_4c
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 206
    return-void

    .line 194
    :cond_5b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 324
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 480
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap;->entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ArrayMap$Keys;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 535
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    .line 536
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    if-nez v0, :cond_1c

    .line 537
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    .line 538
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    .line 540
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_33

    .line 541
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->index:I

    .line 542
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 543
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 544
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    return-object v0

    .line 546
    :cond_33
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->index:I

    .line 547
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 319
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peekKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 89
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    .line 90
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_1e

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 91
    :cond_1e
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    move v0, v1

    .line 93
    :cond_25
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 94
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 95
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 9
    .param p3, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)I"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 100
    .local v0, "existingIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 101
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    goto :goto_22

    .line 102
    :cond_b
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_22

    .line 103
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 104
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v4, p3

    invoke-static {v1, p3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v4, p3

    invoke-static {v1, p3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, p3

    .line 107
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, p3

    .line 108
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 109
    return p3
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<+TK;+TV;>;"
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->putAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V

    .line 114
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V
    .registers 8
    .param p2, "offset"  # I
    .param p3, "length"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "+TK;+TV;>;II)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<+TK;+TV;>;"
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt v0, v1, :cond_35

    .line 119
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p3

    sub-int/2addr v0, p2

    .line 120
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1d

    int-to-float v1, v0

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 121
    :cond_1d
    iget-object v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 124
    return-void

    .line 118
    .end local v0  # "sizeNeeded":I
    :cond_35
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

    iget v2, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)V
    .registers 7
    .param p1, "index"  # I

    .line 303
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_41

    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 305
    .local v0, "keys":[Ljava/lang/Object;
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 306
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v1, :cond_25

    .line 307
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_35

    .line 310
    :cond_25
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aget-object v1, v0, v1

    aput-object v1, v0, p1

    .line 311
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    .line 313
    :goto_35
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 314
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aput-object v2, v1, v3

    .line 315
    return-void

    .line 303
    .end local v0  # "keys":[Ljava/lang/Object;
    :cond_41
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 261
    .local v0, "keys":[Ljava/lang/Object;
    if-nez p1, :cond_19

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v2, "n":I
    :goto_7
    if-ge v1, v2, :cond_18

    .line 263
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_15

    .line 264
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 265
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 266
    return-object v3

    .line 262
    .end local v3  # "value":Ljava/lang/Object;, "TV;"
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_18
    goto :goto_31

    .line 270
    :cond_19
    const/4 v1, 0x0

    .restart local v1  # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v2  # "n":I
    :goto_1c
    if-ge v1, v2, :cond_31

    .line 271
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 272
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 273
    .restart local v3  # "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 274
    return-object v3

    .line 270
    .end local v3  # "value":Ljava/lang/Object;, "TV;"
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 278
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_31
    :goto_31
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .registers 8
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 283
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x1

    if-nez p2, :cond_1c

    if-nez p1, :cond_8

    goto :goto_1c

    .line 291
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v3, "n":I
    :goto_b
    if-ge v2, v3, :cond_2c

    .line 292
    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 293
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 294
    return v1

    .line 291
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 284
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_1c
    :goto_1c
    const/4 v2, 0x0

    .restart local v2  # "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v3  # "n":I
    :goto_1f
    if-ge v2, v3, :cond_2c

    .line 285
    aget-object v4, v0, v2

    if-ne v4, p1, :cond_29

    .line 286
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 287
    return v1

    .line 284
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 298
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method protected resize(I)V
    .registers 8
    .param p1, "newSize"  # I

    .line 369
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 370
    .local v0, "newKeys":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 374
    .local v1, "newValues":[Ljava/lang/Object;, "[TV;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iput-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 376
    return-void
.end method

.method public reverse()V
    .registers 9

    .line 379
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "lastIndex":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    div-int/lit8 v2, v2, 0x2

    .local v2, "n":I
    :goto_9
    if-ge v0, v2, :cond_30

    .line 380
    sub-int v3, v1, v0

    .line 381
    .local v3, "ii":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v0

    .line 382
    .local v4, "tempKey":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v6, v6, v3

    aput-object v6, v5, v0

    .line 383
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object v4, v5, v3

    .line 385
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v5, v5, v0

    .line 386
    .local v5, "tempValue":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v7, v7, v3

    aput-object v7, v6, v0

    .line 387
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v5, v6, v3

    .line 379
    .end local v3  # "ii":I
    .end local v4  # "tempKey":Ljava/lang/Object;, "TK;"
    .end local v5  # "tempValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 389
    .end local v0  # "i":I
    .end local v1  # "lastIndex":I
    .end local v2  # "n":I
    :cond_30
    return-void
.end method

.method public setKey(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_9

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 186
    return-void

    .line 184
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_9

    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 191
    return-void

    .line 189
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink()V
    .registers 3

    .line 356
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ne v0, v1, :cond_8

    return-void

    .line 357
    :cond_8
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 358
    return-void
.end method

.method public shuffle()V
    .registers 7

    .line 392
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_2d

    .line 393
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 394
    .local v1, "ii":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 395
    .local v2, "tempKey":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 396
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 398
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 399
    .local v3, "tempValue":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v4, v0

    .line 400
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 392
    .end local v1  # "ii":I
    .end local v2  # "tempKey":Ljava/lang/Object;, "TK;"
    .end local v3  # "tempValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 402
    .end local v0  # "i":I
    :cond_2d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 461
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_7

    const-string v0, "{}"

    return-object v0

    .line 462
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 463
    .local v0, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 464
    .local v1, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 465
    .local v2, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 466
    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 467
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 468
    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 469
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_28
    iget v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v3, v5, :cond_41

    .line 470
    const-string v5, ", "

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 471
    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 472
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 473
    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 475
    .end local v3  # "i":I
    :cond_41
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 476
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public truncate(I)V
    .registers 5
    .param p1, "newSize"  # I

    .line 407
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt v0, p1, :cond_5

    return-void

    .line 408
    :cond_5
    move v0, p1

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v1, :cond_16

    .line 409
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 410
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 412
    .end local v0  # "i":I
    :cond_16
    iput p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 413
    return-void
.end method

.method public values()Lcom/badlogic/gdx/utils/ArrayMap$Values;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 512
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    .line 513
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    if-nez v0, :cond_1c

    .line 514
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    .line 515
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    .line 517
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_33

    .line 518
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 519
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 521
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    return-object v0

    .line 523
    :cond_33
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 524
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 525
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    return-object v0
.end method
