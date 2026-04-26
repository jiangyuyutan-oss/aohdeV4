.class public Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;
.super Ljava/lang/Object;
.source "DefaultRenderableSorter.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;",
        "Ljava/util/Comparator<",
        "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
        ">;"
    }
.end annotation


# instance fields
.field private camera:Lcom/badlogic/gdx/graphics/Camera;

.field private final tmpV1:Lcom/badlogic/gdx/math/Vector3;

.field private final tmpV2:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method private getTranslation(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .registers 5
    .param p1, "worldTransform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "output"  # Lcom/badlogic/gdx/math/Vector3;

    .line 40
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->isZero()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41
    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1f

    .line 42
    :cond_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix4;->hasRotationOrScaling()Z

    move-result v0

    if-nez v0, :cond_18

    .line 43
    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1f

    .line 45
    :cond_18
    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 46
    :goto_1f
    return-object p3
.end method


# virtual methods
.method public compare(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Renderable;)I
    .registers 12
    .param p1, "o1"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "o2"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 51
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->has(J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 52
    .local v0, "b1":Z
    :goto_1d
    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Material;->has(J)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget-boolean v3, v3, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    if-eqz v3, :cond_37

    move v3, v2

    goto :goto_38

    :cond_37
    move v3, v1

    .line 53
    .local v3, "b2":Z
    :goto_38
    const/4 v4, -0x1

    if-eq v0, v3, :cond_40

    if-eqz v0, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v4

    :goto_3f
    return v2

    .line 57
    :cond_40
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->getTranslation(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 58
    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v6, p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->getTranslation(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 59
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v5

    const/high16 v6, 0x447a0000  # 1000.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 60
    .local v5, "dst":F
    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-gez v7, :cond_79

    move v1, v4

    goto :goto_7e

    :cond_79
    cmpl-float v4, v5, v6

    if-lez v4, :cond_7e

    move v1, v2

    .line 61
    .local v1, "result":I
    :cond_7e
    :goto_7e
    if-eqz v0, :cond_82

    neg-int v2, v1

    goto :goto_83

    :cond_82
    move v2, v1

    :goto_83
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 28
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->compare(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Renderable;)I

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

    .line 35
    .local p2, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 36
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 37
    return-void
.end method
