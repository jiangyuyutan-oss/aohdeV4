.class public Lcom/badlogic/gdx/utils/BinaryHeap;
.super Ljava/lang/Object;
.source "BinaryHeap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/utils/BinaryHeap$Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final isMaxHeap:Z

.field private nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;-><init>(IZ)V

    .line 32
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .param p1, "capacity"  # I
    .param p2, "isMaxHeap"  # Z

    .line 34
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    .line 36
    new-array v0, p1, [Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 37
    return-void
.end method

.method private down(I)V
    .registers 16
    .param p1, "index"  # I

    .line 155
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 156
    .local v0, "nodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .line 158
    .local v1, "size":I
    aget-object v2, v0, p1

    .line 159
    .local v2, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v3, v2, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 162
    .local v3, "value":F
    :goto_8
    shl-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 163
    .local v4, "leftIndex":I
    if-lt v4, v1, :cond_10

    goto/16 :goto_64

    .line 164
    :cond_10
    add-int/lit8 v6, v4, 0x1

    .line 167
    .local v6, "rightIndex":I
    aget-object v7, v0, v4

    .line 168
    .local v7, "leftNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v8, v7, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 173
    .local v8, "leftValue":F
    if-lt v6, v1, :cond_25

    .line 174
    const/4 v9, 0x0

    .line 175
    .local v9, "rightNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget-boolean v10, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    if-eqz v10, :cond_21

    const v10, -0x800001

    goto :goto_24

    :cond_21
    const v10, 0x7f7fffff  # Float.MAX_VALUE

    .local v10, "rightValue":F
    :goto_24
    goto :goto_29

    .line 177
    .end local v9  # "rightNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .end local v10  # "rightValue":F
    :cond_25
    aget-object v9, v0, v6

    .line 178
    .restart local v9  # "rightNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v10, v9, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 182
    .restart local v10  # "rightValue":F
    :goto_29
    cmpg-float v11, v8, v10

    const/4 v12, 0x0

    if-gez v11, :cond_30

    move v11, v5

    goto :goto_31

    :cond_30
    move v11, v12

    :goto_31
    iget-boolean v13, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v11, v13

    if-eqz v11, :cond_4c

    .line 183
    cmpl-float v11, v8, v3

    if-eqz v11, :cond_64

    cmpl-float v11, v8, v3

    if-lez v11, :cond_3f

    goto :goto_40

    :cond_3f
    move v5, v12

    :goto_40
    iget-boolean v11, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v5, v11

    if-eqz v5, :cond_46

    goto :goto_64

    .line 184
    :cond_46
    aput-object v7, v0, p1

    .line 185
    iput p1, v7, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 186
    move p1, v4

    goto :goto_63

    .line 188
    :cond_4c
    cmpl-float v11, v10, v3

    if-eqz v11, :cond_64

    cmpl-float v11, v10, v3

    if-lez v11, :cond_55

    goto :goto_56

    :cond_55
    move v5, v12

    :goto_56
    iget-boolean v11, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v5, v11

    if-eqz v5, :cond_5c

    goto :goto_64

    .line 189
    :cond_5c
    aput-object v9, v0, p1

    .line 190
    if-eqz v9, :cond_62

    iput p1, v9, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 191
    :cond_62
    move p1, v6

    .line 193
    .end local v4  # "leftIndex":I
    .end local v6  # "rightIndex":I
    .end local v7  # "leftNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .end local v8  # "leftValue":F
    .end local v9  # "rightNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .end local v10  # "rightValue":F
    :goto_63
    goto :goto_8

    .line 195
    :cond_64
    :goto_64
    aput-object v2, v0, p1

    .line 196
    iput p1, v2, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 197
    return-void
.end method

.method private up(I)V
    .registers 9
    .param p1, "index"  # I

    .line 137
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 138
    .local v0, "nodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    aget-object v1, v0, p1

    .line 139
    .local v1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v2, v1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 140
    .local v2, "value":F
    :goto_6
    if-lez p1, :cond_21

    .line 141
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    .line 142
    .local v3, "parentIndex":I
    aget-object v5, v0, v3

    .line 143
    .local v5, "parent":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v6, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpg-float v6, v2, v6

    if-gez v6, :cond_15

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    :goto_16
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v4, v6

    if-eqz v4, :cond_21

    .line 144
    aput-object v5, v0, p1

    .line 145
    iput p1, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 146
    move p1, v3

    .line 149
    .end local v3  # "parentIndex":I
    .end local v5  # "parent":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    goto :goto_6

    .line 150
    :cond_21
    aput-object v1, v0, p1

    .line 151
    iput p1, v1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 152
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    .local p1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v1, v1

    if-ne v0, v1, :cond_17

    .line 44
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 45
    .local v0, "newNodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 49
    .end local v0  # "newNodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    :cond_17
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iput v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aput-object p1, v0, v1

    .line 51
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    .line 52
    return-object p1
.end method

.method public add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;F)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 4
    .param p2, "value"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    .local p1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;, "TT;"
    iput p2, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 59
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/BinaryHeap;->add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 5

    .line 122
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 123
    iput v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .line 124
    return-void
