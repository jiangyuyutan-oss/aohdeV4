.class public Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;
.super Ljava/lang/Object;
.source "PolygonSpriteBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;


# instance fields
.field private blendDstFunc:I

.field private blendDstFuncAlpha:I

.field private blendSrcFunc:I

.field private blendSrcFuncAlpha:I

.field private blendingDisabled:Z

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field colorPacked:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private drawing:Z

.field private invTexHeight:F

.field private invTexWidth:F

.field private lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field public maxTrianglesInBatch:I

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private ownsShader:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private triangleIndex:I

.field private final triangles:[S

.field private vertexIndex:I

.field private final vertices:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 97
    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "size"  # I

    .line 104
    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 105
    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 15
    .param p1, "maxVertices"  # I
    .param p2, "maxTriangles"  # I
    .param p3, "defaultShader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    .line 68
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 69
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 70
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 73
    const/16 v1, 0x302

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    .line 74
    const/16 v2, 0x303

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    .line 75
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    .line 76
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    .line 82
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 83
    sget v1, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 89
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    .line 92
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    .line 126
    const/16 v2, 0x7fff

    if-gt p1, v2, :cond_a6

    .line 129
    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    .line 130
    .local v2, "vertexDataType":Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v3, :cond_49

    .line 131
    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectWithVAO:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    .line 133
    :cond_49
    new-instance v9, Lcom/badlogic/gdx/graphics/Mesh;

    mul-int/lit8 v7, p2, 0x3

    const/4 v3, 0x3

    new-array v8, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_position"

    const/4 v10, 0x1

    const/4 v5, 0x2

    invoke-direct {v3, v10, v5, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v8, v1

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_color"

    const/4 v4, 0x4

    invoke-direct {v1, v4, v4, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v1, v8, v10

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v3, 0x10

    const-string v4, "a_texCoord0"

    invoke-direct {v1, v3, v5, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v1, v8, v5

    const/4 v5, 0x0

    move-object v3, v9

    move-object v4, v2

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 138
    mul-int/lit8 v1, p1, 0x5

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 139
    mul-int/lit8 v1, p2, 0x3

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 141
    if-nez p3, :cond_90

    .line 142
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 143
    iput-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->ownsShader:Z

    goto :goto_92

    .line 145
    :cond_90
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 147
    :goto_92
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v0, v0, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 148
    return-void

    .line 127
    .end local v2  # "vertexDataType":Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    :cond_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t have more than 32767 vertices per batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 4
    .param p1, "size"  # I
    .param p2, "defaultShader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 111
    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 112
    return-void
.end method

.method private switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 4
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 1314
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1315
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1316
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    .line 1317
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    .line 1318
    return-void
.end method


# virtual methods
.method public begin()V
    .registers 3

    .line 152
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-nez v0, :cond_22

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 155
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_16

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    goto :goto_1b

    .line 159
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 160
    :goto_1b
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    .line 163
    return-void

    .line 152
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableBlending()V
    .registers 2

    .line 1226
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    .line 1228
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 1274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 1275
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->ownsShader:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 1276
    :cond_12
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .registers 11
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 683
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 684
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .registers 23
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 688
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v1, :cond_b7

    .line 690
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 691
    .local v1, "triangles":[S
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 693
    .local v2, "vertices":[F
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v4, p1

    if-eq v4, v3, :cond_14

    .line 694
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_25

    .line 695
    :cond_14
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v3, v3, 0x6

    array-length v5, v1

    if-gt v3, v5, :cond_22

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v3, v3, 0x14

    array-length v5, v2

    if-le v3, v5, :cond_25

    .line 696
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 698
    :cond_25
    :goto_25
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 699
    .local v3, "triangleIndex":I
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v5, v5, 0x5

    .line 700
    .local v5, "startVertex":I
    add-int/lit8 v6, v3, 0x1

    .end local v3  # "triangleIndex":I
    .local v6, "triangleIndex":I
    int-to-short v7, v5

    aput-short v7, v1, v3

    .line 701
    add-int/lit8 v3, v6, 0x1

    .end local v6  # "triangleIndex":I
    .restart local v3  # "triangleIndex":I
    add-int/lit8 v7, v5, 0x1

    int-to-short v7, v7

    aput-short v7, v1, v6

    .line 702
    add-int/lit8 v6, v3, 0x1

    .end local v3  # "triangleIndex":I
    .restart local v6  # "triangleIndex":I
    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v1, v3

    .line 703
    add-int/lit8 v3, v6, 0x1

    .end local v6  # "triangleIndex":I
    .restart local v3  # "triangleIndex":I
    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v1, v6

    .line 704
    add-int/lit8 v6, v3, 0x1

    .end local v3  # "triangleIndex":I
    .restart local v6  # "triangleIndex":I
    add-int/lit8 v7, v5, 0x3

    int-to-short v7, v7

    aput-short v7, v1, v3

    .line 705
    add-int/lit8 v3, v6, 0x1

    .end local v6  # "triangleIndex":I
    .restart local v3  # "triangleIndex":I
    int-to-short v7, v5

    aput-short v7, v1, v6

    .line 706
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 708
    add-float v6, p2, p4

    .line 709
    .local v6, "fx2":F
    add-float v7, p3, p5

    .line 710
    .local v7, "fy2":F
    const/4 v8, 0x0

    .line 711
    .local v8, "u":F
    const/high16 v9, 0x3f800000  # 1.0f

    .line 712
    .local v9, "v":F
    const/high16 v10, 0x3f800000  # 1.0f

    .line 713
    .local v10, "u2":F
    const/4 v11, 0x0

    .line 715
    .local v11, "v2":F
    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 716
    .local v12, "color":F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 717
    .local v13, "idx":I
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .local v14, "idx":I
    aput p2, v2, v13

    .line 718
    add-int/lit8 v13, v14, 0x1

    .end local v14  # "idx":I
    .restart local v13  # "idx":I
    aput p3, v2, v14

    .line 719
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .restart local v14  # "idx":I
    aput v12, v2, v13

    .line 720
    add-int/lit8 v13, v14, 0x1

    .end local v14  # "idx":I
    .restart local v13  # "idx":I
    const/4 v15, 0x0

    aput v15, v2, v14

    .line 721
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .restart local v14  # "idx":I
    const/high16 v16, 0x3f800000  # 1.0f

    aput v16, v2, v13

    .line 723
    add-int/lit8 v13, v14, 0x1

    .end local v14  # "idx":I
    .restart local v13  # "idx":I
    aput p2, v2, v14

    .line 724
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .restart local v14  # "idx":I
    aput v7, v2, v13

    .line 725
    add-int/lit8 v13, v14, 0x1

    .end local v14  # "idx":I
    .restart local v13  # "idx":I
    aput v12, v2, v14

    .line 726
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .restart local v14  # "idx":I
    aput v15, v2, v13

    .line 727
    add-int/lit8 v13, v14, 0x1

    .end local v14  # "idx":I
    .restart local v13  # "idx":I
    aput v15, v2, v14

    .line 729
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .restart local v14  # "idx":I
    aput v6, v2, v13

    .line 730
    add-int/lit8 v13, v14, 0x1

    .end local v14  # "idx":I
    .restart local v13  # "idx":I
    aput v7, v2, v14

    .line 731
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .restart local v14  # "idx":I
    aput v12, v2, v13

    .line 732
    add-int/lit8 v13, v14, 0x1

    .end local v14  # "idx":I
    .restart local v13  # "idx":I
    aput v16, v2, v14

    .line 733
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .restart local v14  # "idx":I
    aput v15, v2, v13

    .line 735
    add-int/lit8 v13, v14, 0x1

    .end local v14  # "idx":I
    .restart local v13  # "idx":I
    aput v6, v2, v14

    .line 736
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .restart local v14  # "idx":I
    aput p3, v2, v13

    .line 737
    add-int/lit8 v13, v14, 0x1

    .end local v14  # "idx":I
    .restart local v13  # "idx":I
    aput v12, v2, v14

    .line 738
    add-int/lit8 v14, v13, 0x1

    .end local v13  # "idx":I
    .restart local v14  # "idx":I
    aput v16, v2, v13

    .line 739
    add-int/lit8 v13, v14, 0x1

    .end local v14  # "idx":I
    .restart local v13  # "idx":I
    aput v16, v2, v14

    .line 740
    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 741
    return-void

    .line 688
    .end local v1  # "triangles":[S
    .end local v2  # "vertices":[F
    .end local v3  # "triangleIndex":I
    .end local v5  # "startVertex":I
    .end local v6  # "fx2":F
    .end local v7  # "fy2":F
    .end local v8  # "u":F
    .end local v9  # "v":F
    .end local v10  # "u2":F
    .end local v11  # "v2":F
    .end local v12  # "color":F
    .end local v13  # "idx":I
    :cond_b7
    move-object/from16 v4, p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .registers 21
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F
    .param p6, "u"  # F
    .param p7, "v"  # F
    .param p8, "u2"  # F
    .param p9, "v2"  # F

    .line 630
    move-object v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v1, :cond_ac

    .line 632
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 633
    .local v1, "triangles":[S
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 635
    .local v2, "vertices":[F
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object v4, p1

    if-eq v4, v3, :cond_12

    .line 636
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_23

    .line 637
    :cond_12
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v3, v3, 0x6

    array-length v5, v1

    if-gt v3, v5, :cond_20

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v3, v3, 0x14

    array-length v5, v2

    if-le v3, v5, :cond_23

    .line 638
    :cond_20
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 640
    :cond_23
    :goto_23
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 641
    .local v3, "triangleIndex":I
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v5, v5, 0x5

    .line 642
    .local v5, "startVertex":I
    add-int/lit8 v6, v3, 0x1

    .end local v3  # "triangleIndex":I
    .local v6, "triangleIndex":I
    int-to-short v7, v5

    aput-short v7, v1, v3

    .line 643
    add-int/lit8 v3, v6, 0x1

    .end local v6  # "triangleIndex":I
    .restart local v3  # "triangleIndex":I
    add-int/lit8 v7, v5, 0x1

    int-to-short v7, v7

    aput-short v7, v1, v6

    .line 644
    add-int/lit8 v6, v3, 0x1

    .end local v3  # "triangleIndex":I
    .restart local v6  # "triangleIndex":I
    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v1, v3

    .line 645
    add-int/lit8 v3, v6, 0x1

    .end local v6  # "triangleIndex":I
    .restart local v3  # "triangleIndex":I
    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v1, v6

    .line 646
    add-int/lit8 v6, v3, 0x1

    .end local v3  # "triangleIndex":I
    .restart local v6  # "triangleIndex":I
    add-int/lit8 v7, v5, 0x3

    int-to-short v7, v7

    aput-short v7, v1, v3

    .line 647
    add-int/lit8 v3, v6, 0x1

    .end local v6  # "triangleIndex":I
    .restart local v3  # "triangleIndex":I
    int-to-short v7, v5

    aput-short v7, v1, v6

    .line 648
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 650
    add-float v6, p2, p4

    .line 651
    .local v6, "fx2":F
    add-float v7, p3, p5

    .line 653
    .local v7, "fy2":F
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 654
    .local v8, "color":F
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 655
    .local v9, "idx":I
    add-int/lit8 v10, v9, 0x1

    .end local v9  # "idx":I
    .local v10, "idx":I
    aput p2, v2, v9

    .line 656
    add-int/lit8 v9, v10, 0x1

    .end local v10  # "idx":I
    .restart local v9  # "idx":I
    aput p3, v2, v10

    .line 657
    add-int/lit8 v10, v9, 0x1

    .end local v9  # "idx":I
    .restart local v10  # "idx":I
    aput v8, v2, v9

    .line 658
    add-int/lit8 v9, v10, 0x1

    .end local v10  # "idx":I
    .restart local v9  # "idx":I
    aput p6, v2, v10

    .line 659
    add-int/lit8 v10, v9, 0x1

    .end local v9  # "idx":I
    .restart local v10  # "idx":I
    aput p7, v2, v9

    .line 661
    add-int/lit8 v9, v10, 0x1

    .end local v10  # "idx":I
    .restart local v9  # "idx":I
    aput p2, v2, v10

    .line 662
    add-int/lit8 v10, v9, 0x1

    .end local v9  # "idx":I
    .restart local v10  # "idx":I
    aput v7, v2, v9

    .line 663
    add-int/lit8 v9, v10, 0x1

    .end local v10  # "idx":I
    .restart local v9  # "idx":I
    aput v8, v2, v10

    .line 664
    add-int/lit8 v10, v9, 0x1

    .end local v9  # "idx":I
    .restart local v10  # "idx":I
    aput p6, v2, v9

    .line 665
    add-int/lit8 v9, v10, 0x1

    .end local v10  # "idx":I
    .restart local v9  # "idx":I
    aput p9, v2, v10

    .line 667
    add-int/lit8 v10, v9, 0x1

    .end local v9  # "idx":I
    .restart local v10  # "idx":I
    aput v6, v2, v9

    .line 668
    add-int/lit8 v9, v10, 0x1

    .end local v10  # "idx":I
    .restart local v9  # "idx":I
    aput v7, v2, v10

    .line 669
    add-int/lit8 v10, v9, 0x1

    .end local v9  # "idx":I
    .restart local v10  # "idx":I
    aput v8, v2, v9

    .line 670
    add-int/lit8 v9, v10, 0x1

    .end local v10  # "idx":I
    .restart local v9  # "idx":I
    aput p8, v2, v10

    .line 671
    add-int/lit8 v10, v9, 0x1

    .end local v9  # "idx":I
    .restart local v10  # "idx":I
    aput p9, v2, v9

    .line 673
    add-int/lit8 v9, v10, 0x1

    .end local v10  # "idx":I
    .restart local v9  # "idx":I
    aput v6, v2, v10

    .line 674
    add-int/lit8 v10, v9, 0x1

    .end local v9  # "idx":I
    .restart local v10  # "idx":I
    aput p3, v2, v9

    .line 675
    add-int/lit8 v9, v10, 0x1

    .end local v10  # "idx":I
    .restart local v9  # "idx":I
    aput v8, v2, v10

    .line 676
    add-int/lit8 v10, v9, 0x1

    .end local v9  # "idx":I
    .restart local v10  # "idx":I
    aput p8, v2, v9

    .line 677
    add-int/lit8 v9, v10, 0x1

    .end local v10  # "idx":I
    .restart local v9  # "idx":I
    aput p7, v2, v10

    .line 678
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 679
    return-void

    .line 630
    .end local v1  # "triangles":[S
    .end local v2  # "vertices":[F
    .end local v3  # "triangleIndex":I
    .end local v5  # "startVertex":I
    .end local v6  # "fx2":F
    .end local v7  # "fy2":F
    .end local v8  # "color":F
    .end local v9  # "idx":I
    :cond_ac
    move-object v4, p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .registers 52
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "originX"  # F
    .param p5, "originY"  # F
    .param p6, "width"  # F
    .param p7, "height"  # F
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "rotation"  # F
    .param p11, "srcX"  # I
    .param p12, "srcY"  # I
    .param p13, "srcWidth"  # I
    .param p14, "srcHeight"  # I
    .param p15, "flipX"  # Z
    .param p16, "flipY"  # Z

    .line 362
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p11

    move/from16 v4, p12

    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v5, :cond_15b

    .line 364
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 365
    .local v5, "triangles":[S
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 367
    .local v6, "vertices":[F
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v8, p1

    if-eq v8, v7, :cond_1c

    .line 368
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_2d

    .line 369
    :cond_1c
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v7, v7, 0x6

    array-length v9, v5

    if-gt v7, v9, :cond_2a

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v7, v7, 0x14

    array-length v9, v6

    if-le v7, v9, :cond_2d

    .line 370
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 372
    :cond_2d
    :goto_2d
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 373
    .local v7, "triangleIndex":I
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v9, v9, 0x5

    .line 374
    .local v9, "startVertex":I
    add-int/lit8 v10, v7, 0x1

    .end local v7  # "triangleIndex":I
    .local v10, "triangleIndex":I
    int-to-short v11, v9

    aput-short v11, v5, v7

    .line 375
    add-int/lit8 v7, v10, 0x1

    .end local v10  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    add-int/lit8 v11, v9, 0x1

    int-to-short v11, v11

    aput-short v11, v5, v10

    .line 376
    add-int/lit8 v10, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v10  # "triangleIndex":I
    add-int/lit8 v11, v9, 0x2

    int-to-short v11, v11

    aput-short v11, v5, v7

    .line 377
    add-int/lit8 v7, v10, 0x1

    .end local v10  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    add-int/lit8 v11, v9, 0x2

    int-to-short v11, v11

    aput-short v11, v5, v10

    .line 378
    add-int/lit8 v10, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v10  # "triangleIndex":I
    add-int/lit8 v11, v9, 0x3

    int-to-short v11, v11

    aput-short v11, v5, v7

    .line 379
    add-int/lit8 v7, v10, 0x1

    .end local v10  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    int-to-short v11, v9

    aput-short v11, v5, v10

    .line 380
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 383
    add-float v10, p2, v1

    .line 384
    .local v10, "worldOriginX":F
    add-float v11, p3, v2

    .line 385
    .local v11, "worldOriginY":F
    neg-float v12, v1

    .line 386
    .local v12, "fx":F
    neg-float v13, v2

    .line 387
    .local v13, "fy":F
    sub-float v14, p6, v1

    .line 388
    .local v14, "fx2":F
    sub-float v15, p7, v2

    .line 391
    .local v15, "fy2":F
    const/high16 v16, 0x3f800000  # 1.0f

    cmpl-float v17, p8, v16

    if-nez v17, :cond_6f

    cmpl-float v16, p9, v16

    if-eqz v16, :cond_77

    .line 392
    :cond_6f
    mul-float v12, v12, p8

    .line 393
    mul-float v13, v13, p9

    .line 394
    mul-float v14, v14, p8

    .line 395
    mul-float v15, v15, p9

    .line 399
    :cond_77
    move/from16 v16, v12

    .line 400
    .local v16, "p1x":F
    move/from16 v17, v13

    .line 401
    .local v17, "p1y":F
    move/from16 v18, v12

    .line 402
    .local v18, "p2x":F
    move/from16 v19, v15

    .line 403
    .local v19, "p2y":F
    move/from16 v20, v14

    .line 404
    .local v20, "p3x":F
    move/from16 v21, v15

    .line 405
    .local v21, "p3y":F
    move/from16 v22, v14

    .line 406
    .local v22, "p4x":F
    move/from16 v23, v13

    .line 418
    .local v23, "p4y":F
    const/16 v24, 0x0

    cmpl-float v24, p10, v24

    if-eqz v24, :cond_c2

    .line 419
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v24

    .line 420
    .local v24, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v25

    .line 422
    .local v25, "sin":F
    mul-float v26, v24, v16

    mul-float v27, v25, v17

    sub-float v26, v26, v27

    .line 423
    .local v26, "x1":F
    mul-float v27, v25, v16

    mul-float v28, v24, v17

    add-float v27, v27, v28

    .line 425
    .local v27, "y1":F
    mul-float v28, v24, v18

    mul-float v29, v25, v19

    sub-float v28, v28, v29

    .line 426
    .local v28, "x2":F
    mul-float v29, v25, v18

    mul-float v30, v24, v19

    add-float v29, v29, v30

    .line 428
    .local v29, "y2":F
    mul-float v30, v24, v20

    mul-float v31, v25, v21

    sub-float v30, v30, v31

    .line 429
    .local v30, "x3":F
    mul-float v31, v25, v20

    mul-float v32, v24, v21

    add-float v31, v31, v32

    .line 431
    .local v31, "y3":F
    sub-float v32, v30, v28

    add-float v32, v26, v32

    .line 432
    .local v32, "x4":F
    sub-float v33, v29, v27

    sub-float v24, v31, v33

    .line 433
    .end local v25  # "sin":F
    .local v24, "y4":F
    goto :goto_d2

    .line 434
    .end local v24  # "y4":F
    .end local v26  # "x1":F
    .end local v27  # "y1":F
    .end local v28  # "x2":F
    .end local v29  # "y2":F
    .end local v30  # "x3":F
    .end local v31  # "y3":F
    .end local v32  # "x4":F
    :cond_c2
    move/from16 v26, v16

    .line 435
    .restart local v26  # "x1":F
    move/from16 v27, v17

    .line 437
    .restart local v27  # "y1":F
    move/from16 v28, v18

    .line 438
    .restart local v28  # "x2":F
    move/from16 v29, v19

    .line 440
    .restart local v29  # "y2":F
    move/from16 v30, v20

    .line 441
    .restart local v30  # "x3":F
    move/from16 v31, v21

    .line 443
    .restart local v31  # "y3":F
    move/from16 v32, v22

    .line 444
    .restart local v32  # "x4":F
    move/from16 v24, v23

    .line 447
    .restart local v24  # "y4":F
    :goto_d2
    add-float v26, v26, v10

    .line 448
    add-float v27, v27, v11

    .line 449
    add-float v28, v28, v10

    .line 450
    add-float v29, v29, v11

    .line 451
    add-float v30, v30, v10

    .line 452
    add-float v31, v31, v11

    .line 453
    add-float v32, v32, v10

    .line 454
    add-float v24, v24, v11

    .line 456
    int-to-float v1, v3

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v1, v2

    .line 457
    .local v1, "u":F
    add-int v2, v4, p14

    int-to-float v2, v2

    move-object/from16 v25, v5

    .end local v5  # "triangles":[S
    .local v25, "triangles":[S
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v2, v5

    .line 458
    .local v2, "v":F
    add-int v5, v3, p13

    int-to-float v5, v5

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v5, v3

    .line 459
    .local v5, "u2":F
    int-to-float v3, v4

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v3, v4

    .line 461
    .local v3, "v2":F
    if-eqz p15, :cond_fd

    .line 462
    move v4, v1

    .line 463
    .local v4, "tmp":F
    move v1, v5

    .line 464
    move v5, v4

    .line 467
    .end local v4  # "tmp":F
    :cond_fd
    if-eqz p16, :cond_102

    .line 468
    move v4, v2

    .line 469
    .restart local v4  # "tmp":F
    move v2, v3

    .line 470
    move v3, v4

    .line 473
    .end local v4  # "tmp":F
    :cond_102
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 474
    .local v4, "color":F
    move/from16 v33, v7

    .end local v7  # "triangleIndex":I
    .local v33, "triangleIndex":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 475
    .local v7, "idx":I
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .local v34, "idx":I
    aput v26, v6, v7

    .line 476
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v27, v6, v34

    .line 477
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v4, v6, v7

    .line 478
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v1, v6, v34

    .line 479
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v2, v6, v7

    .line 481
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v28, v6, v34

    .line 482
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v29, v6, v7

    .line 483
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v4, v6, v34

    .line 484
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v1, v6, v7

    .line 485
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v3, v6, v34

    .line 487
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v30, v6, v7

    .line 488
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v31, v6, v34

    .line 489
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v4, v6, v7

    .line 490
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v5, v6, v34

    .line 491
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v3, v6, v7

    .line 493
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v32, v6, v34

    .line 494
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v24, v6, v7

    .line 495
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v4, v6, v34

    .line 496
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v5, v6, v7

    .line 497
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v2, v6, v34

    .line 498
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 499
    return-void

    .line 362
    .end local v1  # "u":F
    .end local v2  # "v":F
    .end local v3  # "v2":F
    .end local v4  # "color":F
    .end local v5  # "u2":F
    .end local v6  # "vertices":[F
    .end local v7  # "idx":I
    .end local v9  # "startVertex":I
    .end local v10  # "worldOriginX":F
    .end local v11  # "worldOriginY":F
    .end local v12  # "fx":F
    .end local v13  # "fy":F
    .end local v14  # "fx2":F
    .end local v15  # "fy2":F
    .end local v16  # "p1x":F
    .end local v17  # "p1y":F
    .end local v18  # "p2x":F
    .end local v19  # "p2y":F
    .end local v20  # "p3x":F
    .end local v21  # "p3y":F
    .end local v22  # "p4x":F
    .end local v23  # "p4y":F
    .end local v24  # "y4":F
    .end local v25  # "triangles":[S
    .end local v26  # "x1":F
    .end local v27  # "y1":F
    .end local v28  # "x2":F
    .end local v29  # "y2":F
    .end local v30  # "x3":F
    .end local v31  # "y3":F
    .end local v32  # "x4":F
    .end local v33  # "triangleIndex":I
    :cond_15b
    move-object/from16 v8, p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .registers 29
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F
    .param p6, "srcX"  # I
    .param p7, "srcY"  # I
    .param p8, "srcWidth"  # I
    .param p9, "srcHeight"  # I
    .param p10, "flipX"  # Z
    .param p11, "flipY"  # Z

    .line 504
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v3, :cond_d0

    .line 506
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 507
    .local v3, "triangles":[S
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 509
    .local v4, "vertices":[F
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v6, p1

    if-eq v6, v5, :cond_18

    .line 510
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_29

    .line 511
    :cond_18
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v5, v5, 0x6

    array-length v7, v3

    if-gt v5, v7, :cond_26

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v5, v5, 0x14

    array-length v7, v4

    if-le v5, v7, :cond_29

    .line 512
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 514
    :cond_29
    :goto_29
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 515
    .local v5, "triangleIndex":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v7, v7, 0x5

    .line 516
    .local v7, "startVertex":I
    add-int/lit8 v8, v5, 0x1

    .end local v5  # "triangleIndex":I
    .local v8, "triangleIndex":I
    int-to-short v9, v7

    aput-short v9, v3, v5

    .line 517
    add-int/lit8 v5, v8, 0x1

    .end local v8  # "triangleIndex":I
    .restart local v5  # "triangleIndex":I
    add-int/lit8 v9, v7, 0x1

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 518
    add-int/lit8 v8, v5, 0x1

    .end local v5  # "triangleIndex":I
    .restart local v8  # "triangleIndex":I
    add-int/lit8 v9, v7, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v5

    .line 519
    add-int/lit8 v5, v8, 0x1

    .end local v8  # "triangleIndex":I
    .restart local v5  # "triangleIndex":I
    add-int/lit8 v9, v7, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 520
    add-int/lit8 v8, v5, 0x1

    .end local v5  # "triangleIndex":I
    .restart local v8  # "triangleIndex":I
    add-int/lit8 v9, v7, 0x3

    int-to-short v9, v9

    aput-short v9, v3, v5

    .line 521
    add-int/lit8 v5, v8, 0x1

    .end local v8  # "triangleIndex":I
    .restart local v5  # "triangleIndex":I
    int-to-short v9, v7

    aput-short v9, v3, v8

    .line 522
    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 524
    int-to-float v8, v1

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v8, v9

    .line 525
    .local v8, "u":F
    add-int v9, v2, p9

    int-to-float v9, v9

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v9, v10

    .line 526
    .local v9, "v":F
    add-int v10, v1, p8

    int-to-float v10, v10

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v10, v11

    .line 527
    .local v10, "u2":F
    int-to-float v11, v2

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v11, v12

    .line 528
    .local v11, "v2":F
    add-float v12, p2, p4

    .line 529
    .local v12, "fx2":F
    add-float v13, p3, p5

    .line 531
    .local v13, "fy2":F
    if-eqz p10, :cond_74

    .line 532
    move v14, v8

    .line 533
    .local v14, "tmp":F
    move v8, v10

    .line 534
    move v10, v14

    .line 537
    .end local v14  # "tmp":F
    :cond_74
    if-eqz p11, :cond_79

    .line 538
    move v14, v9

    .line 539
    .restart local v14  # "tmp":F
    move v9, v11

    .line 540
    move v11, v14

    .line 543
    .end local v14  # "tmp":F
    :cond_79
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 544
    .local v14, "color":F
    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 545
    .local v15, "idx":I
    add-int/lit8 v16, v15, 0x1

    .end local v15  # "idx":I
    .local v16, "idx":I
    aput p2, v4, v15

    .line 546
    add-int/lit8 v15, v16, 0x1

    .end local v16  # "idx":I
    .restart local v15  # "idx":I
    aput p3, v4, v16

    .line 547
    add-int/lit8 v16, v15, 0x1

    .end local v15  # "idx":I
    .restart local v16  # "idx":I
    aput v14, v4, v15

    .line 548
    add-int/lit8 v15, v16, 0x1

    .end local v16  # "idx":I
    .restart local v15  # "idx":I
    aput v8, v4, v16

    .line 549
    add-int/lit8 v16, v15, 0x1

    .end local v15  # "idx":I
    .restart local v16  # "idx":I
    aput v9, v4, v15

    .line 551
    add-int/lit8 v15, v16, 0x1

    .end local v16  # "idx":I
    .restart local v15  # "idx":I
    aput p2, v4, v16

    .line 552
    add-int/lit8 v16, v15, 0x1

    .end local v15  # "idx":I
    .restart local v16  # "idx":I
    aput v13, v4, v15

    .line 553
    add-int/lit8 v15, v16, 0x1

    .end local v16  # "idx":I
    .restart local v15  # "idx":I
    aput v14, v4, v16

    .line 554
    add-int/lit8 v16, v15, 0x1

    .end local v15  # "idx":I
    .restart local v16  # "idx":I
    aput v8, v4, v15

    .line 555
    add-int/lit8 v15, v16, 0x1

    .end local v16  # "idx":I
    .restart local v15  # "idx":I
    aput v11, v4, v16

    .line 557
    add-int/lit8 v16, v15, 0x1

    .end local v15  # "idx":I
    .restart local v16  # "idx":I
    aput v12, v4, v15

    .line 558
    add-int/lit8 v15, v16, 0x1

    .end local v16  # "idx":I
    .restart local v15  # "idx":I
    aput v13, v4, v16

    .line 559
    add-int/lit8 v16, v15, 0x1

    .end local v15  # "idx":I
    .restart local v16  # "idx":I
    aput v14, v4, v15

    .line 560
    add-int/lit8 v15, v16, 0x1

    .end local v16  # "idx":I
    .restart local v15  # "idx":I
    aput v10, v4, v16

    .line 561
    add-int/lit8 v16, v15, 0x1

    .end local v15  # "idx":I
    .restart local v16  # "idx":I
    aput v11, v4, v15

    .line 563
    add-int/lit8 v15, v16, 0x1

    .end local v16  # "idx":I
    .restart local v15  # "idx":I
    aput v12, v4, v16

    .line 564
    add-int/lit8 v16, v15, 0x1

    .end local v15  # "idx":I
    .restart local v16  # "idx":I
    aput p3, v4, v15

    .line 565
    add-int/lit8 v15, v16, 0x1

    .end local v16  # "idx":I
    .restart local v15  # "idx":I
    aput v14, v4, v16

    .line 566
    add-int/lit8 v16, v15, 0x1

    .end local v15  # "idx":I
    .restart local v16  # "idx":I
    aput v10, v4, v15

    .line 567
    add-int/lit8 v15, v16, 0x1

    .end local v16  # "idx":I
    .restart local v15  # "idx":I
    aput v9, v4, v16

    .line 568
    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 569
    return-void

    .line 504
    .end local v3  # "triangles":[S
    .end local v4  # "vertices":[F
    .end local v5  # "triangleIndex":I
    .end local v7  # "startVertex":I
    .end local v8  # "u":F
    .end local v9  # "v":F
    .end local v10  # "u2":F
    .end local v11  # "v2":F
    .end local v12  # "fx2":F
    .end local v13  # "fy2":F
    .end local v14  # "color":F
    .end local v15  # "idx":I
    :cond_d0
    move-object/from16 v6, p1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .registers 25
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "srcX"  # I
    .param p5, "srcY"  # I
    .param p6, "srcWidth"  # I
    .param p7, "srcHeight"  # I

    .line 573
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v5, :cond_cc

    .line 575
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 576
    .local v5, "triangles":[S
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 578
    .local v6, "vertices":[F
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v8, p1

    if-eq v8, v7, :cond_1c

    .line 579
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_2d

    .line 580
    :cond_1c
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v7, v7, 0x6

    array-length v9, v5

    if-gt v7, v9, :cond_2a

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v7, v7, 0x14

    array-length v9, v6

    if-le v7, v9, :cond_2d

    .line 581
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 583
    :cond_2d
    :goto_2d
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 584
    .local v7, "triangleIndex":I
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v9, v9, 0x5

    .line 585
    .local v9, "startVertex":I
    add-int/lit8 v10, v7, 0x1

    .end local v7  # "triangleIndex":I
    .local v10, "triangleIndex":I
    int-to-short v11, v9

    aput-short v11, v5, v7

    .line 586
    add-int/lit8 v7, v10, 0x1

    .end local v10  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    add-int/lit8 v11, v9, 0x1

    int-to-short v11, v11

    aput-short v11, v5, v10

    .line 587
    add-int/lit8 v10, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v10  # "triangleIndex":I
    add-int/lit8 v11, v9, 0x2

    int-to-short v11, v11

    aput-short v11, v5, v7

    .line 588
    add-int/lit8 v7, v10, 0x1

    .end local v10  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    add-int/lit8 v11, v9, 0x2

    int-to-short v11, v11

    aput-short v11, v5, v10

    .line 589
    add-int/lit8 v10, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v10  # "triangleIndex":I
    add-int/lit8 v11, v9, 0x3

    int-to-short v11, v11

    aput-short v11, v5, v7

    .line 590
    add-int/lit8 v7, v10, 0x1

    .end local v10  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    int-to-short v11, v9

    aput-short v11, v5, v10

    .line 591
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 593
    int-to-float v10, v1

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v10, v11

    .line 594
    .local v10, "u":F
    add-int v11, v2, v4

    int-to-float v11, v11

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v11, v12

    .line 595
    .local v11, "v":F
    add-int v12, v1, v3

    int-to-float v12, v12

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v12, v13

    .line 596
    .local v12, "u2":F
    int-to-float v13, v2

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v13, v14

    .line 597
    .local v13, "v2":F
    int-to-float v14, v3

    add-float v14, p2, v14

    .line 598
    .local v14, "fx2":F
    int-to-float v15, v4

    add-float v15, p3, v15

    .line 600
    .local v15, "fy2":F
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 601
    .local v1, "color":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 602
    .local v2, "idx":I
    add-int/lit8 v16, v2, 0x1

    .end local v2  # "idx":I
    .local v16, "idx":I
    aput p2, v6, v2

    .line 603
    add-int/lit8 v2, v16, 0x1

    .end local v16  # "idx":I
    .restart local v2  # "idx":I
    aput p3, v6, v16

    .line 604
    add-int/lit8 v16, v2, 0x1

    .end local v2  # "idx":I
    .restart local v16  # "idx":I
    aput v1, v6, v2

    .line 605
    add-int/lit8 v2, v16, 0x1

    .end local v16  # "idx":I
    .restart local v2  # "idx":I
    aput v10, v6, v16

    .line 606
    add-int/lit8 v16, v2, 0x1

    .end local v2  # "idx":I
    .restart local v16  # "idx":I
    aput v11, v6, v2

    .line 608
    add-int/lit8 v2, v16, 0x1

    .end local v16  # "idx":I
    .restart local v2  # "idx":I
    aput p2, v6, v16

    .line 609
    add-int/lit8 v16, v2, 0x1

    .end local v2  # "idx":I
    .restart local v16  # "idx":I
    aput v15, v6, v2

    .line 610
    add-int/lit8 v2, v16, 0x1

    .end local v16  # "idx":I
    .restart local v2  # "idx":I
    aput v1, v6, v16

    .line 611
    add-int/lit8 v16, v2, 0x1

    .end local v2  # "idx":I
    .restart local v16  # "idx":I
    aput v10, v6, v2

    .line 612
    add-int/lit8 v2, v16, 0x1

    .end local v16  # "idx":I
    .restart local v2  # "idx":I
    aput v13, v6, v16

    .line 614
    add-int/lit8 v16, v2, 0x1

    .end local v2  # "idx":I
    .restart local v16  # "idx":I
    aput v14, v6, v2

    .line 615
    add-int/lit8 v2, v16, 0x1

    .end local v16  # "idx":I
    .restart local v2  # "idx":I
    aput v15, v6, v16

    .line 616
    add-int/lit8 v16, v2, 0x1

    .end local v2  # "idx":I
    .restart local v16  # "idx":I
    aput v1, v6, v2

    .line 617
    add-int/lit8 v2, v16, 0x1

    .end local v16  # "idx":I
    .restart local v2  # "idx":I
    aput v12, v6, v16

    .line 618
    add-int/lit8 v16, v2, 0x1

    .end local v2  # "idx":I
    .restart local v16  # "idx":I
    aput v13, v6, v2

    .line 620
    add-int/lit8 v2, v16, 0x1

    .end local v16  # "idx":I
    .restart local v2  # "idx":I
    aput v14, v6, v16

    .line 621
    add-int/lit8 v16, v2, 0x1

    .end local v2  # "idx":I
    .restart local v16  # "idx":I
    aput p3, v6, v2

    .line 622
    add-int/lit8 v2, v16, 0x1

    .end local v16  # "idx":I
    .restart local v2  # "idx":I
    aput v1, v6, v16

    .line 623
    add-int/lit8 v16, v2, 0x1

    .end local v2  # "idx":I
    .restart local v16  # "idx":I
    aput v12, v6, v2

    .line 624
    add-int/lit8 v2, v16, 0x1

    .end local v16  # "idx":I
    .restart local v2  # "idx":I
    aput v11, v6, v16

    .line 625
    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 626
    return-void

    .line 573
    .end local v1  # "color":F
    .end local v2  # "idx":I
    .end local v5  # "triangles":[S
    .end local v6  # "vertices":[F
    .end local v7  # "triangleIndex":I
    .end local v9  # "startVertex":I
    .end local v10  # "u":F
    .end local v11  # "v":F
    .end local v12  # "u2":F
    .end local v13  # "v2":F
    .end local v14  # "fx2":F
    .end local v15  # "fy2":F
    :cond_cc
    move-object/from16 v8, p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .registers 15
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "spriteVertices"  # [F
    .param p3, "offset"  # I
    .param p4, "count"  # I

    .line 745
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_a7

    .line 747
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 748
    .local v0, "triangles":[S
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 750
    .local v1, "vertices":[F
    div-int/lit8 v2, p4, 0x14

    mul-int/lit8 v2, v2, 0x6

    .line 752
    .local v2, "triangleCount":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v3, :cond_2a

    .line 753
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 754
    array-length v3, v1

    array-length v4, v1

    rem-int/lit8 v4, v4, 0x14

    sub-int/2addr v3, v4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    array-length v4, v0

    div-int/lit8 v4, v4, 0x6

    mul-int/lit8 v4, v4, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 755
    .local v3, "batch":I
    div-int/lit8 v4, v3, 0x14

    mul-int/lit8 v2, v4, 0x6

    goto :goto_52

    .line 756
    .end local v3  # "batch":I
    :cond_2a
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v3, v2

    array-length v4, v0

    if-gt v3, v4, :cond_39

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v3, p4

    array-length v4, v1

    if-le v3, v4, :cond_37

    goto :goto_39

    .line 761
    :cond_37
    move v3, p4

    .restart local v3  # "batch":I
    goto :goto_52

    .line 757
    .end local v3  # "batch":I
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 758
    array-length v3, v1

    array-length v4, v1

    rem-int/lit8 v4, v4, 0x14

    sub-int/2addr v3, v4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    array-length v4, v0

    div-int/lit8 v4, v4, 0x6

    mul-int/lit8 v4, v4, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 759
    .restart local v3  # "batch":I
    div-int/lit8 v4, v3, 0x14

    mul-int/lit8 v2, v4, 0x6

    .line 763
    :goto_52
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 764
    .local v4, "vertexIndex":I
    div-int/lit8 v5, v4, 0x5

    int-to-short v5, v5

    .line 765
    .local v5, "vertex":S
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 766
    .local v6, "triangleIndex":I
    add-int v7, v6, v2

    .local v7, "n":I
    :goto_5b
    if-ge v6, v7, :cond_85

    .line 767
    aput-short v5, v0, v6

    .line 768
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, v5, 0x1

    int-to-short v9, v9

    aput-short v9, v0, v8

    .line 769
    add-int/lit8 v8, v6, 0x2

    add-int/lit8 v9, v5, 0x2

    int-to-short v9, v9

    aput-short v9, v0, v8

    .line 770
    add-int/lit8 v8, v6, 0x3

    add-int/lit8 v9, v5, 0x2

    int-to-short v9, v9

    aput-short v9, v0, v8

    .line 771
    add-int/lit8 v8, v6, 0x4

    add-int/lit8 v9, v5, 0x3

    int-to-short v9, v9

    aput-short v9, v0, v8

    .line 772
    add-int/lit8 v8, v6, 0x5

    aput-short v5, v0, v8

    .line 766
    add-int/lit8 v6, v6, 0x6

    add-int/lit8 v8, v5, 0x4

    int-to-short v5, v8

    goto :goto_5b

    .line 776
    .end local v7  # "n":I
    :cond_85
    :goto_85
    invoke-static {p2, p3, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    add-int v7, v4, v3

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 778
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 779
    sub-int/2addr p4, v3

    .line 780
    if-nez p4, :cond_92

    .line 789
    return-void

    .line 781
    :cond_92
    add-int/2addr p3, v3

    .line 782
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 783
    const/4 v4, 0x0

    .line 784
    if-le v3, p4, :cond_85

    .line 785
    array-length v7, v0

    div-int/lit8 v7, v7, 0x6

    mul-int/lit8 v7, v7, 0x14

    invoke-static {p4, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 786
    div-int/lit8 v7, v3, 0x14

    mul-int/lit8 v6, v7, 0x6

    goto :goto_85

    .line 745
    .end local v0  # "triangles":[S
    .end local v1  # "vertices":[F
    .end local v2  # "triangleCount":I
    .end local v3  # "batch":I
    .end local v4  # "vertexIndex":I
    .end local v5  # "vertex":S
    .end local v6  # "triangleIndex":I
    :cond_a7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V
    .registers 20
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "polygonVertices"  # [F
    .param p3, "verticesOffset"  # I
    .param p4, "verticesCount"  # I
    .param p5, "polygonTriangles"  # [S
    .param p6, "trianglesOffset"  # I
    .param p7, "trianglesCount"  # I

    .line 337
    move-object v0, p0

    move/from16 v1, p4

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_49

    .line 339
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 340
    .local v2, "triangles":[S
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 342
    .local v3, "vertices":[F
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object v5, p1

    if-eq v5, v4, :cond_14

    .line 343
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_24

    .line 344
    :cond_14
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int v4, v4, p7

    array-length v6, v2

    if-gt v4, v6, :cond_21

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v4, v1

    array-length v6, v3

    if-le v4, v6, :cond_24

    .line 345
    :cond_21
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 347
    :cond_24
    :goto_24
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 348
    .local v4, "triangleIndex":I
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 349
    .local v6, "vertexIndex":I
    div-int/lit8 v7, v6, 0x5

    .line 351
    .local v7, "startVertex":I
    move/from16 v8, p6

    .local v8, "i":I
    add-int v9, v8, p7

    .local v9, "n":I
    :goto_2e
    if-ge v8, v9, :cond_3c

    .line 352
    add-int/lit8 v10, v4, 0x1

    .end local v4  # "triangleIndex":I
    .local v10, "triangleIndex":I
    aget-short v11, p5, v8

    add-int/2addr v11, v7

    int-to-short v11, v11

    aput-short v11, v2, v4

    .line 351
    add-int/lit8 v8, v8, 0x1

    move v4, v10

    goto :goto_2e

    .line 353
    .end local v8  # "i":I
    .end local v9  # "n":I
    .end local v10  # "triangleIndex":I
    .restart local v4  # "triangleIndex":I
    :cond_3c
    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 355
    move-object v8, p2

    move v9, p3

    invoke-static {p2, p3, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v10, v1

    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 357
    return-void

    .line 337
    .end local v2  # "triangles":[S
    .end local v3  # "vertices":[F
    .end local v4  # "triangleIndex":I
    .end local v6  # "vertexIndex":I
    .end local v7  # "startVertex":I
    :cond_49
    move-object v5, p1

    move-object v8, p2

    move v9, p3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FF)V
    .registers 21
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_7c

    .line 209
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 210
    .local v2, "triangles":[S
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 211
    .local v3, "regionTriangles":[S
    array-length v4, v3

    .line 212
    .local v4, "regionTrianglesLength":I
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 213
    .local v5, "regionVertices":[F
    array-length v6, v5

    .line 215
    .local v6, "regionVerticesLength":I
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 216
    .local v7, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v7, v8, :cond_1c

    .line 217
    invoke-direct {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_31

    .line 218
    :cond_1c
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v8, v4

    array-length v9, v2

    if-gt v8, v9, :cond_2e

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    mul-int/lit8 v9, v6, 0x5

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v9, v9

    if-le v8, v9, :cond_31

    .line 219
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 221
    :cond_31
    :goto_31
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 222
    .local v8, "triangleIndex":I
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 223
    .local v9, "vertexIndex":I
    div-int/lit8 v10, v9, 0x5

    .line 225
    .local v10, "startVertex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_38
    if-ge v11, v4, :cond_46

    .line 226
    add-int/lit8 v12, v8, 0x1

    .end local v8  # "triangleIndex":I
    .local v12, "triangleIndex":I
    aget-short v13, v3, v11

    add-int/2addr v13, v10

    int-to-short v13, v13

    aput-short v13, v2, v8

    .line 225
    add-int/lit8 v11, v11, 0x1

    move v8, v12

    goto :goto_38

    .line 227
    .end local v11  # "i":I
    .end local v12  # "triangleIndex":I
    .restart local v8  # "triangleIndex":I
    :cond_46
    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 229
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 230
    .local v11, "vertices":[F
    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 231
    .local v12, "color":F
    iget-object v13, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 233
    .local v13, "textureCoords":[F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4f
    if-ge v14, v6, :cond_79

    .line 234
    add-int/lit8 v15, v9, 0x1

    .end local v9  # "vertexIndex":I
    .local v15, "vertexIndex":I
    aget v16, v5, v14

    add-float v16, v16, p2

    aput v16, v11, v9

    .line 235
    add-int/lit8 v9, v15, 0x1

    .end local v15  # "vertexIndex":I
    .restart local v9  # "vertexIndex":I
    add-int/lit8 v16, v14, 0x1

    aget v16, v5, v16

    add-float v16, v16, p3

    aput v16, v11, v15

    .line 236
    add-int/lit8 v15, v9, 0x1

    .end local v9  # "vertexIndex":I
    .restart local v15  # "vertexIndex":I
    aput v12, v11, v9

    .line 237
    add-int/lit8 v9, v15, 0x1

    .end local v15  # "vertexIndex":I
    .restart local v9  # "vertexIndex":I
    aget v16, v13, v14

    aput v16, v11, v15

    .line 238
    add-int/lit8 v15, v9, 0x1

    .end local v9  # "vertexIndex":I
    .restart local v15  # "vertexIndex":I
    add-int/lit8 v16, v14, 0x1

    aget v16, v13, v16

    aput v16, v11, v9

    .line 233
    add-int/lit8 v14, v14, 0x2

    move v9, v15

    goto :goto_4f

    .line 240
    .end local v14  # "i":I
    .end local v15  # "vertexIndex":I
    .restart local v9  # "vertexIndex":I
    :cond_79
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 241
    return-void

    .line 207
    .end local v2  # "triangles":[S
    .end local v3  # "regionTriangles":[S
    .end local v4  # "regionTrianglesLength":I
    .end local v5  # "regionVertices":[F
    .end local v6  # "regionVerticesLength":I
    .end local v7  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v8  # "triangleIndex":I
    .end local v9  # "vertexIndex":I
    .end local v10  # "startVertex":I
    .end local v11  # "vertices":[F
    .end local v12  # "color":F
    .end local v13  # "textureCoords":[F
    :cond_7c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FFFF)V
    .registers 26
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_93

    .line 247
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 248
    .local v2, "triangles":[S
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 249
    .local v3, "regionTriangles":[S
    array-length v4, v3

    .line 250
    .local v4, "regionTrianglesLength":I
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 251
    .local v5, "regionVertices":[F
    array-length v6, v5

    .line 252
    .local v6, "regionVerticesLength":I
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 254
    .local v7, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 255
    .local v8, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v8, v9, :cond_1c

    .line 256
    invoke-direct {v0, v8}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_31

    .line 257
    :cond_1c
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v9, v4

    array-length v10, v2

    if-gt v9, v10, :cond_2e

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    mul-int/lit8 v10, v6, 0x5

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v10, v10

    if-le v9, v10, :cond_31

    .line 258
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 260
    :cond_31
    :goto_31
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 261
    .local v9, "triangleIndex":I
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 262
    .local v10, "vertexIndex":I
    div-int/lit8 v11, v10, 0x5

    .line 264
    .local v11, "startVertex":I
    const/4 v12, 0x0

    .local v12, "i":I
    array-length v13, v3

    .local v13, "n":I
    :goto_39
    if-ge v12, v13, :cond_47

    .line 265
    add-int/lit8 v14, v9, 0x1

    .end local v9  # "triangleIndex":I
    .local v14, "triangleIndex":I
    aget-short v15, v3, v12

    add-int/2addr v15, v11

    int-to-short v15, v15

    aput-short v15, v2, v9

    .line 264
    add-int/lit8 v12, v12, 0x1

    move v9, v14

    goto :goto_39

    .line 266
    .end local v12  # "i":I
    .end local v13  # "n":I
    .end local v14  # "triangleIndex":I
    .restart local v9  # "triangleIndex":I
    :cond_47
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 268
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 269
    .local v12, "vertices":[F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 270
    .local v13, "color":F
    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 271
    .local v14, "textureCoords":[F
    iget v15, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    int-to-float v15, v15

    div-float v15, p4, v15

    .line 272
    .local v15, "sX":F
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    int-to-float v1, v1

    div-float v1, p5, v1

    .line 274
    .local v1, "sY":F
    const/16 v16, 0x0

    move/from16 v19, v16

    move-object/from16 v16, v2

    move/from16 v2, v19

    .local v2, "i":I
    .local v16, "triangles":[S
    :goto_61
    if-ge v2, v6, :cond_90

    .line 275
    add-int/lit8 v17, v10, 0x1

    .end local v10  # "vertexIndex":I
    .local v17, "vertexIndex":I
    aget v18, v5, v2

    mul-float v18, v18, v15

    add-float v18, v18, p2

    aput v18, v12, v10

    .line 276
    add-int/lit8 v10, v17, 0x1

    .end local v17  # "vertexIndex":I
    .restart local v10  # "vertexIndex":I
    add-int/lit8 v18, v2, 0x1

    aget v18, v5, v18

    mul-float v18, v18, v1

    add-float v18, v18, p3

    aput v18, v12, v17

    .line 277
    add-int/lit8 v17, v10, 0x1

    .end local v10  # "vertexIndex":I
    .restart local v17  # "vertexIndex":I
    aput v13, v12, v10

    .line 278
    add-int/lit8 v10, v17, 0x1

    .end local v17  # "vertexIndex":I
    .restart local v10  # "vertexIndex":I
    aget v18, v14, v2

    aput v18, v12, v17

    .line 279
    add-int/lit8 v17, v10, 0x1

    .end local v10  # "vertexIndex":I
    .restart local v17  # "vertexIndex":I
    add-int/lit8 v18, v2, 0x1

    aget v18, v14, v18

    aput v18, v12, v10

    .line 274
    add-int/lit8 v2, v2, 0x2

    move/from16 v10, v17

    goto :goto_61

    .line 281
    .end local v2  # "i":I
    .end local v17  # "vertexIndex":I
    .restart local v10  # "vertexIndex":I
    :cond_90
    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 282
    return-void

    .line 245
    .end local v1  # "sY":F
    .end local v3  # "regionTriangles":[S
    .end local v4  # "regionTrianglesLength":I
    .end local v5  # "regionVertices":[F
    .end local v6  # "regionVerticesLength":I
    .end local v7  # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v8  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v9  # "triangleIndex":I
    .end local v10  # "vertexIndex":I
    .end local v11  # "startVertex":I
    .end local v12  # "vertices":[F
    .end local v13  # "color":F
    .end local v14  # "textureCoords":[F
    .end local v15  # "sX":F
    .end local v16  # "triangles":[S
    :cond_93
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FFFFFFFFF)V
    .registers 38
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "originX"  # F
    .param p5, "originY"  # F
    .param p6, "width"  # F
    .param p7, "height"  # F
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "rotation"  # F

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_b4

    .line 289
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 290
    .local v2, "triangles":[S
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 291
    .local v3, "regionTriangles":[S
    array-length v4, v3

    .line 292
    .local v4, "regionTrianglesLength":I
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 293
    .local v5, "regionVertices":[F
    array-length v6, v5

    .line 294
    .local v6, "regionVerticesLength":I
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 296
    .local v7, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 297
    .local v8, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v8, v9, :cond_1c

    .line 298
    invoke-direct {v0, v8}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_31

    .line 299
    :cond_1c
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v9, v4

    array-length v10, v2

    if-gt v9, v10, :cond_2e

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    mul-int/lit8 v10, v6, 0x5

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v10, v10

    if-le v9, v10, :cond_31

    .line 300
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 302
    :cond_31
    :goto_31
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 303
    .local v9, "triangleIndex":I
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 304
    .local v10, "vertexIndex":I
    div-int/lit8 v11, v10, 0x5

    .line 306
    .local v11, "startVertex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_38
    if-ge v12, v4, :cond_46

    .line 307
    add-int/lit8 v13, v9, 0x1

    .end local v9  # "triangleIndex":I
    .local v13, "triangleIndex":I
    aget-short v14, v3, v12

    add-int/2addr v14, v11

    int-to-short v14, v14

    aput-short v14, v2, v9

    .line 306
    add-int/lit8 v12, v12, 0x1

    move v9, v13

    goto :goto_38

    .line 308
    .end local v12  # "i":I
    .end local v13  # "triangleIndex":I
    .restart local v9  # "triangleIndex":I
    :cond_46
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 310
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 311
    .local v12, "vertices":[F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 312
    .local v13, "color":F
    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 314
    .local v14, "textureCoords":[F
    add-float v15, p2, p4

    .line 315
    .local v15, "worldOriginX":F
    add-float v16, p3, p5

    .line 316
    .local v16, "worldOriginY":F
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    int-to-float v1, v1

    div-float v1, p6, v1

    .line 317
    .local v1, "sX":F
    move-object/from16 v17, v2

    .end local v2  # "triangles":[S
    .local v17, "triangles":[S
    iget v2, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    int-to-float v2, v2

    div-float v2, p7, v2

    .line 318
    .local v2, "sY":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v18

    .line 319
    .local v18, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v19

    .line 322
    .local v19, "sin":F
    const/16 v20, 0x0

    move/from16 v26, v20

    move-object/from16 v20, v3

    move/from16 v3, v26

    .local v3, "i":I
    .local v20, "regionTriangles":[S
    :goto_6e
    if-ge v3, v6, :cond_b1

    .line 323
    aget v21, v5, v3

    mul-float v21, v21, v1

    sub-float v21, v21, p4

    mul-float v21, v21, p8

    .line 324
    .local v21, "fx":F
    add-int/lit8 v22, v3, 0x1

    aget v22, v5, v22

    mul-float v22, v22, v2

    sub-float v22, v22, p5

    mul-float v22, v22, p9

    .line 325
    .local v22, "fy":F
    add-int/lit8 v23, v10, 0x1

    .end local v10  # "vertexIndex":I
    .local v23, "vertexIndex":I
    mul-float v24, v18, v21

    mul-float v25, v19, v22

    sub-float v24, v24, v25

    add-float v24, v24, v15

    aput v24, v12, v10

    .line 326
    add-int/lit8 v10, v23, 0x1

    .end local v23  # "vertexIndex":I
    .restart local v10  # "vertexIndex":I
    mul-float v24, v19, v21

    mul-float v25, v18, v22

    add-float v24, v24, v25

    add-float v24, v24, v16

    aput v24, v12, v23

    .line 327
    add-int/lit8 v23, v10, 0x1

    .end local v10  # "vertexIndex":I
    .restart local v23  # "vertexIndex":I
    aput v13, v12, v10

    .line 328
    add-int/lit8 v10, v23, 0x1

    .end local v23  # "vertexIndex":I
    .restart local v10  # "vertexIndex":I
    aget v24, v14, v3

    aput v24, v12, v23

    .line 329
    add-int/lit8 v23, v10, 0x1

    .end local v10  # "vertexIndex":I
    .restart local v23  # "vertexIndex":I
    add-int/lit8 v24, v3, 0x1

    aget v24, v14, v24

    aput v24, v12, v10

    .line 322
    add-int/lit8 v3, v3, 0x2

    move/from16 v10, v23

    goto :goto_6e

    .line 331
    .end local v3  # "i":I
    .end local v21  # "fx":F
    .end local v22  # "fy":F
    .end local v23  # "vertexIndex":I
    .restart local v10  # "vertexIndex":I
    :cond_b1
    iput v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 332
    return-void

    .line 287
    .end local v1  # "sX":F
    .end local v2  # "sY":F
    .end local v4  # "regionTrianglesLength":I
    .end local v5  # "regionVertices":[F
    .end local v6  # "regionVerticesLength":I
    .end local v7  # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v8  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v9  # "triangleIndex":I
    .end local v10  # "vertexIndex":I
    .end local v11  # "startVertex":I
    .end local v12  # "vertices":[F
    .end local v13  # "color":F
    .end local v14  # "textureCoords":[F
    .end local v15  # "worldOriginX":F
    .end local v16  # "worldOriginY":F
    .end local v17  # "triangles":[S
    .end local v18  # "cos":F
    .end local v19  # "sin":F
    .end local v20  # "regionTriangles":[S
    :cond_b4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .registers 11
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 793
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 794
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .registers 22
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 798
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_b8

    .line 800
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 801
    .local v2, "triangles":[S
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 803
    .local v3, "vertices":[F
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 804
    .local v4, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v4, v5, :cond_16

    .line 805
    invoke-direct {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_27

    .line 806
    :cond_16
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v5, v5, 0x6

    array-length v6, v2

    if-gt v5, v6, :cond_24

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v5, v5, 0x14

    array-length v6, v3

    if-le v5, v6, :cond_27

    .line 807
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 809
    :cond_27
    :goto_27
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 810
    .local v5, "triangleIndex":I
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v6, v6, 0x5

    .line 811
    .local v6, "startVertex":I
    add-int/lit8 v7, v5, 0x1

    .end local v5  # "triangleIndex":I
    .local v7, "triangleIndex":I
    int-to-short v8, v6

    aput-short v8, v2, v5

    .line 812
    add-int/lit8 v5, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v5  # "triangleIndex":I
    add-int/lit8 v8, v6, 0x1

    int-to-short v8, v8

    aput-short v8, v2, v7

    .line 813
    add-int/lit8 v7, v5, 0x1

    .end local v5  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    add-int/lit8 v8, v6, 0x2

    int-to-short v8, v8

    aput-short v8, v2, v5

    .line 814
    add-int/lit8 v5, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v5  # "triangleIndex":I
    add-int/lit8 v8, v6, 0x2

    int-to-short v8, v8

    aput-short v8, v2, v7

    .line 815
    add-int/lit8 v7, v5, 0x1

    .end local v5  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    add-int/lit8 v8, v6, 0x3

    int-to-short v8, v8

    aput-short v8, v2, v5

    .line 816
    add-int/lit8 v5, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v5  # "triangleIndex":I
    int-to-short v8, v6

    aput-short v8, v2, v7

    .line 817
    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 819
    add-float v7, p2, p4

    .line 820
    .local v7, "fx2":F
    add-float v8, p3, p5

    .line 821
    .local v8, "fy2":F
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 822
    .local v9, "u":F
    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 823
    .local v10, "v":F
    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 824
    .local v11, "u2":F
    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 826
    .local v12, "v2":F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 827
    .local v13, "color":F
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 828
    .local v14, "idx":I
    add-int/lit8 v15, v14, 0x1

    .end local v14  # "idx":I
    .local v15, "idx":I
    aput p2, v3, v14

    .line 829
    add-int/lit8 v14, v15, 0x1

    .end local v15  # "idx":I
    .restart local v14  # "idx":I
    aput p3, v3, v15

    .line 830
    add-int/lit8 v15, v14, 0x1

    .end local v14  # "idx":I
    .restart local v15  # "idx":I
    aput v13, v3, v14

    .line 831
    add-int/lit8 v14, v15, 0x1

    .end local v15  # "idx":I
    .restart local v14  # "idx":I
    aput v9, v3, v15

    .line 832
    add-int/lit8 v15, v14, 0x1

    .end local v14  # "idx":I
    .restart local v15  # "idx":I
    aput v10, v3, v14

    .line 834
    add-int/lit8 v14, v15, 0x1

    .end local v15  # "idx":I
    .restart local v14  # "idx":I
    aput p2, v3, v15

    .line 835
    add-int/lit8 v15, v14, 0x1

    .end local v14  # "idx":I
    .restart local v15  # "idx":I
    aput v8, v3, v14

    .line 836
    add-int/lit8 v14, v15, 0x1

    .end local v15  # "idx":I
    .restart local v14  # "idx":I
    aput v13, v3, v15

    .line 837
    add-int/lit8 v15, v14, 0x1

    .end local v14  # "idx":I
    .restart local v15  # "idx":I
    aput v9, v3, v14

    .line 838
    add-int/lit8 v14, v15, 0x1

    .end local v15  # "idx":I
    .restart local v14  # "idx":I
    aput v12, v3, v15

    .line 840
    add-int/lit8 v15, v14, 0x1

    .end local v14  # "idx":I
    .restart local v15  # "idx":I
    aput v7, v3, v14

    .line 841
    add-int/lit8 v14, v15, 0x1

    .end local v15  # "idx":I
    .restart local v14  # "idx":I
    aput v8, v3, v15

    .line 842
    add-int/lit8 v15, v14, 0x1

    .end local v14  # "idx":I
    .restart local v15  # "idx":I
    aput v13, v3, v14

    .line 843
    add-int/lit8 v14, v15, 0x1

    .end local v15  # "idx":I
    .restart local v14  # "idx":I
    aput v11, v3, v15

    .line 844
    add-int/lit8 v15, v14, 0x1

    .end local v14  # "idx":I
    .restart local v15  # "idx":I
    aput v12, v3, v14

    .line 846
    add-int/lit8 v14, v15, 0x1

    .end local v15  # "idx":I
    .restart local v14  # "idx":I
    aput v7, v3, v15

    .line 847
    add-int/lit8 v15, v14, 0x1

    .end local v14  # "idx":I
    .restart local v15  # "idx":I
    aput p3, v3, v14

    .line 848
    add-int/lit8 v14, v15, 0x1

    .end local v15  # "idx":I
    .restart local v14  # "idx":I
    aput v13, v3, v15

    .line 849
    add-int/lit8 v15, v14, 0x1

    .end local v14  # "idx":I
    .restart local v15  # "idx":I
    aput v11, v3, v14

    .line 850
    add-int/lit8 v14, v15, 0x1

    .end local v15  # "idx":I
    .restart local v14  # "idx":I
    aput v10, v3, v15

    .line 851
    iput v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 852
    return-void

    .line 798
    .end local v2  # "triangles":[S
    .end local v3  # "vertices":[F
    .end local v4  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v5  # "triangleIndex":I
    .end local v6  # "startVertex":I
    .end local v7  # "fx2":F
    .end local v8  # "fy2":F
    .end local v9  # "u":F
    .end local v10  # "v":F
    .end local v11  # "u2":F
    .end local v12  # "v2":F
    .end local v13  # "color":F
    .end local v14  # "idx":I
    :cond_b8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .registers 46
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "originX"  # F
    .param p5, "originY"  # F
    .param p6, "width"  # F
    .param p7, "height"  # F
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "rotation"  # F

    .line 857
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v4, :cond_144

    .line 859
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 860
    .local v4, "triangles":[S
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 862
    .local v5, "vertices":[F
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 863
    .local v6, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v6, v7, :cond_1a

    .line 864
    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_2b

    .line 865
    :cond_1a
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v7, v7, 0x6

    array-length v8, v4

    if-gt v7, v8, :cond_28

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v7, v7, 0x14

    array-length v8, v5

    if-le v7, v8, :cond_2b

    .line 866
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 868
    :cond_2b
    :goto_2b
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 869
    .local v7, "triangleIndex":I
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v8, v8, 0x5

    .line 870
    .local v8, "startVertex":I
    add-int/lit8 v9, v7, 0x1

    .end local v7  # "triangleIndex":I
    .local v9, "triangleIndex":I
    int-to-short v10, v8

    aput-short v10, v4, v7

    .line 871
    add-int/lit8 v7, v9, 0x1

    .end local v9  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    add-int/lit8 v10, v8, 0x1

    int-to-short v10, v10

    aput-short v10, v4, v9

    .line 872
    add-int/lit8 v9, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v9  # "triangleIndex":I
    add-int/lit8 v10, v8, 0x2

    int-to-short v10, v10

    aput-short v10, v4, v7

    .line 873
    add-int/lit8 v7, v9, 0x1

    .end local v9  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    add-int/lit8 v10, v8, 0x2

    int-to-short v10, v10

    aput-short v10, v4, v9

    .line 874
    add-int/lit8 v9, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v9  # "triangleIndex":I
    add-int/lit8 v10, v8, 0x3

    int-to-short v10, v10

    aput-short v10, v4, v7

    .line 875
    add-int/lit8 v7, v9, 0x1

    .end local v9  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    int-to-short v10, v8

    aput-short v10, v4, v9

    .line 876
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 879
    add-float v9, p2, v2

    .line 880
    .local v9, "worldOriginX":F
    add-float v10, p3, v3

    .line 881
    .local v10, "worldOriginY":F
    neg-float v11, v2

    .line 882
    .local v11, "fx":F
    neg-float v12, v3

    .line 883
    .local v12, "fy":F
    sub-float v13, p6, v2

    .line 884
    .local v13, "fx2":F
    sub-float v14, p7, v3

    .line 887
    .local v14, "fy2":F
    const/high16 v15, 0x3f800000  # 1.0f

    cmpl-float v16, p8, v15

    if-nez v16, :cond_6d

    cmpl-float v15, p9, v15

    if-eqz v15, :cond_75

    .line 888
    :cond_6d
    mul-float v11, v11, p8

    .line 889
    mul-float v12, v12, p9

    .line 890
    mul-float v13, v13, p8

    .line 891
    mul-float v14, v14, p9

    .line 895
    :cond_75
    move v15, v11

    .line 896
    .local v15, "p1x":F
    move/from16 v16, v12

    .line 897
    .local v16, "p1y":F
    move/from16 v17, v11

    .line 898
    .local v17, "p2x":F
    move/from16 v18, v14

    .line 899
    .local v18, "p2y":F
    move/from16 v19, v13

    .line 900
    .local v19, "p3x":F
    move/from16 v20, v14

    .line 901
    .local v20, "p3y":F
    move/from16 v21, v13

    .line 902
    .local v21, "p4x":F
    move/from16 v22, v12

    .line 914
    .local v22, "p4y":F
    const/16 v23, 0x0

    cmpl-float v23, p10, v23

    if-eqz v23, :cond_bf

    .line 915
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v23

    .line 916
    .local v23, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v24

    .line 918
    .local v24, "sin":F
    mul-float v25, v23, v15

    mul-float v26, v24, v16

    sub-float v25, v25, v26

    .line 919
    .local v25, "x1":F
    mul-float v26, v24, v15

    mul-float v27, v23, v16

    add-float v26, v26, v27

    .line 921
    .local v26, "y1":F
    mul-float v27, v23, v17

    mul-float v28, v24, v18

    sub-float v27, v27, v28

    .line 922
    .local v27, "x2":F
    mul-float v28, v24, v17

    mul-float v29, v23, v18

    add-float v28, v28, v29

    .line 924
    .local v28, "y2":F
    mul-float v29, v23, v19

    mul-float v30, v24, v20

    sub-float v29, v29, v30

    .line 925
    .local v29, "x3":F
    mul-float v30, v24, v19

    mul-float v31, v23, v20

    add-float v30, v30, v31

    .line 927
    .local v30, "y3":F
    sub-float v31, v29, v27

    add-float v31, v25, v31

    .line 928
    .local v31, "x4":F
    sub-float v32, v28, v26

    sub-float v23, v30, v32

    .line 929
    .end local v24  # "sin":F
    .local v23, "y4":F
    goto :goto_cf

    .line 930
    .end local v23  # "y4":F
    .end local v25  # "x1":F
    .end local v26  # "y1":F
    .end local v27  # "x2":F
    .end local v28  # "y2":F
    .end local v29  # "x3":F
    .end local v30  # "y3":F
    .end local v31  # "x4":F
    :cond_bf
    move/from16 v25, v15

    .line 931
    .restart local v25  # "x1":F
    move/from16 v26, v16

    .line 933
    .restart local v26  # "y1":F
    move/from16 v27, v17

    .line 934
    .restart local v27  # "x2":F
    move/from16 v28, v18

    .line 936
    .restart local v28  # "y2":F
    move/from16 v29, v19

    .line 937
    .restart local v29  # "x3":F
    move/from16 v30, v20

    .line 939
    .restart local v30  # "y3":F
    move/from16 v31, v21

    .line 940
    .restart local v31  # "x4":F
    move/from16 v23, v22

    .line 943
    .restart local v23  # "y4":F
    :goto_cf
    add-float v25, v25, v9

    .line 944
    add-float v26, v26, v10

    .line 945
    add-float v27, v27, v9

    .line 946
    add-float v28, v28, v10

    .line 947
    add-float v29, v29, v9

    .line 948
    add-float v30, v30, v10

    .line 949
    add-float v31, v31, v9

    .line 950
    add-float v23, v23, v10

    .line 952
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 953
    .local v2, "u":F
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 954
    .local v3, "v":F
    move-object/from16 v24, v4

    .end local v4  # "triangles":[S
    .local v24, "triangles":[S
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 955
    .local v4, "u2":F
    move-object/from16 v32, v6

    .end local v6  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .local v32, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 957
    .local v6, "v2":F
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 958
    .local v1, "color":F
    move/from16 v33, v7

    .end local v7  # "triangleIndex":I
    .local v33, "triangleIndex":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 959
    .local v7, "idx":I
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .local v34, "idx":I
    aput v25, v5, v7

    .line 960
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v26, v5, v34

    .line 961
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v1, v5, v7

    .line 962
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v2, v5, v34

    .line 963
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v3, v5, v7

    .line 965
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v27, v5, v34

    .line 966
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v28, v5, v7

    .line 967
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v1, v5, v34

    .line 968
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v2, v5, v7

    .line 969
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v6, v5, v34

    .line 971
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v29, v5, v7

    .line 972
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v30, v5, v34

    .line 973
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v1, v5, v7

    .line 974
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v4, v5, v34

    .line 975
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v6, v5, v7

    .line 977
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v31, v5, v34

    .line 978
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v23, v5, v7

    .line 979
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v1, v5, v34

    .line 980
    add-int/lit8 v34, v7, 0x1

    .end local v7  # "idx":I
    .restart local v34  # "idx":I
    aput v4, v5, v7

    .line 981
    add-int/lit8 v7, v34, 0x1

    .end local v34  # "idx":I
    .restart local v7  # "idx":I
    aput v3, v5, v34

    .line 982
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 983
    return-void

    .line 857
    .end local v1  # "color":F
    .end local v2  # "u":F
    .end local v3  # "v":F
    .end local v4  # "u2":F
    .end local v5  # "vertices":[F
    .end local v6  # "v2":F
    .end local v7  # "idx":I
    .end local v8  # "startVertex":I
    .end local v9  # "worldOriginX":F
    .end local v10  # "worldOriginY":F
    .end local v11  # "fx":F
    .end local v12  # "fy":F
    .end local v13  # "fx2":F
    .end local v14  # "fy2":F
    .end local v15  # "p1x":F
    .end local v16  # "p1y":F
    .end local v17  # "p2x":F
    .end local v18  # "p2y":F
    .end local v19  # "p3x":F
    .end local v20  # "p3y":F
    .end local v21  # "p4x":F
    .end local v22  # "p4y":F
    .end local v23  # "y4":F
    .end local v24  # "triangles":[S
    .end local v25  # "x1":F
    .end local v26  # "y1":F
    .end local v27  # "x2":F
    .end local v28  # "y2":F
    .end local v29  # "x3":F
    .end local v30  # "y3":F
    .end local v31  # "x4":F
    .end local v32  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v33  # "triangleIndex":I
    :cond_144
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .registers 52
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "originX"  # F
    .param p5, "originY"  # F
    .param p6, "width"  # F
    .param p7, "height"  # F
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "rotation"  # F
    .param p11, "clockwise"  # Z

    .line 988
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v4, :cond_181

    .line 990
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 991
    .local v4, "triangles":[S
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 993
    .local v5, "vertices":[F
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 994
    .local v6, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v6, v7, :cond_1a

    .line 995
    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_2b

    .line 996
    :cond_1a
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v7, v7, 0x6

    array-length v8, v4

    if-gt v7, v8, :cond_28

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v7, v7, 0x14

    array-length v8, v5

    if-le v7, v8, :cond_2b

    .line 997
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 999
    :cond_2b
    :goto_2b
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1000
    .local v7, "triangleIndex":I
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v8, v8, 0x5

    .line 1001
    .local v8, "startVertex":I
    add-int/lit8 v9, v7, 0x1

    .end local v7  # "triangleIndex":I
    .local v9, "triangleIndex":I
    int-to-short v10, v8

    aput-short v10, v4, v7

    .line 1002
    add-int/lit8 v7, v9, 0x1

    .end local v9  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    add-int/lit8 v10, v8, 0x1

    int-to-short v10, v10

    aput-short v10, v4, v9

    .line 1003
    add-int/lit8 v9, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v9  # "triangleIndex":I
    add-int/lit8 v10, v8, 0x2

    int-to-short v10, v10

    aput-short v10, v4, v7

    .line 1004
    add-int/lit8 v7, v9, 0x1

    .end local v9  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    add-int/lit8 v10, v8, 0x2

    int-to-short v10, v10

    aput-short v10, v4, v9

    .line 1005
    add-int/lit8 v9, v7, 0x1

    .end local v7  # "triangleIndex":I
    .restart local v9  # "triangleIndex":I
    add-int/lit8 v10, v8, 0x3

    int-to-short v10, v10

    aput-short v10, v4, v7

    .line 1006
    add-int/lit8 v7, v9, 0x1

    .end local v9  # "triangleIndex":I
    .restart local v7  # "triangleIndex":I
    int-to-short v10, v8

    aput-short v10, v4, v9

    .line 1007
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1010
    add-float v9, p2, v2

    .line 1011
    .local v9, "worldOriginX":F
    add-float v10, p3, v3

    .line 1012
    .local v10, "worldOriginY":F
    neg-float v11, v2

    .line 1013
    .local v11, "fx":F
    neg-float v12, v3

    .line 1014
    .local v12, "fy":F
    sub-float v13, p6, v2

    .line 1015
    .local v13, "fx2":F
    sub-float v14, p7, v3

    .line 1018
    .local v14, "fy2":F
    const/high16 v15, 0x3f800000  # 1.0f

    cmpl-float v16, p8, v15

    if-nez v16, :cond_6d

    cmpl-float v15, p9, v15

    if-eqz v15, :cond_75

    .line 1019
    :cond_6d
    mul-float v11, v11, p8

    .line 1020
    mul-float v12, v12, p9

    .line 1021
    mul-float v13, v13, p8

    .line 1022
    mul-float v14, v14, p9

    .line 1026
    :cond_75
    move v15, v11

    .line 1027
    .local v15, "p1x":F
    move/from16 v16, v12

    .line 1028
    .local v16, "p1y":F
    move/from16 v17, v11

    .line 1029
    .local v17, "p2x":F
    move/from16 v18, v14

    .line 1030
    .local v18, "p2y":F
    move/from16 v19, v13

    .line 1031
    .local v19, "p3x":F
    move/from16 v20, v14

    .line 1032
    .local v20, "p3y":F
    move/from16 v21, v13

    .line 1033
    .local v21, "p4x":F
    move/from16 v22, v12

    .line 1045
    .local v22, "p4y":F
    const/16 v23, 0x0

    cmpl-float v23, p10, v23

    if-eqz v23, :cond_bf

    .line 1046
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v23

    .line 1047
    .local v23, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v24

    .line 1049
    .local v24, "sin":F
    mul-float v25, v23, v15

    mul-float v26, v24, v16

    sub-float v25, v25, v26

    .line 1050
    .local v25, "x1":F
    mul-float v26, v24, v15

    mul-float v27, v23, v16

    add-float v26, v26, v27

    .line 1052
    .local v26, "y1":F
    mul-float v27, v23, v17

    mul-float v28, v24, v18

    sub-float v27, v27, v28

    .line 1053
    .local v27, "x2":F
    mul-float v28, v24, v17

    mul-float v29, v23, v18

    add-float v28, v28, v29

    .line 1055
    .local v28, "y2":F
    mul-float v29, v23, v19

    mul-float v30, v24, v20

    sub-float v29, v29, v30

    .line 1056
    .local v29, "x3":F
    mul-float v30, v24, v19

    mul-float v31, v23, v20

    add-float v30, v30, v31

    .line 1058
    .local v30, "y3":F
    sub-float v31, v29, v27

    add-float v31, v25, v31

    .line 1059
    .local v31, "x4":F
    sub-float v32, v28, v26

    sub-float v23, v30, v32

    .line 1060
    .end local v24  # "sin":F
    .local v23, "y4":F
    goto :goto_cf

    .line 1061
    .end local v23  # "y4":F
    .end local v25  # "x1":F
    .end local v26  # "y1":F
    .end local v27  # "x2":F
    .end local v28  # "y2":F
    .end local v29  # "x3":F
    .end local v30  # "y3":F
    .end local v31  # "x4":F
    :cond_bf
    move/from16 v25, v15

    .line 1062
    .restart local v25  # "x1":F
    move/from16 v26, v16

    .line 1064
    .restart local v26  # "y1":F
    move/from16 v27, v17

    .line 1065
    .restart local v27  # "x2":F
    move/from16 v28, v18

    .line 1067
    .restart local v28  # "y2":F
    move/from16 v29, v19

    .line 1068
    .restart local v29  # "x3":F
    move/from16 v30, v20

    .line 1070
    .restart local v30  # "y3":F
    move/from16 v31, v21

    .line 1071
    .restart local v31  # "x4":F
    move/from16 v23, v22

    .line 1074
    .restart local v23  # "y4":F
    :goto_cf
    add-float v25, v25, v9

    .line 1075
    add-float v26, v26, v10

    .line 1076
    add-float v27, v27, v9

    .line 1077
    add-float v28, v28, v10

    .line 1078
    add-float v29, v29, v9

    .line 1079
    add-float v30, v30, v10

    .line 1080
    add-float v31, v31, v9

    .line 1081
    add-float v23, v23, v10

    .line 1084
    if-eqz p11, :cond_106

    .line 1085
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1086
    .local v2, "u1":F
    move/from16 v24, v2

    .end local v2  # "u1":F
    .local v24, "u1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1087
    .local v2, "v1":F
    move/from16 v32, v2

    .end local v2  # "v1":F
    .local v32, "v1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1088
    .local v2, "u2":F
    move/from16 v33, v2

    .end local v2  # "u2":F
    .local v33, "u2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1089
    .local v2, "v2":F
    move/from16 v34, v2

    .end local v2  # "v2":F
    .local v34, "v2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1090
    .local v2, "u3":F
    move/from16 v35, v2

    .end local v2  # "u3":F
    .local v35, "u3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1091
    .local v2, "v3":F
    move/from16 v36, v2

    .end local v2  # "v3":F
    .local v36, "v3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1092
    .local v2, "u4":F
    move/from16 v37, v2

    .end local v2  # "u4":F
    .local v37, "u4":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v39, v24

    move/from16 v24, v2

    move/from16 v2, v39

    .local v2, "v4":F
    goto :goto_12a

    .line 1094
    .end local v2  # "v4":F
    .end local v24  # "u1":F
    .end local v32  # "v1":F
    .end local v33  # "u2":F
    .end local v34  # "v2":F
    .end local v35  # "u3":F
    .end local v36  # "v3":F
    .end local v37  # "u4":F
    :cond_106
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1095
    .local v2, "u1":F
    move/from16 v24, v2

    .end local v2  # "u1":F
    .restart local v24  # "u1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1096
    .local v2, "v1":F
    move/from16 v32, v2

    .end local v2  # "v1":F
    .restart local v32  # "v1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1097
    .local v2, "u2":F
    move/from16 v33, v2

    .end local v2  # "u2":F
    .restart local v33  # "u2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1098
    .local v2, "v2":F
    move/from16 v34, v2

    .end local v2  # "v2":F
    .restart local v34  # "v2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1099
    .local v2, "u3":F
    move/from16 v35, v2

    .end local v2  # "u3":F
    .restart local v35  # "u3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1100
    .local v2, "v3":F
    move/from16 v36, v2

    .end local v2  # "v3":F
    .restart local v36  # "v3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1101
    .local v2, "u4":F
    move/from16 v37, v2

    .end local v2  # "u4":F
    .restart local v37  # "u4":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v39, v24

    move/from16 v24, v2

    move/from16 v2, v39

    .line 1104
    .local v2, "u1":F
    .local v24, "v4":F
    :goto_12a
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 1105
    .local v1, "color":F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1106
    .local v3, "idx":I
    add-int/lit8 v38, v3, 0x1

    .end local v3  # "idx":I
    .local v38, "idx":I
    aput v25, v5, v3

    .line 1107
    add-int/lit8 v3, v38, 0x1

    .end local v38  # "idx":I
    .restart local v3  # "idx":I
    aput v26, v5, v38

    .line 1108
    add-int/lit8 v38, v3, 0x1

    .end local v3  # "idx":I
    .restart local v38  # "idx":I
    aput v1, v5, v3

    .line 1109
    add-int/lit8 v3, v38, 0x1

    .end local v38  # "idx":I
    .restart local v3  # "idx":I
    aput v2, v5, v38

    .line 1110
    add-int/lit8 v38, v3, 0x1

    .end local v3  # "idx":I
    .restart local v38  # "idx":I
    aput v32, v5, v3

    .line 1112
    add-int/lit8 v3, v38, 0x1

    .end local v38  # "idx":I
    .restart local v3  # "idx":I
    aput v27, v5, v38

    .line 1113
    add-int/lit8 v38, v3, 0x1

    .end local v3  # "idx":I
    .restart local v38  # "idx":I
    aput v28, v5, v3

    .line 1114
    add-int/lit8 v3, v38, 0x1

    .end local v38  # "idx":I
    .restart local v3  # "idx":I
    aput v1, v5, v38

    .line 1115
    add-int/lit8 v38, v3, 0x1

    .end local v3  # "idx":I
    .restart local v38  # "idx":I
    aput v33, v5, v3

    .line 1116
    add-int/lit8 v3, v38, 0x1

    .end local v38  # "idx":I
    .restart local v3  # "idx":I
    aput v34, v5, v38

    .line 1118
    add-int/lit8 v38, v3, 0x1

    .end local v3  # "idx":I
    .restart local v38  # "idx":I
    aput v29, v5, v3

    .line 1119
    add-int/lit8 v3, v38, 0x1

    .end local v38  # "idx":I
    .restart local v3  # "idx":I
    aput v30, v5, v38

    .line 1120
    add-int/lit8 v38, v3, 0x1

    .end local v3  # "idx":I
    .restart local v38  # "idx":I
    aput v1, v5, v3

    .line 1121
    add-int/lit8 v3, v38, 0x1

    .end local v38  # "idx":I
    .restart local v3  # "idx":I
    aput v35, v5, v38

    .line 1122
    add-int/lit8 v38, v3, 0x1

    .end local v3  # "idx":I
    .restart local v38  # "idx":I
    aput v36, v5, v3

    .line 1124
    add-int/lit8 v3, v38, 0x1

    .end local v38  # "idx":I
    .restart local v3  # "idx":I
    aput v31, v5, v38

    .line 1125
    add-int/lit8 v38, v3, 0x1

    .end local v3  # "idx":I
    .restart local v38  # "idx":I
    aput v23, v5, v3

    .line 1126
    add-int/lit8 v3, v38, 0x1

    .end local v38  # "idx":I
    .restart local v3  # "idx":I
    aput v1, v5, v38

    .line 1127
    add-int/lit8 v38, v3, 0x1

    .end local v3  # "idx":I
    .restart local v38  # "idx":I
    aput v37, v5, v3

    .line 1128
    add-int/lit8 v3, v38, 0x1

    .end local v38  # "idx":I
    .restart local v3  # "idx":I
    aput v24, v5, v38

    .line 1129
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1130
    return-void

    .line 988
    .end local v1  # "color":F
    .end local v2  # "u1":F
    .end local v3  # "idx":I
    .end local v4  # "triangles":[S
    .end local v5  # "vertices":[F
    .end local v6  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v7  # "triangleIndex":I
    .end local v8  # "startVertex":I
    .end local v9  # "worldOriginX":F
    .end local v10  # "worldOriginY":F
    .end local v11  # "fx":F
    .end local v12  # "fy":F
    .end local v13  # "fx2":F
    .end local v14  # "fy2":F
    .end local v15  # "p1x":F
    .end local v16  # "p1y":F
    .end local v17  # "p2x":F
    .end local v18  # "p2y":F
    .end local v19  # "p3x":F
    .end local v20  # "p3y":F
    .end local v21  # "p4x":F
    .end local v22  # "p4y":F
    .end local v23  # "y4":F
    .end local v24  # "v4":F
    .end local v25  # "x1":F
    .end local v26  # "y1":F
    .end local v27  # "x2":F
    .end local v28  # "y2":F
    .end local v29  # "x3":F
    .end local v30  # "y3":F
    .end local v31  # "x4":F
    .end local v32  # "v1":F
    .end local v33  # "u2":F
    .end local v34  # "v2":F
    .end local v35  # "u3":F
    .end local v36  # "v3":F
    .end local v37  # "u4":F
    :cond_181
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .registers 26
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "width"  # F
    .param p3, "height"  # F
    .param p4, "transform"  # Lcom/badlogic/gdx/math/Affine2;

    .line 1134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v3, :cond_f6

    .line 1136
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    .line 1137
    .local v3, "triangles":[S
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    .line 1139
    .local v4, "vertices":[F
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1140
    .local v5, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v6, :cond_18

    .line 1141
    invoke-direct {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_29

    .line 1142
    :cond_18
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v6, v6, 0x6

    array-length v7, v3

    if-gt v6, v7, :cond_26

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v6, v6, 0x14

    array-length v7, v4

    if-le v6, v7, :cond_29

    .line 1143
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1145
    :cond_29
    :goto_29
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1146
    .local v6, "triangleIndex":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v7, v7, 0x5

    .line 1147
    .local v7, "startVertex":I
    add-int/lit8 v8, v6, 0x1

    .end local v6  # "triangleIndex":I
    .local v8, "triangleIndex":I
    int-to-short v9, v7

    aput-short v9, v3, v6

    .line 1148
    add-int/lit8 v6, v8, 0x1

    .end local v8  # "triangleIndex":I
    .restart local v6  # "triangleIndex":I
    add-int/lit8 v9, v7, 0x1

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 1149
    add-int/lit8 v8, v6, 0x1

    .end local v6  # "triangleIndex":I
    .restart local v8  # "triangleIndex":I
    add-int/lit8 v9, v7, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v6

    .line 1150
    add-int/lit8 v6, v8, 0x1

    .end local v8  # "triangleIndex":I
    .restart local v6  # "triangleIndex":I
    add-int/lit8 v9, v7, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 1151
    add-int/lit8 v8, v6, 0x1

    .end local v6  # "triangleIndex":I
    .restart local v8  # "triangleIndex":I
    add-int/lit8 v9, v7, 0x3

    int-to-short v9, v9

    aput-short v9, v3, v6

    .line 1152
    add-int/lit8 v6, v8, 0x1

    .end local v8  # "triangleIndex":I
    .restart local v6  # "triangleIndex":I
    int-to-short v9, v7

    aput-short v9, v3, v8

    .line 1153
    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1156
    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 1157
    .local v8, "x1":F
    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 1158
    .local v9, "y1":F
    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v10, v10, p3

    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v10, v11

    .line 1159
    .local v10, "x2":F
    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v11, v11, p3

    iget v12, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v11, v12

    .line 1160
    .local v11, "y2":F
    iget v12, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v12, v12, p2

    iget v13, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v13, v13, p3

    add-float/2addr v12, v13

    iget v13, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v12, v13

    .line 1161
    .local v12, "x3":F
    iget v13, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v13, v13, p2

    iget v14, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v14, v14, p3

    add-float/2addr v13, v14

    iget v14, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v13, v14

    .line 1162
    .local v13, "y3":F
    iget v14, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v14, v14, p2

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v14, v15

    .line 1163
    .local v14, "x4":F
    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v15, v15, p2

    move-object/from16 v16, v3

    .end local v3  # "triangles":[S
    .local v16, "triangles":[S
    iget v3, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v15, v3

    .line 1165
    .local v15, "y4":F
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1166
    .local v3, "u":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1167
    .local v2, "v":F
    move-object/from16 v17, v5

    .end local v5  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .local v17, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1168
    .local v5, "u2":F
    move/from16 v18, v6

    .end local v6  # "triangleIndex":I
    .local v18, "triangleIndex":I
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1170
    .local v6, "v2":F
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 1171
    .local v1, "color":F
    move/from16 v19, v7

    .end local v7  # "startVertex":I
    .local v19, "startVertex":I
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1172
    .local v7, "idx":I
    add-int/lit8 v20, v7, 0x1

    .end local v7  # "idx":I
    .local v20, "idx":I
    aput v8, v4, v7

    .line 1173
    add-int/lit8 v7, v20, 0x1

    .end local v20  # "idx":I
    .restart local v7  # "idx":I
    aput v9, v4, v20

    .line 1174
    add-int/lit8 v20, v7, 0x1

    .end local v7  # "idx":I
    .restart local v20  # "idx":I
    aput v1, v4, v7

    .line 1175
    add-int/lit8 v7, v20, 0x1

    .end local v20  # "idx":I
    .restart local v7  # "idx":I
    aput v3, v4, v20

    .line 1176
    add-int/lit8 v20, v7, 0x1

    .end local v7  # "idx":I
    .restart local v20  # "idx":I
    aput v2, v4, v7

    .line 1178
    add-int/lit8 v7, v20, 0x1

    .end local v20  # "idx":I
    .restart local v7  # "idx":I
    aput v10, v4, v20

    .line 1179
    add-int/lit8 v20, v7, 0x1

    .end local v7  # "idx":I
    .restart local v20  # "idx":I
    aput v11, v4, v7

    .line 1180
    add-int/lit8 v7, v20, 0x1

    .end local v20  # "idx":I
    .restart local v7  # "idx":I
    aput v1, v4, v20

    .line 1181
    add-int/lit8 v20, v7, 0x1

    .end local v7  # "idx":I
    .restart local v20  # "idx":I
    aput v3, v4, v7

    .line 1182
    add-int/lit8 v7, v20, 0x1

    .end local v20  # "idx":I
    .restart local v7  # "idx":I
    aput v6, v4, v20

    .line 1184
    add-int/lit8 v20, v7, 0x1

    .end local v7  # "idx":I
    .restart local v20  # "idx":I
    aput v12, v4, v7

    .line 1185
    add-int/lit8 v7, v20, 0x1

    .end local v20  # "idx":I
    .restart local v7  # "idx":I
    aput v13, v4, v20

    .line 1186
    add-int/lit8 v20, v7, 0x1

    .end local v7  # "idx":I
    .restart local v20  # "idx":I
    aput v1, v4, v7

    .line 1187
    add-int/lit8 v7, v20, 0x1

    .end local v20  # "idx":I
    .restart local v7  # "idx":I
    aput v5, v4, v20

    .line 1188
    add-int/lit8 v20, v7, 0x1

    .end local v7  # "idx":I
    .restart local v20  # "idx":I
    aput v6, v4, v7

    .line 1190
    add-int/lit8 v7, v20, 0x1

    .end local v20  # "idx":I
    .restart local v7  # "idx":I
    aput v14, v4, v20

    .line 1191
    add-int/lit8 v20, v7, 0x1

    .end local v7  # "idx":I
    .restart local v20  # "idx":I
    aput v15, v4, v7

    .line 1192
    add-int/lit8 v7, v20, 0x1

    .end local v20  # "idx":I
    .restart local v7  # "idx":I
    aput v1, v4, v20

    .line 1193
    add-int/lit8 v20, v7, 0x1

    .end local v7  # "idx":I
    .restart local v20  # "idx":I
    aput v5, v4, v7

    .line 1194
    add-int/lit8 v7, v20, 0x1

    .end local v20  # "idx":I
    .restart local v7  # "idx":I
    aput v2, v4, v20

    .line 1195
    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1196
    return-void

    .line 1134
    .end local v1  # "color":F
    .end local v2  # "v":F
    .end local v3  # "u":F
    .end local v4  # "vertices":[F
    .end local v5  # "u2":F
    .end local v6  # "v2":F
    .end local v7  # "idx":I
    .end local v8  # "x1":F
    .end local v9  # "y1":F
    .end local v10  # "x2":F
    .end local v11  # "y2":F
    .end local v12  # "x3":F
    .end local v13  # "y3":F
    .end local v14  # "x4":F
    .end local v15  # "y4":F
    .end local v16  # "triangles":[S
    .end local v17  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v18  # "triangleIndex":I
    .end local v19  # "startVertex":I
    :cond_f6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableBlending()V
    .registers 2

    .line 1232
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    .line 1234
    return-void
.end method

.method public end()V
    .registers 3

    .line 167
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_23

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    if-lez v0, :cond_b

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 169
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    .line 172
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 173
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->isBlendingEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 175
    :cond_22
    return-void

    .line 167
    .end local v0  # "gl":Lcom/badlogic/gdx/graphics/GL20;
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 9

    .line 1200
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    if-nez v0, :cond_5

    return-void

    .line 1202
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    .line 1203
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    .line 1204
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1205
    .local v0, "trianglesInBatch":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    if-le v0, v1, :cond_19

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    .line 1207
    :cond_19
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 1208
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 1209
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1210
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    invoke-virtual {v1, v2, v4, v0}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1211
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    const/16 v3, 0xbe2

    if-eqz v2, :cond_39

    .line 1212
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_50

    .line 1214
    :cond_39
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 1215
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_50

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    invoke-interface {v2, v3, v5, v6, v7}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFuncSeparate(IIII)V

    .line 1218
    :cond_50
    :goto_50
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    goto :goto_59

    :cond_57
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :goto_59
    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 1220
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    .line 1221
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    .line 1222
    return-void
.end method

.method public getBlendDstFunc()I
    .registers 2

    .line 1259
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    return v0
.end method

.method public getBlendDstFuncAlpha()I
    .registers 2

    .line 1269
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    return v0
.end method

.method public getBlendSrcFunc()I
    .registers 2

    .line 1254
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    return v0
.end method

.method public getBlendSrcFuncAlpha()I
    .registers 2

    .line 1264
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getPackedColor()F
    .registers 2

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .registers 2

    .line 1280
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .registers 2

    .line 1337
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v0, :cond_7

    .line 1338
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0

    .line 1340
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .registers 2

    .line 1285
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .registers 2

    .line 1345
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDrawing()Z
    .registers 2

    .line 1350
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    return v0
.end method

.method public setBlendFunction(II)V
    .registers 3
    .param p1, "srcFunc"  # I
    .param p2, "dstFunc"  # I

    .line 1238
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setBlendFunctionSeparate(IIII)V

    .line 1239
    return-void
.end method

.method public setBlendFunctionSeparate(IIII)V
    .registers 6
    .param p1, "srcFuncColor"  # I
    .param p2, "dstFuncColor"  # I
    .param p3, "srcFuncAlpha"  # I
    .param p4, "dstFuncAlpha"  # I

    .line 1243
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    if-ne v0, p1, :cond_11

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    if-ne v0, p2, :cond_11

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    if-ne v0, p3, :cond_11

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    if-ne v0, p4, :cond_11

    .line 1244
    return-void

    .line 1245
    :cond_11
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1246
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    .line 1247
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    .line 1248
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFuncAlpha:I

    .line 1249
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFuncAlpha:I

    .line 1250
    return-void
.end method

.method public setColor(FFFF)V
    .registers 6
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F
    .param p4, "a"  # F

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 187
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 180
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 181
    return-void
.end method

.method public setPackedColor(F)V
    .registers 3
    .param p1, "packedColor"  # F

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 192
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->colorPacked:F

    .line 193
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 3
    .param p1, "projection"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 1290
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1291
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1292
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 1293
    :cond_13
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 3
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1322
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_7

    .line 1323
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1325
    :cond_7
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1326
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_1f

    .line 1327
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_17

    .line 1328
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    goto :goto_1c

    .line 1330
    :cond_17
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 1331
    :goto_1c
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 1333
    :cond_1f
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 3
    .param p1, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 1297
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    .line 1298
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1299
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    .line 1300
    :cond_13
    return-void
.end method

.method protected setupMatrices()V
    .registers 6

    .line 1303
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1304
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    const-string v2, "u_texture"

    const-string v3, "u_projTrans"

    if-eqz v0, :cond_23

    .line 1305
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1306
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_2f

    .line 1308
    :cond_23
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1309
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 1311
    :goto_2f
    return-void
.end method
