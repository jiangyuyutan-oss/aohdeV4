.class public Lcom/badlogic/gdx/graphics/g3d/model/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private final children:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation
.end field

.field public final globalTransform:Lcom/badlogic/gdx/math/Matrix4;

.field public id:Ljava/lang/String;

.field public inheritTransform:Z

.field public isAnimated:Z

.field public final localTransform:Lcom/badlogic/gdx/math/Matrix4;

.field protected parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

.field public parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodePart;",
            ">;"
        }
    .end annotation
.end field

.field public final rotation:Lcom/badlogic/gdx/math/Quaternion;

.field public final scale:Lcom/badlogic/gdx/math/Vector3;

.field public final translation:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 8
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "recursive"  # Z
    .param p3, "ignoreCase"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;"
        }
    .end annotation

    .line 299
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 301
    .local v0, "n":I
    if-eqz p3, :cond_1b

    .line 302
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 303
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-object v3, v2

    .local v3, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v3

    .line 302
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1  # "i":I
    .end local v3  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_1a
    goto :goto_31

    .line 305
    :cond_1b
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_1c
    if-ge v1, v0, :cond_31

    .line 306
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-object v3, v2

    .restart local v3  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    return-object v3

    .line 305
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 308
    .end local v1  # "i":I
    .end local v3  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_31
    :goto_31
    if-eqz p2, :cond_4a

    .line 309
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_34
    if-ge v1, v0, :cond_4a

    .line 310
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    move-object v3, v2

    .restart local v3  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    if-eqz v2, :cond_47

    return-object v3

    .line 309
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 312
    .end local v1  # "i":I
    .end local v3  # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_4a
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)I"
        }
    .end annotation

    .line 183
    .local p1, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I

    move-result v0

    return v0
.end method

.method public addChildren(Ljava/lang/Iterable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    .line 191
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChildren(ILjava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public attachTo(Lcom/badlogic/gdx/graphics/g3d/model/Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)V"
        }
    .end annotation

    .line 144
    .local p1, "parent":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    .line 145
    return-void
.end method

.method public calculateBoneTransforms(Z)V
    .registers 8
    .param p1, "recursive"  # Z

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 90
    .local v1, "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v3, v3

    if-eq v2, v3, :cond_24

    .line 91
    goto :goto_6

    .line 92
    :cond_24
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 93
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    if-ge v3, v2, :cond_4b

    .line 94
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v4, v4, v3

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/graphics/g3d/model/Node;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v4

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/math/Matrix4;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 95
    .end local v1  # "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    .end local v2  # "n":I
    .end local v3  # "i":I
    :cond_4b
    goto :goto_6

    .line 96
    :cond_4c
    if-eqz p1, :cond_65

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 98
    .local v1, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    .line 99
    .end local v1  # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    goto :goto_54

    .line 101
    :cond_65
    return-void
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 3
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 105
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 106
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 4
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "transform"  # Z

    .line 111
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateLocalTransform()Lcom/badlogic/gdx/math/Matrix4;
    .registers 5

    .line 60
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 61
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public calculateTransforms(Z)V
    .registers 5
    .param p1, "recursive"  # Z

    .line 78
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateLocalTransform()Lcom/badlogic/gdx/math/Matrix4;

    .line 79
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateWorldTransform()Lcom/badlogic/gdx/math/Matrix4;

    .line 81
    if-eqz p1, :cond_1f

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 83
    .local v1, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    .line 84
    .end local v1  # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    goto :goto_e

    .line 86
    :cond_1f
    return-void
.end method

.method public calculateWorldTransform()Lcom/badlogic/gdx/math/Matrix4;
    .registers 3

    .line 67
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_18

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_1f

    .line 70
    :cond_18
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 71
    :goto_1f
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 2

    .line 263
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->set(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public detach()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_c

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 153
    :cond_c
    return-void
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 3
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 11
    .param p1, "out"  # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "transform"  # Z

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 125
    .local v0, "partCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2f

    .line 126
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 127
    .local v2, "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    if-eqz v3, :cond_2c

    .line 128
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 129
    .local v3, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    if-eqz p2, :cond_23

    .line 130
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v5, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v6, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    goto :goto_2c

    .line 132
    :cond_23
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v5, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v6, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {v4, p1, v5, v6}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 125
    .end local v2  # "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    .end local v3  # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 135
    .end local v1  # "i":I
    :cond_2f
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 136
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    if-ge v2, v1, :cond_44

    .line 137
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 138
    .end local v2  # "i":I
    :cond_44
    return-object p1
.end method

.method public getChild(I)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 3
    .param p1, "index"  # I

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return-object v0
.end method

.method public getChild(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 5
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "recursive"  # Z
    .param p3, "ignoreCase"  # Z

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public getChildren()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return-object v0
.end method

.method public hasChildren()Z
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasParent()Z
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I
    .registers 6
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(ITT;)I"
        }
    .end annotation

    .line 201
    .local p2, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    move-object v0, p0

    .local v0, "p":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :goto_1
    if-eqz v0, :cond_12

    .line 202
    if-eq v0, p2, :cond_a

    .line 201
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    goto :goto_1

    .line 202
    :cond_a
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Cannot add a parent as a child"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0  # "p":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_12
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    .line 205
    .restart local v0  # "p":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    if-eqz v0, :cond_27

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_27

    :cond_1f
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Could not remove child from its current parent"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_27
    :goto_27
    if-ltz p1, :cond_36

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v1, :cond_30

    goto :goto_36

    .line 210
    :cond_30
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    goto :goto_3f

    .line 207
    :cond_36
    :goto_36
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget p1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 208
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 211
    :goto_3f
    iput-object p0, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 212
    return p1
.end method

.method public insertChildren(ILjava/lang/Iterable;)I
    .registers 7
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(I",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    .line 222
    .local p2, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    if-ltz p1, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le p1, v0, :cond_c

    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget p1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 223
    :cond_c
    move v0, p1

    .line 224
    .local v0, "i":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 225
    .local v2, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    add-int/lit8 v3, v0, 0x1

    .end local v0  # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I

    move v0, v3

    goto :goto_11

    .line 226
    .end local v2  # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    .end local v3  # "i":I
    .restart local v0  # "i":I
    :cond_24
    return p1
.end method

.method public removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)Z"
        }
    .end annotation

    .line 235
    .local p1, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    .line 236
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 237
    return v1
.end method

.method protected set(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 6
    .param p1, "other"  # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 275
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->detach()V

    .line 276
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 277
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    .line 278
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 284
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 285
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 286
    .local v1, "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->copy()Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 287
    .end local v1  # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    goto :goto_3d

    .line 288
    :cond_53
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 289
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 290
    .local v1, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    .line 291
    .end local v1  # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    goto :goto_60

    .line 292
    :cond_74
    return-object p0
.end method
