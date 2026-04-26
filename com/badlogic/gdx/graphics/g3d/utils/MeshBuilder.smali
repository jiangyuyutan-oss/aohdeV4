.class public Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
.super Ljava/lang/Object;
.source "MeshBuilder.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;


# static fields
.field public static final MAX_INDEX:I = 0xffff

.field public static final MAX_VERTICES:I = 0x10000

.field private static indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

.field private static final tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private static final tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final vTmp:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private biNorOffset:I

.field private final bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field private colOffset:I

.field private colSize:I

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private cpOffset:I

.field private hasColor:Z

.field private hasUVTransform:Z

.field private indices:Lcom/badlogic/gdx/utils/ShortArray;

.field private istart:I

.field private lastIndex:I

.field private norOffset:I

.field private final normalTransform:Lcom/badlogic/gdx/math/Matrix3;

.field private part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

.field private parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field private posOffset:I

.field private posSize:I

.field private final positionTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private primitiveType:I

.field private stride:I

.field private tangentOffset:I

.field private final tempC1:Lcom/badlogic/gdx/graphics/Color;

.field private final tmpNormal:Lcom/badlogic/gdx/math/Vector3;

.field private uOffset:F

.field private uScale:F

.field private uvOffset:I

.field private vOffset:F

.field private vScale:F

