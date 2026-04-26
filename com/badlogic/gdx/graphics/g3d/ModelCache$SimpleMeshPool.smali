.class public Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;
.super Ljava/lang/Object;
.source "ModelCache.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleMeshPool"
.end annotation


# instance fields
.field private freeMeshes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;"
        }
    .end annotation
.end field

.field private usedMeshes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Mesh;

    .line 92
    .local v1, "m":Lcom/badlogic/gdx/graphics/Mesh;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .end local v1  # "m":Lcom/badlogic/gdx/graphics/Mesh;
    goto :goto_6

    .line 93
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Mesh;

    .line 95
    .restart local v1  # "m":Lcom/badlogic/gdx/graphics/Mesh;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .end local v1  # "m":Lcom/badlogic/gdx/graphics/Mesh;
    goto :goto_21

    .line 96
    :cond_31
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 97
    return-void
.end method

.method public flush()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 69
    return-void
.end method

.method public obtain(Lcom/badlogic/gdx/graphics/VertexAttributes;II)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 8
    .param p1, "vertexAttributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;
    .param p2, "vertexCount"  # I
    .param p3, "indexCount"  # I

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_5
    if-ge v0, v1, :cond_33

    .line 74
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Mesh;

    .line 75
    .local v2, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result v3

    if-lt v3, p2, :cond_30

    .line 76
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result v3

    if-lt v3, p3, :cond_30

    .line 77
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 78
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 79
    return-object v2

    .line 73
    .end local v2  # "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 82
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_33
    const/high16 p2, 0x10000

    .line 83
    add-int/lit8 v0, p3, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3, p1}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 85
    .local v0, "result":Lcom/badlogic/gdx/graphics/Mesh;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 86
    return-object v0
.end method
