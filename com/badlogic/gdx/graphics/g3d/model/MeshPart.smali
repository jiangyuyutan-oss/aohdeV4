.class public Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
.super Ljava/lang/Object;
.source "MeshPart.java"


# static fields
.field private static final bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;


# instance fields
.field public final center:Lcom/badlogic/gdx/math/Vector3;

.field public final halfExtents:Lcom/badlogic/gdx/math/Vector3;

.field public id:Ljava/lang/String;

.field public mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field public offset:I

.field public primitiveType:I

.field public radius:F

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    .line 65
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V
    .registers 3
    .param p1, "copyFrom"  # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    .line 65
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    .line 86
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->set(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;III)V
    .registers 7
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "mesh"  # Lcom/badlogic/gdx/graphics/Mesh;
    .param p3, "offset"  # I
    .param p4, "size"  # I
    .param p5, "type"  # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    .line 65
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    .line 80
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->set(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;III)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Z
    .registers 4
    .param p1, "other"  # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 134
    if-eq p1, p0, :cond_1f

    if-eqz p1, :cond_1d

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    if-ne v0, v1, :cond_1d

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    if-ne v0, v1, :cond_1d

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    if-ne v0, v1, :cond_1d

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    if-ne v0, v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "arg0"  # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 141
    :cond_4
    if-ne p1, p0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 142
    :cond_8
    instance-of v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-nez v1, :cond_d

    return v0

    .line 143
    :cond_d
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->equals(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Z

    move-result v0

    return v0
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 6
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 157
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Z)V
    .registers 9
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "autoBind"  # Z

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;IIIZ)V

    .line 151
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .registers 4
    .param p1, "other"  # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 93
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 95
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 96
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 97
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 100
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    .line 101
    return-object p0
.end method

.method public set(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;III)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .registers 8
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "mesh"  # Lcom/badlogic/gdx/graphics/Mesh;
    .param p3, "offset"  # I
    .param p4, "size"  # I
    .param p5, "type"  # I

    .line 107
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 109
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 110
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 111
    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 114
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    .line 115
    return-object p0
.end method

.method public update()V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 124
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 125
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    .line 127
    return-void
.end method
