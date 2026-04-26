.class public Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
.super Ljava/lang/Object;
.source "ModelInstance.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;


# static fields
.field public static defaultShareKeyframes:Z


# instance fields
.field public final animations:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;"
        }
    .end annotation
.end field

.field public final materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Material;",
            ">;"
        }
    .end annotation
.end field

.field public final model:Lcom/badlogic/gdx/graphics/g3d/Model;

.field public final nodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation
.end field

.field public transform:Lcom/badlogic/gdx/math/Matrix4;

.field public userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .registers 4
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 61
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;[Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;FFF)V
    .registers 6
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "z"  # F

    .line 187
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 5
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 193
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;)V
    .registers 5
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p3, "rootNodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;Z)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;Z)V
    .registers 6
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p4, "shareKeyframes"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 171
    .local p3, "rootNodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 172
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 173
    if-nez p2, :cond_22

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    goto :goto_23

    :cond_22
    move-object v0, p2

    :goto_23
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 174
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V

    .line 175
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0, p4}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 176
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"  # Ljava/lang/String;
    .param p4, "mergeTransform"  # Z

    .line 76
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZ)V
    .registers 13
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"  # Ljava/lang/String;
    .param p4, "parentTransform"  # Z
    .param p5, "mergeTransform"  # Z

    .line 96
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V
    .registers 15
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"  # Ljava/lang/String;
    .param p4, "recursive"  # Z
    .param p5, "parentTransform"  # Z
    .param p6, "mergeTransform"  # Z

    .line 117
    sget-boolean v7, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZZ)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZZ)V
    .registers 12
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"  # Ljava/lang/String;
    .param p4, "recursive"  # Z
    .param p5, "parentTransform"  # Z
    .param p6, "mergeTransform"  # Z
    .param p7, "shareKeyframes"  # Z

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 128
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 129
    if-nez p2, :cond_22

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    goto :goto_23

    :cond_22
    move-object v0, p2

    :goto_23
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 130
    invoke-virtual {p1, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    .line 131
    .local v0, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "copy":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 132
    if-eqz p6, :cond_54

    .line 133
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p5, :cond_3c

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_3e

    :cond_3c
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    :goto_3e
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 134
    iget-object v1, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 135
    iget-object v1, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    .line 136
    iget-object v1, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_67

    .line 137
    :cond_54
    if-eqz p5, :cond_67

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->hasParent()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 138
    :cond_67
    :goto_67
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate()V

    .line 139
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1, p7}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 140
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 141
    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V
    .registers 6
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "rootNodeIds"  # [Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 150
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 151
    if-nez p2, :cond_22

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    goto :goto_23

    :cond_22
    move-object v0, p2

    :goto_23
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 152
    if-nez p3, :cond_2d

    .line 153
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;)V

    goto :goto_32

    .line 155
    :cond_2d
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;[Ljava/lang/String;)V

    .line 156
    :goto_32
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    sget-boolean v1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 157
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 4
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "position"  # Lcom/badlogic/gdx/math/Vector3;

    .line 181
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/utils/Array;)V
    .registers 4
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p2, "rootNodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "nodeId"  # Ljava/lang/String;
    .param p3, "mergeTransform"  # Z

    .line 68
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;ZZ)V
    .registers 12
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "nodeId"  # Ljava/lang/String;
    .param p3, "parentTransform"  # Z
    .param p4, "mergeTransform"  # Z

    .line 85
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;ZZZ)V
    .registers 13
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "nodeId"  # Ljava/lang/String;
    .param p3, "recursive"  # Z
    .param p4, "parentTransform"  # Z
    .param p5, "mergeTransform"  # Z

    .line 106
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 107
    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;[Ljava/lang/String;)V
    .registers 4
    .param p1, "model"  # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "rootNodeIds"  # [Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .registers 3
    .param p1, "copyFrom"  # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    .line 198
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 4
    .param p1, "copyFrom"  # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 203
    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;Z)V

    .line 204
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;Z)V
    .registers 5
    .param p1, "copyFrom"  # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    .param p2, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "shareKeyframes"  # Z

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 208
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 209
    if-nez p2, :cond_24

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    goto :goto_25

    :cond_24
    move-object v0, p2

    :goto_25
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 210
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;)V

    .line 211
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 212
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 213
    return-void
