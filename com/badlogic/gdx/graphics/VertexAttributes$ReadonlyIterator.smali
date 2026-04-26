.class Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;
.super Ljava/lang/Object;
.source "VertexAttributes.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/VertexAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadonlyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field index:I

.field valid:Z


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    .line 203
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->array:[Ljava/lang/Object;

    .line 204
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 208
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    if-eqz v0, :cond_f

    .line 209
    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 208
    :cond_f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 215
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->valid:Z

    if-eqz v0, :cond_16

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 215
    :cond_16
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 221
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Remove not allowed."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    .line 225
    .local p0, "this":Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;, "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;->index:I

    .line 226
    return-void
.end method