.field private final vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private vertex:[F

.field private vertexTransformationEnabled:Z

.field private vertices:Lcom/badlogic/gdx/utils/FloatArray;

.field private vindex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    .line 478
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    .line 765
    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 67
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    .line 72
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 102
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    .line 104
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    .line 110
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    .line 113
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    .line 114
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 115
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    .line 116
    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 471
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    .line 543
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpNormal:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method private final addVertex([FI)V
    .registers 14
    .param p1, "values"  # [F
    .param p2, "offset"  # I

    .line 509
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 510
    .local v0, "o":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([FII)V

    .line 511
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    .line 513
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_56

    .line 514
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformPosition([FIILcom/badlogic/gdx/math/Matrix4;)V

    .line 515
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-ltz v1, :cond_36

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    .line 516
    :cond_36
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->biNorOffset:I

    if-ltz v1, :cond_46

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->biNorOffset:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    .line 517
    :cond_46
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tangentOffset:I

    if-ltz v1, :cond_56

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tangentOffset:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    .line 520
    :cond_56
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v3, v0

    aget v1, v1, v3

    .line 521
    .local v1, "x":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_70

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v6, v0

    add-int/2addr v6, v5

    aget v3, v3, v6

    goto :goto_71

    :cond_70
    move v3, v4

    .line 522
    .local v3, "y":F
    :goto_71
    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_80

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v6, v0

    add-int/2addr v6, v7

    aget v4, v4, v6

    .line 523
    .local v4, "z":F
    :cond_80
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v6, v1, v3, v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 525
    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    if-eqz v6, :cond_fc

    .line 526
    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-ltz v6, :cond_d5

    .line 527
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v8, v0

    aget v9, v6, v8

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v9, v10

    aput v9, v6, v8

    .line 528
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v8, v0

    add-int/2addr v8, v5

    aget v9, v6, v8

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v9, v10

    aput v9, v6, v8

    .line 529
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v8, v0

    add-int/2addr v8, v7

    aget v7, v6, v8

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v7, v9

    aput v7, v6, v8

    .line 530
    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    if-le v6, v2, :cond_fc

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v7, v0

    add-int/2addr v7, v2

    aget v2, v6, v7

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, v8

    aput v2, v6, v7

    goto :goto_fc

    .line 531
    :cond_d5
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    if-ltz v2, :cond_fc

    .line 532
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    add-int/2addr v7, v0

    aget v6, v6, v7

    invoke-static {v2, v6}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 533
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    aput v7, v2, v6

    .line 537
    :cond_fc
    :goto_fc
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    if-eqz v2, :cond_136

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-ltz v2, :cond_136

    .line 538
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v10, v0

    aget v9, v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v2, v6

    .line 539
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v6, v0

    add-int/2addr v6, v5

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v10, v0

    add-int/2addr v10, v5

    aget v5, v9, v10

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v2, v6

    .line 541
    :cond_136
    return-void
.end method

.method public static createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;
    .registers 12
    .param p0, "usage"  # J

    .line 121
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 122
    .local v0, "attrs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    const-wide/16 v1, 0x1

    and-long v3, p0, v1

    cmp-long v1, v3, v1

    const/4 v2, 0x3

    if-nez v1, :cond_19

    .line 123
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_position"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 124
    :cond_19
    const-wide/16 v3, 0x2

    and-long v5, p0, v3

    cmp-long v1, v5, v3

    const-string v3, "a_color"

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-nez v1, :cond_2d

    .line 125
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v1, v4, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 126
    :cond_2d
    const-wide/16 v6, 0x4

    and-long v8, p0, v6

    cmp-long v1, v8, v6

    if-nez v1, :cond_3d

    .line 127
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v1, v5, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 128
    :cond_3d
    const-wide/16 v5, 0x8

    and-long v7, p0, v5

    cmp-long v1, v7, v5

    if-nez v1, :cond_51

    .line 129
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v3, 0x8

    const-string v5, "a_normal"

    invoke-direct {v1, v3, v2, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 130
    :cond_51
    const-wide/16 v1, 0x10

    and-long v5, p0, v1

    cmp-long v1, v5, v1

    if-nez v1, :cond_65

    .line 131
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v2, 0x10

    const-string v3, "a_texCoord0"

    invoke-direct {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 132
    :cond_65
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 133
    .local v1, "attributes":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6a
    array-length v3, v1

    if-ge v2, v3, :cond_78

    .line 134
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    aput-object v3, v1, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 135
    .end local v2  # "i":I
    :cond_78
    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    return-object v2
.end method

.method private endpart()V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-eqz v0, :cond_47

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 205
    :cond_47
    return-void
.end method

.method private static final transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V
    .registers 8
    .param p0, "values"  # [F
    .param p1, "offset"  # I
    .param p2, "size"  # I
    .param p3, "transform"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 495
    const/4 v0, 0x2

    if-le p2, v0, :cond_31

    .line 496
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 497
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    .line 498
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    .line 499
    add-int/lit8 v0, p1, 0x2

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p0, v0

    goto :goto_6b

    .line 500
    :cond_31
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_57

    .line 501
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v2, p0, p1

    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 502
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    .line 503
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    goto :goto_6b

    .line 505
    :cond_57
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v2, p0, p1

    invoke-virtual {v1, v2, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    .line 506
    :goto_6b
    return-void
.end method

.method private static final transformPosition([FIILcom/badlogic/gdx/math/Matrix4;)V
    .registers 8
    .param p0, "values"  # [F
    .param p1, "offset"  # I
    .param p2, "size"  # I
    .param p3, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 481
    const/4 v0, 0x2

    if-le p2, v0, :cond_2d

    .line 482
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 483
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    .line 484
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    .line 485
    add-int/lit8 v0, p1, 0x2

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p0, v0

    goto :goto_5f

    .line 486
    :cond_2d
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_4f

    .line 487
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v2, p0, p1

    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 488
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    .line 489
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    goto :goto_5f

    .line 491
    :cond_4f
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v2, p0, p1

    invoke-virtual {v1, v2, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v0, p0, p1

    .line 492
    :goto_5f
    return-void
.end method


# virtual methods
.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;)V
    .registers 4
    .param p1, "mesh"  # Lcom/badlogic/gdx/graphics/Mesh;

    .line 736
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    .line 737
    return-void
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V
    .registers 8
    .param p1, "mesh"  # Lcom/badlogic/gdx/graphics/Mesh;
    .param p2, "indexOffset"  # I
    .param p3, "numIndices"  # I

    .line 747
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 748
    if-gtz p3, :cond_f

    return-void

    .line 751
    :cond_f
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int/2addr v0, v1

    .line 752
    .local v0, "numFloats":I
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 753
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    .line 754
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    iput v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 755
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 757
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 758
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 759
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iput p3, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 760
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    .line 762
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    invoke-virtual {p0, v1, v3, v2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh([F[SII)V

    .line 763
    return-void

    .line 747
    .end local v0  # "numFloats":I
    :cond_4d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Vertex attributes do not match"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V
    .registers 5
    .param p1, "meshpart"  # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 741
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-ne v0, v1, :cond_10

    .line 742
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    .line 743
    return-void

    .line 741
    :cond_10
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Primitive type doesn\'t match"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addMesh([F[S)V
    .registers 7
    .param p1, "vertices"  # [F
    .param p2, "indices"  # [S

    .line 791
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 793
    .local v0, "offset":I
    array-length v1, p1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v1, v2

    .line 794
    .local v1, "numVertices":I
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 795
    const/4 v2, 0x0

    .local v2, "v":I
    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_16

    .line 796
    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 795
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    add-int/2addr v2, v3

    goto :goto_c

    .line 798
    .end local v2  # "v":I
    :cond_16
    array-length v2, p2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 799
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    array-length v3, p2

    if-ge v2, v3, :cond_28

    .line 800
    aget-short v3, p2, v2

    add-int/2addr v3, v0

    int-to-short v3, v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(S)V

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 801
    .end local v2  # "i":I
    :cond_28
    return-void
.end method

.method public addMesh([F[SII)V
    .registers 11
    .param p1, "vertices"  # [F
    .param p2, "indices"  # [S
    .param p3, "indexOffset"  # I
    .param p4, "numIndices"  # I

    .line 769
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    if-nez v0, :cond_c

    .line 770
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    goto :goto_16

    .line 772
    :cond_c
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 773
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/IntIntMap;->ensureCapacity(I)V

    .line 775
    :goto_16
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 776
    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v0, v1

    .line 777
    .local v0, "numVertices":I
    if-ge v0, p4, :cond_21

    move v1, v0

    goto :goto_22

    :cond_21
    move v1, p4

    :goto_22
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 778
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, p4, :cond_4e

    .line 779
    add-int v2, p3, v1

    aget-short v2, p2, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 780
    .local v2, "sidx":I
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v3

    .line 781
    .local v3, "didx":I
    if-gez v3, :cond_47

    .line 782
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int/2addr v4, v2

    invoke-direct {p0, p1, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 783
    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    move v3, v5

    invoke-virtual {v4, v2, v5}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 785
    :cond_47
    int-to-short v4, v3

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(S)V

    .line 778
    .end local v2  # "sidx":I
    .end local v3  # "didx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 787
    .end local v1  # "i":I
    :cond_4e
    return-void
.end method

.method public arrow(FFFFFFFFI)V
    .registers 10
    .param p1, "x1"  # F
    .param p2, "y1"  # F
    .param p3, "z1"  # F
    .param p4, "x2"  # F
    .param p5, "y2"  # F
    .param p6, "z2"  # F
    .param p7, "capLength"  # F
    .param p8, "stemThickness"  # F
    .param p9, "divisions"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1077
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFFFFI)V

    .line 1078
    return-void
.end method

.method public begin(J)V
    .registers 5
    .param p1, "attributes"  # J

    .line 142
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    .line 143
    return-void
.end method

.method public begin(JI)V
    .registers 5
    .param p1, "attributes"  # J
    .param p3, "primitiveType"  # I

    .line 154
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    .line 155
    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 3
    .param p1, "attributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 147
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    .line 148
    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V
    .registers 9
    .param p1, "attributes"  # Lcom/badlogic/gdx/graphics/VertexAttributes;
    .param p2, "primitiveType"  # I

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v0, :cond_bd

    .line 160
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    .line 165
    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    .line 166
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    .line 167
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 168
    iget v3, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    const/4 v4, 0x4

    div-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    .line 169
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    array-length v3, v3

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    if-ge v3, v5, :cond_37

    :cond_31
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    .line 170
    :cond_37
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 171
    .local v3, "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-eqz v3, :cond_b5

    .line 172
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    .line 173
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    .line 174
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 175
    if-nez v3, :cond_51

    move v5, v1

    goto :goto_54

    :cond_51
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    :goto_54
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    .line 176
    const/16 v5, 0x100

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 177
    if-nez v3, :cond_60

    move v5, v1

    goto :goto_63

    :cond_60
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    :goto_63
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->biNorOffset:I

    .line 178
    const/16 v5, 0x80

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 179
    if-nez v3, :cond_6f

    move v5, v1

    goto :goto_72

    :cond_6f
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    :goto_72
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tangentOffset:I

    .line 180
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 181
    if-nez v3, :cond_7d

    move v5, v1

    goto :goto_80

    :cond_7d
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    :goto_80
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    .line 182
    if-nez v3, :cond_85

    goto :goto_87

    :cond_85
    iget v0, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    :goto_87
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    .line 183
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 184
    .end local v3  # "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .local v0, "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-nez v0, :cond_91

    move v3, v1

    goto :goto_94

    :cond_91
    iget v3, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v4

    :goto_94
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    .line 185
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 186
    if-nez v0, :cond_9f

    goto :goto_a2

    :cond_9f
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v1, v4

    :goto_a2
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    .line 187
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 188
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 189
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 190
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    .line 191
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 192
    return-void

    .line 171
    .end local v0  # "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v3  # "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_b5
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot build mesh without position attribute"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    .end local v3  # "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_bd
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call end() first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public box(FFF)V
    .registers 4
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 850
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFF)V

    .line 851
    return-void
.end method

.method public box(FFFFFF)V
    .registers 7
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "z"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F
    .param p6, "depth"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFF)V

    .line 857
    return-void
.end method

.method public box(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .registers 9
    .param p1, "corner000"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "corner010"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p3, "corner100"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p4, "corner110"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p5, "corner001"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p6, "corner011"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p7, "corner101"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p8, "corner111"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 831
    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 832
    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 2
    .param p1, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 844
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 845
    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 9
    .param p1, "corner000"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "corner010"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "corner100"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "corner110"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "corner001"  # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "corner011"  # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "corner101"  # Lcom/badlogic/gdx/math/Vector3;
    .param p8, "corner111"  # Lcom/badlogic/gdx/math/Vector3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 838
    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 839
    return-void
.end method

.method public capsule(FFI)V
    .registers 4
    .param p1, "radius"  # F
    .param p2, "height"  # F
    .param p3, "divisions"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1070
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CapsuleShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFI)V

    .line 1071
    return-void
.end method

.method public circle(FIFFFFFF)V
    .registers 9
    .param p1, "radius"  # F
    .param p2, "divisions"  # I
    .param p3, "centerX"  # F
    .param p4, "centerY"  # F
    .param p5, "centerZ"  # F
    .param p6, "normalX"  # F
    .param p7, "normalY"  # F
    .param p8, "normalZ"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 863
    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFF)V

    .line 864
    return-void
.end method

.method public circle(FIFFFFFFFF)V
    .registers 11
    .param p1, "radius"  # F
    .param p2, "divisions"  # I
    .param p3, "centerX"  # F
    .param p4, "centerY"  # F
    .param p5, "centerZ"  # F
    .param p6, "normalX"  # F
    .param p7, "normalY"  # F
    .param p8, "normalZ"  # F
    .param p9, "angleFrom"  # F
    .param p10, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 891
    nop

    .line 892
    invoke-static/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFF)V

    .line 893
    return-void
.end method

.method public circle(FIFFFFFFFFFFFF)V
    .registers 15
    .param p1, "radius"  # F
    .param p2, "divisions"  # I
    .param p3, "centerX"  # F
    .param p4, "centerY"  # F
    .param p5, "centerZ"  # F
    .param p6, "normalX"  # F
    .param p7, "normalY"  # F
    .param p8, "normalZ"  # F
    .param p9, "tangentX"  # F
    .param p10, "tangentY"  # F
    .param p11, "tangentZ"  # F
    .param p12, "binormalX"  # F
    .param p13, "binormalY"  # F
    .param p14, "binormalZ"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 883
    invoke-static/range {p0 .. p14}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFF)V

    .line 885
    return-void
.end method

.method public circle(FIFFFFFFFFFFFFFF)V
    .registers 17
    .param p1, "radius"  # F
    .param p2, "divisions"  # I
    .param p3, "centerX"  # F
    .param p4, "centerY"  # F
    .param p5, "centerZ"  # F
    .param p6, "normalX"  # F
    .param p7, "normalY"  # F
    .param p8, "normalZ"  # F
    .param p9, "tangentX"  # F
    .param p10, "tangentY"  # F
    .param p11, "tangentZ"  # F
    .param p12, "binormalX"  # F
    .param p13, "binormalY"  # F
    .param p14, "binormalZ"  # F
    .param p15, "angleFrom"  # F
    .param p16, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 914
    invoke-static/range {p0 .. p16}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFFFF)V

    .line 916
    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 5
    .param p1, "radius"  # F
    .param p2, "divisions"  # I
    .param p3, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 869
    invoke-static {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 870
    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .registers 7
    .param p1, "radius"  # F
    .param p2, "divisions"  # I
    .param p3, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "angleFrom"  # F
    .param p6, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 898
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    .line 899
    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 7
    .param p1, "radius"  # F
    .param p2, "divisions"  # I
    .param p3, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "tangent"  # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "binormal"  # Lcom/badlogic/gdx/math/Vector3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 876
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 877
    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .registers 30
    .param p1, "radius"  # F
    .param p2, "divisions"  # I
    .param p3, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "tangent"  # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "binormal"  # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "angleFrom"  # F
    .param p8, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v19, p7

    move/from16 v20, p8

    .line 905
    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v16, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v18, v0

    invoke-virtual/range {v4 .. v20}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFFFFFFFF)V

    .line 907
    return-void
.end method

.method public clear()V
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    .line 276
    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    .line 277
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 279
    return-void
.end method

.method public cone(FFFI)V
    .registers 12
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F
    .param p4, "divisions"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1031
    const/4 v5, 0x0

    const/high16 v6, 0x43b40000  # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cone(FFFIFF)V

    .line 1032
    return-void
.end method

.method public cone(FFFIFF)V
    .registers 7
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F
    .param p4, "divisions"  # I
    .param p5, "angleFrom"  # F
    .param p6, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1037
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ConeShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V

    .line 1038
    return-void
.end method

.method public cylinder(FFFI)V
    .registers 5
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F
    .param p4, "divisions"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1013
    invoke-static {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFI)V

    .line 1014
    return-void
.end method

.method public cylinder(FFFIFF)V
    .registers 7
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F
    .param p4, "divisions"  # I
    .param p5, "angleFrom"  # F
    .param p6, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1019
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V

    .line 1020
    return-void
.end method

.method public cylinder(FFFIFFZ)V
    .registers 8
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F
    .param p4, "divisions"  # I
    .param p5, "angleFrom"  # F
    .param p6, "angleTo"  # F
    .param p7, "close"  # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1025
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFFZ)V

    .line 1026
    return-void
.end method

.method public ellipse(FFFFIFFFFFF)V
    .registers 12
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "innerWidth"  # F
    .param p4, "innerHeight"  # F
    .param p5, "divisions"  # I
    .param p6, "centerX"  # F
    .param p7, "centerY"  # F
    .param p8, "centerZ"  # F
    .param p9, "normalX"  # F
    .param p10, "normalY"  # F
    .param p11, "normalZ"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 989
    invoke-static/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFF)V

    .line 991
    return-void
.end method

.method public ellipse(FFFFIFFFFFFFF)V
    .registers 14
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "innerWidth"  # F
    .param p4, "innerHeight"  # F
    .param p5, "divisions"  # I
    .param p6, "centerX"  # F
    .param p7, "centerY"  # F
    .param p8, "centerZ"  # F
    .param p9, "normalX"  # F
    .param p10, "normalY"  # F
    .param p11, "normalZ"  # F
    .param p12, "angleFrom"  # F
    .param p13, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 997
    invoke-static/range {p0 .. p13}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFF)V

    .line 999
    return-void
.end method

.method public ellipse(FFFFIFFFFFFFFFFFFFF)V
    .registers 20
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "innerWidth"  # F
    .param p4, "innerHeight"  # F
    .param p5, "divisions"  # I
    .param p6, "centerX"  # F
    .param p7, "centerY"  # F
    .param p8, "centerZ"  # F
    .param p9, "normalX"  # F
    .param p10, "normalY"  # F
    .param p11, "normalZ"  # F
    .param p12, "tangentX"  # F
    .param p13, "tangentY"  # F
    .param p14, "tangentZ"  # F
    .param p15, "binormalX"  # F
    .param p16, "binormalY"  # F
    .param p17, "binormalZ"  # F
    .param p18, "angleFrom"  # F
    .param p19, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1006
    invoke-static/range {p0 .. p19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    .line 1008
    return-void
.end method

.method public ellipse(FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 8
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "innerWidth"  # F
    .param p4, "innerHeight"  # F
    .param p5, "divisions"  # I
    .param p6, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 982
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 983
    return-void
.end method

.method public ellipse(FFIFFFFFF)V
    .registers 10
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "divisions"  # I
    .param p4, "centerX"  # F
    .param p5, "centerY"  # F
    .param p6, "centerZ"  # F
    .param p7, "normalX"  # F
    .param p8, "normalY"  # F
    .param p9, "normalZ"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 922
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFF)V

    .line 923
    return-void
.end method

.method public ellipse(FFIFFFFFFFF)V
    .registers 12
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "divisions"  # I
    .param p4, "centerX"  # F
    .param p5, "centerY"  # F
    .param p6, "centerZ"  # F
    .param p7, "normalX"  # F
    .param p8, "normalY"  # F
    .param p9, "normalZ"  # F
    .param p10, "angleFrom"  # F
    .param p11, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 951
    invoke-static/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFF)V

    .line 953
    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFF)V
    .registers 16
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "divisions"  # I
    .param p4, "centerX"  # F
    .param p5, "centerY"  # F
    .param p6, "centerZ"  # F
    .param p7, "normalX"  # F
    .param p8, "normalY"  # F
    .param p9, "normalZ"  # F
    .param p10, "tangentX"  # F
    .param p11, "tangentY"  # F
    .param p12, "tangentZ"  # F
    .param p13, "binormalX"  # F
    .param p14, "binormalY"  # F
    .param p15, "binormalZ"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 943
    invoke-static/range {p0 .. p15}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFF)V

    .line 945
    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFFFF)V
    .registers 18
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "divisions"  # I
    .param p4, "centerX"  # F
    .param p5, "centerY"  # F
    .param p6, "centerZ"  # F
    .param p7, "normalX"  # F
    .param p8, "normalY"  # F
    .param p9, "normalZ"  # F
    .param p10, "tangentX"  # F
    .param p11, "tangentY"  # F
    .param p12, "tangentZ"  # F
    .param p13, "binormalX"  # F
    .param p14, "binormalY"  # F
    .param p15, "binormalZ"  # F
    .param p16, "angleFrom"  # F
    .param p17, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 974
    invoke-static/range {p0 .. p17}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFFFF)V

    .line 976
    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 6
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "divisions"  # I
    .param p4, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 928
    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 929
    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .registers 8
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "divisions"  # I
    .param p4, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "angleFrom"  # F
    .param p7, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 959
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    .line 960
    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 8
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "divisions"  # I
    .param p4, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "tangent"  # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "binormal"  # Lcom/badlogic/gdx/math/Vector3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 935
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 936
    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .registers 10
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "divisions"  # I
    .param p4, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "tangent"  # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "binormal"  # Lcom/badlogic/gdx/math/Vector3;
    .param p8, "angleFrom"  # F
    .param p9, "angleTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 966
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    .line 967
    return-void