.end method

.method private copyNodes(Lcom/badlogic/gdx/utils/Array;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_17

    .line 222
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 223
    .local v2, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 221
    .end local v2  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 225
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_17
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate()V

    .line 226
    return-void
.end method

.method private copyNodes(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    .local p2, "nodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_31

    .line 243
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 244
    .local v2, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 245
    .local v4, "nodeId":Ljava/lang/String;
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 246
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 247
    goto :goto_2e

    .line 249
    .end local v4  # "nodeId":Ljava/lang/String;
    :cond_2d
    goto :goto_f

    .line 242
    .end local v2  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 251
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_31
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate()V

    .line 252
    return-void
.end method

.method private varargs copyNodes(Lcom/badlogic/gdx/utils/Array;[Ljava/lang/String;)V
    .registers 10
    .param p2, "nodeIds"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 229
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_3
    if-ge v0, v1, :cond_29

    .line 230
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 231
    .local v2, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    array-length v3, p2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_26

    aget-object v5, p2, v4

    .line 232
    .local v5, "nodeId":Ljava/lang/String;
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 233
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 234
    goto :goto_26

    .line 231
    .end local v5  # "nodeId":Ljava/lang/String;
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 229
    .end local v2  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 238
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_29
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate()V

    .line 239
    return-void
.end method

.method private invalidate()V
    .registers 4

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 282
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate(Lcom/badlogic/gdx/graphics/g3d/model/Node;)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 284
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_15
    return-void
.end method

.method private invalidate(Lcom/badlogic/gdx/graphics/g3d/model/Node;)V
    .registers 9
    .param p1, "node"  # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_5
    if-ge v0, v1, :cond_5e

    .line 258
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 259
    .local v2, "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 260
    .local v3, "bindPose":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/math/Matrix4;>;"
    if-eqz v3, :cond_2d

    .line 261
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_14
    iget v5, v3, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v4, v5, :cond_2d

    .line 262
    iget-object v5, v3, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v6, v3, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    check-cast v6, [Lcom/badlogic/gdx/graphics/g3d/model/Node;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v6

    aput-object v6, v5, v4

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 265
    .end local v4  # "j":I
    :cond_2d
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 266
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v4

    .line 267
    .local v4, "midx":I
    if-gez v4, :cond_51

    .line 268
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g3d/Material;->copy()Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v6

    iput-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_5b

    .line 270
    :cond_51
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 257
    .end local v2  # "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    .end local v3  # "bindPose":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/math/Matrix4;>;"
    .end local v4  # "midx":I
    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 273
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_5e
    const/4 v0, 0x0

    .restart local v0  # "i":I
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildCount()I

    move-result v1

    .restart local v1  # "n":I
    :goto_63
    if-ge v0, v1, :cond_6f

    .line 274
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChild(I)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate(Lcom/badlogic/gdx/graphics/g3d/model/Node;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 276
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_6f
    return-void
.end method


# virtual methods
.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 3
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 414
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 415
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateTransforms()V
    .registers 5

    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 402
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x1

    if-ge v1, v0, :cond_16

    .line 403
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 405
    .end local v1  # "i":I
    :cond_16
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_17
    if-ge v1, v0, :cond_27

    .line 406
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 408
    .end local v1  # "i":I
    :cond_27
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    .registers 2

    .line 217
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V

    return-object v0
.end method

.method public copyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V
    .registers 3
    .param p1, "sourceAnim"  # Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 306
    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;Z)V

    .line 307
    return-void
.end method

.method public copyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;Z)V
    .registers 14
    .param p1, "sourceAnim"  # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "shareKeyframes"  # Z

    .line 313
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Animation;-><init>()V

    .line 314
    .local v0, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    .line 315
    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 316
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    .line 317
    .local v2, "nanim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v3

    .line 318
    .local v3, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    if-nez v3, :cond_2a

    goto :goto_13

    .line 319
    :cond_2a
    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;-><init>()V

    .line 320
    .local v4, "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    iput-object v3, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 321
    if-eqz p2, :cond_41

    .line 322
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 323
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 324
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    goto/16 :goto_c5

    .line 326
    :cond_41
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_6d

    .line 327
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 328
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v5

    :goto_52
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 329
    .local v6, "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .end local v6  # "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    goto :goto_52

    .line 331
    :cond_6d
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_99

    .line 332
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 333
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v5

    :goto_7e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_99

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 334
    .local v6, "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .end local v6  # "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    goto :goto_7e

    .line 336
    :cond_99
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_c5

    .line 337
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 338
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v5

    :goto_aa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 339
    .local v6, "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .end local v6  # "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    goto :goto_aa

    .line 342
    :cond_c5
    :goto_c5
    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-nez v5, :cond_d1

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-nez v5, :cond_d1

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_d6

    .line 343
    :cond_d1
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 344
    .end local v2  # "nanim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    .end local v3  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .end local v4  # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    :cond_d6
    goto/16 :goto_13

    .line 345
    :cond_d8
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_e3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 346
    :cond_e3
    return-void
.end method

.method public copyAnimations(Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;)V"
        }
    .end annotation

    .line 289
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/Animation;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 290
    .local v1, "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    sget-boolean v2, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;Z)V

    .line 291
    .end local v1  # "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    goto :goto_4

    .line 292
    :cond_16
    return-void
.end method

.method public copyAnimations(Ljava/lang/Iterable;Z)V
    .registers 5
    .param p2, "shareKeyframes"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;Z)V"
        }
    .end annotation

    .line 298
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/Animation;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 299
    .local v1, "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;Z)V

    .line 300
    .end local v1  # "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    goto :goto_4

    .line 301
    :cond_14
    return-void
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 5
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 423
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 424
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 425
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 426
    .end local v1  # "i":I
    :cond_15
    return-object p1
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .registers 3
    .param p1, "id"  # Ljava/lang/String;

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .registers 7
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "ignoreCase"  # Z

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 441
    .local v0, "n":I
    if-eqz p2, :cond_1f

    .line 442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 443
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-object v3, v2

    .local v3, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v3

    .line 442
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1  # "i":I
    .end local v3  # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_1e
    goto :goto_37

    .line 445
    :cond_1f
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_20
    if-ge v1, v0, :cond_37

    .line 446
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-object v3, v2

    .restart local v3  # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    return-object v3

    .line 445
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 448
    .end local v1  # "i":I
    .end local v3  # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_37
    :goto_37
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/Material;
    .registers 3
    .param p1, "id"  # Ljava/lang/String;

    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v0

    return-object v0
