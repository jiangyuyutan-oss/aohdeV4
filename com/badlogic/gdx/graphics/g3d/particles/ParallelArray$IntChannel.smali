.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
.source "ParallelArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntChannel"
.end annotation


# instance fields
.field public data:[I

.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V
    .registers 6
    .param p1, "this$0"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
    .param p2, "id"  # I
    .param p3, "strideSize"  # I
    .param p4, "size"  # I

    .line 105
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    .line 106
    mul-int v0, p4, p3

    new-array v0, v0, [I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;ILjava/lang/Object;I)V

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    .line 108
    return-void
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .registers 8
    .param p1, "index"  # I
    .param p2, "objects"  # [Ljava/lang/Object;

    .line 112
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    mul-int/2addr v0, v1

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    add-int/2addr v1, v0

    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_b
    if-ge v0, v1, :cond_1e

    .line 113
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    aget-object v4, p2, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 115
    .end local v0  # "i":I
    .end local v1  # "c":I
    .end local v2  # "k":I
    :cond_1e
    return-void
.end method

.method public setCapacity(I)V
    .registers 6
    .param p1, "requiredCapacity"  # I

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    mul-int/2addr v0, p1

    new-array v0, v0, [I

    .line 132
    .local v0, "newData":[I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    array-length v2, v2

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public swap(II)V
    .registers 7
    .param p1, "i"  # I
    .param p2, "k"  # I

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    mul-int/2addr v0, p1

    .line 121
    .end local p1  # "i":I
    .local v0, "i":I
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    mul-int/2addr p1, p2

    .line 122
    .end local p2  # "k":I
    .local p1, "k":I
    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    add-int/2addr p2, v0

    .local p2, "c":I
    :goto_9
    if-ge v0, p2, :cond_20

    .line 123
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    aget v1, v1, v0

    .line 124
    .local v1, "t":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    aget v3, v3, p1

    aput v3, v2, v0

    .line 125
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    aput v1, v2, p1

    .line 122
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 127
    .end local v1  # "t":I
    .end local p2  # "c":I
    :cond_20
    return-void
.end method
