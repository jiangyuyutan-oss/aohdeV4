.class public Lcom/badlogic/gdx/graphics/g3d/ModelCache$Sorter;
.super Ljava/lang/Object;
.source "ModelCache.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;",
        "Ljava/util/Comparator<",
        "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Renderable;)I
    .registers 9
    .param p1, "arg0"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "arg1"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 150
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    .line 151
    .local v0, "va0":Lcom/badlogic/gdx/graphics/VertexAttributes;
    iget-object v1, p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    .line 152
    .local v1, "va1":Lcom/badlogic/gdx/graphics/VertexAttributes;
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->compareTo(Lcom/badlogic/gdx/graphics/VertexAttributes;)I

    move-result v2

    .line 153
    .local v2, "vc":I
    if-nez v2, :cond_2b

    .line 154
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Material;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attributes;)I

    move-result v3

    .line 155
    .local v3, "mc":I
    if-nez v3, :cond_2a

    .line 156
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    sub-int/2addr v4, v5

    return v4

    .line 158
    :cond_2a
    return v3

    .line 160
    .end local v3  # "mc":I
    :cond_2b
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 142
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$Sorter;->compare(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Renderable;)I

    move-result p1

    return p1
.end method

.method public sort(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/utils/Array;)V
    .registers 3
    .param p1, "camera"  # Lcom/badlogic/gdx/graphics/Camera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/Camera;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p2, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 146
    return-void
.end method