.end method

.method public end()Lcom/badlogic/gdx/graphics/Mesh;
    .registers 6

    .line 265
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 6
    .param p1, "mesh"  # Lcom/badlogic/gdx/graphics/Mesh;

    .line 239
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->endpart()V

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_d1

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 243
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const-string v2, " < "

    if-lt v0, v1, :cond_94

    .line 246
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-lt v0, v1, :cond_6b

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 253
    .local v1, "p":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iput-object p1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .end local v1  # "p":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    goto :goto_49

    .line 254
    :cond_58
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 260
    return-object p1

    .line 247
    :cond_6b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mesh can\'t hold enough indices: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_94
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mesh can\'t hold enough vertices: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " * "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_c9
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Mesh attributes don\'t match"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_d1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call begin() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureCapacity(II)V
    .registers 3
    .param p1, "numVertices"  # I
    .param p2, "numIndices"  # I

    .line 418
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 419
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 420
    return-void
.end method

.method public ensureIndices(I)V
    .registers 3
    .param p1, "numIndices"  # I

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 414
    return-void
.end method

.method public ensureRectangleIndices(I)V
    .registers 4
    .param p1, "numRectangles"  # I

    .line 448
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_a

    .line 449
    mul-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_1a

    .line 450
    :cond_a
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 451
    mul-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_1a

    .line 454
    :cond_15
    mul-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 455
    :goto_1a
    return-void