.end method

.method public getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;
    .registers 7
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "ignoreCase"  # Z

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 463
    .local v0, "n":I
    if-eqz p2, :cond_1f

    .line 464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 465
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    move-object v3, v2

    .local v3, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v3

    .line 464
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1  # "i":I
    .end local v3  # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_1e
    goto :goto_37

    .line 467
    :cond_1f
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_20
    if-ge v1, v0, :cond_37

    .line 468
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    move-object v3, v2

    .restart local v3  # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    return-object v3

    .line 467
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 470
    .end local v1  # "i":I
    .end local v3  # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_37
    :goto_37
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 3
    .param p1, "id"  # Ljava/lang/String;

    .line 476
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 4
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "recursive"  # Z

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 5
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "recursive"  # Z
    .param p3, "ignoreCase"  # Z

    .line 491
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .registers 4
    .param p1, "out"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .registers 5
    .param p1, "out"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "node"  # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 366
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .registers 6
    .param p1, "out"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "node"  # Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .param p3, "nodePart"  # Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 370
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->setRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 371
    iget-object v0, p3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v0, :cond_19

    .line 372
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_2a

    .line 373
    :cond_19
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v0, :cond_25

    .line 374
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_2a

    .line 376
    :cond_25
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 377
    :goto_2a
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->userData:Ljava/lang/Object;

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->userData:Ljava/lang/Object;

    .line 378
    return-object p1
.end method

.method protected getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .registers 7
    .param p1, "node"  # Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .line 382
    .local p2, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p3, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_2a

    .line 383
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 384
    .local v1, "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    if-eqz v2, :cond_29

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v2, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 385
    .end local v1  # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_29
    goto :goto_c

    .line 388
    :cond_2a
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 389
    .local v1, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 390
    .end local v1  # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    goto :goto_32

    .line 391
    :cond_42
    return-void
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 355
    .local v1, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 356
    .end local v1  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    goto :goto_6

    .line 357
    :cond_16
    return-void
.end method
