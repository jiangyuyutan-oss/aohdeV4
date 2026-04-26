.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.super Ljava/lang/Object;
.source "ParallelArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    }
.end annotation


# instance fields
.field arrays:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">;"
        }
    .end annotation
.end field

.field public capacity:I

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .param p1, "capacity"  # I

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    .line 184
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    .line 185
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 186
    return-void
.end method

.method private allocateChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .registers 12
    .param p1, "channelDescriptor"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            ")TT;"
        }
    .end annotation

    .line 209
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_12

    .line 210
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->count:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V

    return-object v0

    .line 211
    :cond_12
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_24

    .line 212
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->count:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V

    return-object v0

    .line 214
    :cond_24
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    iget v7, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->count:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    iget-object v9, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->type:Ljava/lang/Class;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;IIILjava/lang/Class;)V

    return-object v0
.end method

.method private findIndex(I)I
    .registers 5
    .param p1, "id"  # I

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_17

    .line 225
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    aget-object v1, v1, v0

    .line 226
    .local v1, "array":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    iget v2, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->id:I

    if-ne v2, p1, :cond_14

    return v0

    .line 224
    .end local v1  # "array":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    .end local v0  # "i":I
    :cond_17
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .registers 3
    .param p1, "channelDescriptor"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            ")TT;"
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    return-object v0
.end method

.method public addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .registers 5
    .param p1, "channelDescriptor"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 198
    .local p2, "initializer":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;, "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    .line 199
    .local v0, "channel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;, "TT;"
    if-nez v0, :cond_14

    .line 200
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->allocateChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    .line 201
    if-eqz p2, :cond_f

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;->init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;)V

    .line 202
    :cond_f
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 204
    :cond_14
    return-object v0
.end method

.method public varargs addElement([Ljava/lang/Object;)V
    .registers 6
    .param p1, "values"  # [Ljava/lang/Object;

    .line 235
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    if-eq v0, v1, :cond_27

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "k":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .line 239
    .local v2, "strideArray":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    invoke-virtual {v2, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->add(I[Ljava/lang/Object;)V

    .line 240
    iget v3, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v0, v3

    .line 241
    .end local v2  # "strideArray":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    goto :goto_d

    .line 242
    :cond_20
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 243
    return-void

    .line 235
    .end local v0  # "k":I
    :cond_27
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Capacity reached, cannot add other elements"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 268
    return-void
.end method

.method public getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .registers 6
    .param p1, "descriptor"  # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            ")TT;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .line 259
    .local v1, "array":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    iget v2, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->id:I

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    if-ne v2, v3, :cond_19

    return-object v1

    .line 260
    .end local v1  # "array":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    :cond_19
    goto :goto_6

    .line 261
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeArray(I)V
    .registers 4
    .param p1, "id"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->findIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public removeElement(I)V
    .registers 5
    .param p1, "index"  # I

    .line 247
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 249
    .local v0, "last":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .line 250
    .local v2, "strideArray":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    invoke-virtual {v2, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->swap(II)V

    .line 251
    .end local v2  # "strideArray":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    goto :goto_a

    .line 252
    :cond_1a
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 253
    return-void
.end method

.method public setCapacity(I)V
    .registers 4
    .param p1, "requiredCapacity"  # I

    .line 273
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    if-eq v0, p1, :cond_1c

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->arrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .line 275
    .local v1, "channel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->setCapacity(I)V

    .line 276
    .end local v1  # "channel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    goto :goto_a

    .line 277
    :cond_1a
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    .line 279
    :cond_1c
    return-void
.end method