.end method

.method public ensureRectangles(I)V
    .registers 3
    .param p1, "numRectangles"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 467
    mul-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 468
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    .line 469
    return-void
.end method

.method public ensureRectangles(II)V
    .registers 3
    .param p1, "numVertices"  # I
    .param p2, "numRectangles"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 461
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    .line 462
    return-void
.end method

.method public ensureTriangleIndices(I)V
    .registers 4
    .param p1, "numTriangles"  # I

    .line 424
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 425
    mul-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_22

    .line 426
    :cond_b
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_15

    goto :goto_1d

    .line 429
    :cond_15
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect primtive type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_1d
    :goto_1d
    mul-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 430
    :goto_22
    return-void
.end method

.method public ensureTriangles(I)V
    .registers 3
    .param p1, "numTriangles"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    mul-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 443
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangleIndices(I)V

    .line 444
    return-void
.end method

.method public ensureTriangles(II)V
    .registers 3
    .param p1, "numVertices"  # I
    .param p2, "numTriangles"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 436
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangleIndices(I)V

    .line 437
    return-void
.end method

.method public ensureVertices(I)V
    .registers 4
    .param p1, "numVertices"  # I

    .line 408
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    .line 409
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getFloatsPerVertex()I
    .registers 2

    .line 283
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    return v0
.end method