.end method

.method public contains(Lcom/badlogic/gdx/utils/BinaryHeap$Node;Z)Z
    .registers 10
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    .local p1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;, "TT;"
    if-eqz p1, :cond_27

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_14

    .line 67
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v3, v2

    move v4, v0

    :goto_a
    if-ge v4, v3, :cond_26

    aget-object v5, v2, v4

    .line 68
    .local v5, "n":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    if-ne v5, p1, :cond_11

    return v1

    .line 67
    .end local v5  # "n":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 70
    :cond_14
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v3, v2

    move v4, v0

    :goto_18
    if-ge v4, v3, :cond_26

    aget-object v5, v2, v4

    .line 71
    .local v5, "other":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    return v1

    .line 70
    .end local v5  # "other":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 73
    :cond_26
    return v0

    .line 65
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"  # Ljava/lang/Object;

    .line 200
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    instance-of v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 201
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/BinaryHeap;

    .line 202
    .local v0, "other":Lcom/badlogic/gdx/utils/BinaryHeap;
    iget v2, v0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-eq v2, v3, :cond_10

    return v1

    .line 203
    :cond_10
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .local v2, "nodes1":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget-object v3, v0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 204
    .local v3, "nodes2":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .local v5, "n":I
    :goto_17
    if-ge v4, v5, :cond_29

    .line 205
    aget-object v6, v2, v4

    iget v6, v6, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    aget-object v7, v3, v4

    iget v7, v7, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_26

    return v1

    .line 204
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 206
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_29
    const/4 v1, 0x1

    return v1
.end method

.method public hashCode()I
    .registers 7

    .line 210
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    const/4 v0, 0x1

    .line 211
    .local v0, "h":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 212
    .local v1, "nodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .local v3, "n":I
    :goto_6
    if-ge v2, v3, :cond_17

    .line 213
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v1, v2

    iget v5, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int v0, v4, v5

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 214
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_17
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 118
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

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

    .line 113
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-eqz v0, :cond_a

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 79
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The heap is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 87
    .local v0, "removed":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    const/4 v3, 0x0

    if-lez v2, :cond_22

    .line 88
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v5, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aget-object v4, v4, v5

    aput-object v4, v2, v1

    .line 89
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v4, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aput-object v3, v2, v4

    .line 90
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    goto :goto_26

    .line 92
    :cond_22
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    aput-object v3, v2, v1

    .line 93
    :goto_26
    return-object v0
.end method

.method public remove(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    .local p1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v0, :cond_37

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v4, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aget-object v0, v0, v4

    .line 100
    .local v0, "moved":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget-object v4, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v5, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aput-object v2, v4, v5

    .line 101
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v4, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    aput-object v0, v2, v4

    .line 102
    iget v2, v0, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    iget v4, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_25

    goto :goto_26

    :cond_25
    move v1, v3

    :goto_26
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v1, v2

    if-eqz v1, :cond_31

    .line 103
    iget v1, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    goto :goto_36

    .line 105
    :cond_31
    iget v1, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    .line 106
    .end local v0  # "moved":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    :goto_36
    goto :goto_3b

    .line 107
    :cond_37
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    aput-object v2, v0, v3

    .line 108
    :goto_3b
    return-object p1
.end method

.method public setValue(Lcom/badlogic/gdx/utils/BinaryHeap$Node;F)V
    .registers 6
    .param p2, "value"  # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    .local p1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;, "TT;"
    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 129
    .local v0, "oldValue":F
    iput p2, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 130
    cmpg-float v1, p2, v0

    if-gez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v1, v2

    if-eqz v1, :cond_16

    .line 131
    iget v1, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    goto :goto_1b

    .line 133
    :cond_16
    iget v1, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    .line 134
    :goto_1b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 218
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 219
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 220
    .local v0, "nodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 221
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 222
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v2, v2, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 223
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1e
    iget v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-ge v2, v3, :cond_31

    .line 224
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 225
    aget-object v3, v0, v2

    iget v3, v3, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 227
    .end local v2  # "i":I
    :cond_31
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 228
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
