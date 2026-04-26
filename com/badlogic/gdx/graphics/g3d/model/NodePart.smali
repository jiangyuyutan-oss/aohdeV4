.class public Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
.super Ljava/lang/Object;
.source "NodePart.java"


# instance fields
.field public bones:[Lcom/badlogic/gdx/math/Matrix4;

.field public enabled:Z

.field public invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field public material:Lcom/badlogic/gdx/graphics/g3d/Material;

.field public meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .registers 4
    .param p1, "meshPart"  # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .param p2, "material"  # Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    .line 52
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 53
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 54
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    .registers 2

    .line 71
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;-><init>()V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->set(Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    move-result-object v0

    return-object v0
.end method

.method protected set(Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    .registers 7
    .param p1, "other"  # Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 76
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 77
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    .line 78
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-nez v0, :cond_1b

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 80
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_69

    .line 82
    :cond_1b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-nez v0, :cond_30

    .line 83
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const-class v3, Lcom/badlogic/gdx/math/Matrix4;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    goto :goto_35

    .line 85
    :cond_30
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    .line 86
    :goto_35
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->putAll(Lcom/badlogic/gdx/utils/ArrayMap;)V

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eq v0, v1, :cond_51

    .line 89
    :cond_49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Matrix4;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    .line 91
    :cond_51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_52
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v1, v1

    if-ge v0, v1, :cond_69

    .line 92
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v1, v1, v0

    if-nez v1, :cond_66

    .line 93
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    aput-object v2, v1, v0

    .line 91
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 96
    .end local v0  # "i":I
    :cond_69
    :goto_69
    return-object p0
.end method

.method public setRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .registers 4
    .param p1, "out"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 65
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->set(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    .line 67
    return-object p1
.end method