.method public getIndices([SI)V
    .registers 6
    .param p1, "out"  # [S
    .param p2, "destOffset"  # I

    .line 319
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_23

    .line 320
    if-ltz p2, :cond_1b

    array-length v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_1b

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    return-void

    .line 321
    :cond_1b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Array too small or offset out of range"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_23
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Must be called in between #begin and #end"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getIndices()[S
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v0
.end method

.method public getMeshPart()Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object v0
.end method

.method public getNumIndices()I
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    return v0
.end method

.method public getNumVertices()I
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getPrimitiveType()I
    .registers 2

    .line 344
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    return v0
.end method

.method public getVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 3
    .param p1, "out"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public getVertices([FI)V
    .registers 6
    .param p1, "out"  # [F
    .param p2, "destOffset"  # I

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_23

    .line 297
    if-ltz p2, :cond_1b

    array-length v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_1b

    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    return-void

    .line 298
    :cond_1b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Array too small or offset out of range"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_23
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Must be called in between #begin and #end"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getVertices()[F
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    return-object v0
.end method

.method public index(S)V
    .registers 3
    .param p1, "value"  # S

    .line 596
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 597
    return-void
.end method

.method public index(SS)V
    .registers 4
    .param p1, "value1"  # S
    .param p2, "value2"  # S

    .line 601
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 602
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 603
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 604
    return-void
.end method

.method public index(SSS)V
    .registers 5
    .param p1, "value1"  # S
    .param p2, "value2"  # S
    .param p3, "value3"  # S

    .line 608
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 609
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 611
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 612
    return-void
.end method

.method public index(SSSS)V
    .registers 6
    .param p1, "value1"  # S
    .param p2, "value2"  # S
    .param p3, "value3"  # S
    .param p4, "value4"  # S

    .line 616
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 621
    return-void
.end method

.method public index(SSSSSS)V
    .registers 8
    .param p1, "value1"  # S
    .param p2, "value2"  # S
    .param p3, "value3"  # S
    .param p4, "value4"  # S
    .param p5, "value5"  # S
    .param p6, "value6"  # S

    .line 625
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 626
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 627
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 628
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 630
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 632
    return-void
.end method

.method public index(SSSSSSSS)V
    .registers 10
    .param p1, "value1"  # S
    .param p2, "value2"  # S
    .param p3, "value3"  # S
    .param p4, "value4"  # S
    .param p5, "value5"  # S
    .param p6, "value6"  # S
    .param p7, "value7"  # S
    .param p8, "value8"  # S

    .line 637
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 638
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 639
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 641
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 642
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 644
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p7}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 645
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p8}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 646
    return-void
.end method

.method public isVertexTransformationEnabled()Z
    .registers 2

    .line 398
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    return v0
.end method

.method public lastIndex()S
    .registers 2

    .line 475
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public line(FFFFFF)V
    .registers 10
    .param p1, "x1"  # F
    .param p2, "y1"  # F
    .param p3, "z1"  # F
    .param p4, "x2"  # F
    .param p5, "y2"  # F
    .param p6, "z2"  # F

    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {v1, p4, p5, p6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 668
    return-void
.end method

.method public line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .registers 5
    .param p1, "p1"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "p2"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 656
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 657
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(SS)V

    .line 658
    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 8
    .param p1, "p1"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "c1"  # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "p2"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "c2"  # Lcom/badlogic/gdx/graphics/Color;

    .line 672
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v2, p3, v1, p4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 673
    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 6
    .param p1, "p1"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "p2"  # Lcom/badlogic/gdx/math/Vector3;

    .line 662
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v2, p2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 663
    return-void
.end method

.method public line(SS)V
    .registers 5
    .param p1, "index1"  # S
    .param p2, "index2"  # S

    .line 650
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SS)V

    .line 652
    return-void

    .line 650
    :cond_9
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect primitive type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public part(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .registers 4
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "primitiveType"  # I

    .line 211
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .registers 6
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "primitiveType"  # I
    .param p3, "meshPart"  # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_27

    .line 221
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->endpart()V

    .line 223
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 230
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object v0

    .line 220
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call begin() first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public patch(FFFFFFFFFFFFFFFII)V
    .registers 18
    .param p1, "x00"  # F
    .param p2, "y00"  # F
    .param p3, "z00"  # F
    .param p4, "x10"  # F
    .param p5, "y10"  # F
    .param p6, "z10"  # F
    .param p7, "x11"  # F
    .param p8, "y11"  # F
    .param p9, "z11"  # F
    .param p10, "x01"  # F
    .param p11, "y01"  # F
    .param p12, "z01"  # F
    .param p13, "normalX"  # F
    .param p14, "normalY"  # F
    .param p15, "normalZ"  # F
    .param p16, "divisionsU"  # I
    .param p17, "divisionsV"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 824
    invoke-static/range {p0 .. p17}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFFFFFFFFFFFII)V

    .line 825
    return-void
.end method

.method public patch(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V
    .registers 7
    .param p1, "corner00"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "corner10"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p3, "corner11"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p4, "corner01"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p5, "divisionsU"  # I
    .param p6, "divisionsV"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 810
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V

    .line 811
    return-void
.end method

.method public patch(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;II)V
    .registers 8
    .param p1, "corner00"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "corner10"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "corner11"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "corner01"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "divisionsU"  # I
    .param p7, "divisionsV"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 817
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;II)V

    .line 818
    return-void
.end method

.method public rect(FFFFFFFFFFFFFFF)V
    .registers 32
    .param p1, "x00"  # F
    .param p2, "y00"  # F
    .param p3, "z00"  # F
    .param p4, "x10"  # F
    .param p5, "y10"  # F
    .param p6, "z10"  # F
    .param p7, "x11"  # F
    .param p8, "y11"  # F
    .param p9, "z11"  # F
    .param p10, "x01"  # F
    .param p11, "y01"  # F
    .param p12, "z01"  # F
    .param p13, "normalX"  # F
    .param p14, "normalY"  # F
    .param p15, "normalZ"  # F

    .line 728
    move-object/from16 v0, p0

    move/from16 v1, p13

    move/from16 v2, p14

    move/from16 v3, p15

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual {v4, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-virtual {v4, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 729
    invoke-virtual {v11, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v11

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-virtual {v11, v12, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v11

    invoke-virtual {v11, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v11

    invoke-virtual {v11, v10, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v11

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 730
    invoke-virtual {v15, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v15

    move/from16 v5, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual {v15, v5, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v15

    invoke-virtual {v15, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v15

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-virtual {v15, v6, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 731
    const/4 v5, 0x0

    invoke-virtual {v15, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    move/from16 v15, p10

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual {v5, v15, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    .line 728
    invoke-virtual {v0, v4, v11, v6, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 732
    return-void
.end method

.method public rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .registers 9
    .param p1, "corner00"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "corner10"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p3, "corner11"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p4, "corner01"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 715
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 716
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v1

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v2

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    .line 717
    return-void
.end method

.method public rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 12
    .param p1, "corner00"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "corner10"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "corner11"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "corner01"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"  # Lcom/badlogic/gdx/math/Vector3;

    .line 721
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v4, p2, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 722
    invoke-virtual {v5, p3, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v5, p4, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    .line 721
    invoke-virtual {p0, v0, v4, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 723
    return-void
.end method

.method public rect(SSSS)V
    .registers 14
    .param p1, "corner00"  # S
    .param p2, "corner10"  # S
    .param p3, "corner11"  # S
    .param p4, "corner01"  # S

    .line 703
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 704
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_29

    .line 705
    :cond_10
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 706
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p4

    move v7, p4

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSSSS)V

    goto :goto_29

    .line 707
    :cond_22
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_2a

    .line 708
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSS)V

    .line 711
    :goto_29
    return-void

    .line 710
    :cond_2a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect primitive type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColor(FFFF)V
    .registers 7
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F
    .param p4, "a"  # F

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 350
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    .line 351
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 4
    .param p1, "color"  # Lcom/badlogic/gdx/graphics/Color;

    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    if-nez v1, :cond_e

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_f

    :cond_e
    move-object v1, p1

    :goto_f
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 356
    return-void
.end method

.method public setUVRange(FFFF)V
    .registers 7
    .param p1, "u1"  # F
    .param p2, "v1"  # F
    .param p3, "u2"  # F
    .param p4, "v2"  # F

    .line 360
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    .line 361
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    .line 362
    sub-float v0, p3, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    .line 363
    sub-float v0, p4, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    .line 364
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_29

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p3, v0}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {p4, v0}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    .line 365
    return-void
.end method

.method public setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 6
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 369
    if-nez p1, :cond_11

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    .line 372
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    goto :goto_27

    .line 374
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    .line 375
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(FFFF)V

    .line 377
    :goto_27
    return-void
.end method

.method public setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 3
    .param p1, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 386
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    .line 387
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    if-eqz v0, :cond_1e

    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix3;->inv()Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix3;->transpose()Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_28

    .line 391
    :cond_1e
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 392
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    .line 394
    :goto_28
    return-void
.end method

.method public setVertexTransformationEnabled(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 403
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    .line 404
    return-void
.end method

.method public sphere(FFFII)V
    .registers 6
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F
    .param p4, "divisionsU"  # I
    .param p5, "divisionsV"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1043
    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFII)V

    .line 1044
    return-void
.end method

.method public sphere(FFFIIFFFF)V
    .registers 10
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F
    .param p4, "divisionsU"  # I
    .param p5, "divisionsV"  # I
    .param p6, "angleUFrom"  # F
    .param p7, "angleUTo"  # F
    .param p8, "angleVFrom"  # F
    .param p9, "angleVTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1056
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIIFFFF)V

    .line 1057
    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFII)V
    .registers 7
    .param p1, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "width"  # F
    .param p3, "height"  # F
    .param p4, "depth"  # F
    .param p5, "divisionsU"  # I
    .param p6, "divisionsV"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1049
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFII)V

    .line 1050
    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V
    .registers 11
    .param p1, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "width"  # F
    .param p3, "height"  # F
    .param p4, "depth"  # F
    .param p5, "divisionsU"  # I
    .param p6, "divisionsV"  # I
    .param p7, "angleUFrom"  # F
    .param p8, "angleUTo"  # F
    .param p9, "angleVFrom"  # F
    .param p10, "angleVTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1063
    invoke-static/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 1065
    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .registers 7
    .param p1, "p1"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "p2"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p3, "p3"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 687
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 688
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v1

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(SSS)V

    .line 689
    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 11
    .param p1, "p1"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "c1"  # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "p2"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "c2"  # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "p3"  # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "c3"  # Lcom/badlogic/gdx/graphics/Color;

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v2, p3, v1, p4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v3, p5, v1, p6, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 699
    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 8
    .param p1, "p1"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "p2"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "p3"  # Lcom/badlogic/gdx/math/Vector3;

    .line 693
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v2, p2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v3, p3, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    .line 694
    return-void
.end method

.method public triangle(SSS)V
    .registers 11
    .param p1, "index1"  # S
    .param p2, "index2"  # S
    .param p3, "index3"  # S

    .line 677
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_22

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_a

    goto :goto_22

    .line 679
    :cond_a
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 680
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_25

    .line 682
    :cond_1a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect primitive type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_22
    :goto_22
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSS)V

    .line 683
    :goto_25
    return-void
.end method

.method public vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S
    .registers 7
    .param p1, "info"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 590
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    iget-boolean v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    if-eqz v2, :cond_10

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_11

    :cond_10
    move-object v2, v1

    :goto_11
    iget-boolean v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    if-eqz v3, :cond_18

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_18
    move-object v3, v1

    :goto_19
    iget-boolean v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    if-eqz v4, :cond_1f

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    :cond_1f
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S

    move-result v0

    return v0
.end method

.method public vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S
    .registers 10
    .param p1, "pos"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "nor"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "col"  # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "uv"  # Lcom/badlogic/gdx/math/Vector2;

    .line 547
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    const v1, 0xffff

    if-gt v0, v1, :cond_b9

    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 550
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, v0, v2

    .line 551
    :cond_1d
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_2b

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v3, v2

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, v0, v3

    .line 553
    :cond_2b
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-ltz v0, :cond_55

    .line 554
    if-nez p2, :cond_3b

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpNormal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    .line 555
    :cond_3b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v4, v0, v3

    .line 556
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v3, v1

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v4, v0, v3

    .line 557
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v3, v2

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, v0, v3

    .line 560
    :cond_55
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-ltz v0, :cond_86

    .line 561
    if-nez p3, :cond_5d

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 562
    :cond_5d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    iget v4, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v4, v0, v3

    .line 563
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v3, v1

    iget v4, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v4, v0, v3

    .line 564
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v3, v2

    iget v2, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v2, v0, v3

    .line 565
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_98

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v3, v2

    iget v2, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput v2, v0, v3

    goto :goto_98

    .line 566
    :cond_86
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    if-lez v0, :cond_98

    .line 567
    if-nez p3, :cond_8e

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 568
    :cond_8e
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    aput v3, v0, v2

    .line 571
    :cond_98
    :goto_98
    if-eqz p4, :cond_af

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-ltz v0, :cond_af

    .line 572
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    iget v3, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v0, v2

    .line 573
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v2, v1

    iget v1, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v0, v2

    .line 576
    :cond_af
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 577
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    int-to-short v0, v0

    return v0

    .line 547
    :cond_b9
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Too many vertices used"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs vertex([F)S
    .registers 5
    .param p1, "values"  # [F

    .line 582
    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    sub-int/2addr v0, v1

    .line 583
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-gt v1, v0, :cond_e

    .line 584
    invoke-direct {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 583
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    add-int/2addr v1, v2

    goto :goto_5

    .line 585
    .end local v1  # "i":I
    :cond_e
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:I

    int-to-short v1, v1

    return v1
.end method
