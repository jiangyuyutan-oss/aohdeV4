.class public Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
.super Ljava/lang/Object;
.source "SpriteBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/Batch;


# static fields
.field public static defaultVertexDataType:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


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

.field drawing:Z

.field idx:I

.field invTexHeight:F

.field invTexWidth:F

.field lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field public maxSpritesInBatch:I

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private ownsShader:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field final vertices:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->defaultVertexDataType:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 81
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 82
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"  # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 88
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 14
    .param p1, "size"  # I
    .param p2, "defaultShader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 48
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 50
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 52
    new-instance v3, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 53
    new-instance v3, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 54
    new-instance v3, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 56
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 57
    const/16 v3, 0x302

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    .line 58
    const/16 v4, 0x303

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    .line 59
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFuncAlpha:I

    .line 60
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFuncAlpha:I

    .line 63
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 66
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v1, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 67
    sget v1, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 70
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 73
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    .line 76
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    .line 100
    const/16 v1, 0x1fff

    if-gt p1, v1, :cond_e2

    .line 102
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v1, :cond_53

    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectWithVAO:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    goto :goto_55

    :cond_53
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->defaultVertexDataType:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    :goto_55
    move-object v4, v1

    .line 104
    .local v4, "vertexDataType":Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    new-instance v1, Lcom/badlogic/gdx/graphics/Mesh;

    mul-int/lit8 v6, p1, 0x4

    mul-int/lit8 v7, p1, 0x6

    const/4 v3, 0x3

    new-array v8, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v5, "a_position"

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-direct {v3, v9, v10, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v8, v0

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_color"

    const/4 v5, 0x4

    invoke-direct {v0, v5, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v0, v8, v9

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v3, 0x10

    const-string v5, "a_texCoord0"

    invoke-direct {v0, v3, v10, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v0, v8, v10

    const/4 v5, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 111
    mul-int/lit8 v0, p1, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 113
    mul-int/lit8 v0, p1, 0x6

    .line 114
    .local v0, "len":I
    new-array v1, v0, [S

    .line 115
    .local v1, "indices":[S
    const/4 v2, 0x0

    .line 116
    .local v2, "j":S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a5
    if-ge v3, v0, :cond_cf

    .line 117
    aput-short v2, v1, v3

    .line 118
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 119
    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v2, 0x2

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 120
    add-int/lit8 v5, v3, 0x3

    add-int/lit8 v6, v2, 0x2

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 121
    add-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, v2, 0x3

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 122
    add-int/lit8 v5, v3, 0x5

    aput-short v2, v1, v5

    .line 116
    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v5, v2, 0x4

    int-to-short v2, v5

    goto :goto_a5

    .line 124
    .end local v3  # "i":I
    :cond_cf
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 126
    if-nez p2, :cond_df

    .line 127
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 128
    iput-boolean v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->ownsShader:Z

    goto :goto_e1

    .line 130
    :cond_df
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 131
    :goto_e1
    return-void

    .line 100
    .end local v0  # "len":I
    .end local v1  # "indices":[S
    .end local v2  # "j":S
    .end local v4  # "vertexDataType":Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    :cond_e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t have more than 8191 sprites per batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .registers 6

    .line 135
    const-string v0, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n"

    .line 149
    .local v0, "vertexShader":Ljava/lang/String;
    const-string v1, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP \n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    .line 163
    .local v1, "fragmentShader":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v2, "shader":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 165
    return-object v2

    .line 164
    :cond_10
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error compiling shader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public begin()V
    .registers 3

    .line 170
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v0, :cond_22

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 173
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_16

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    goto :goto_1b

    .line 177
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 178
    :goto_1b
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 181
    return-void

    .line 170
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteBatch.end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableBlending()V
    .registers 2

    .line 976
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-eqz v0, :cond_5

    return-void

    .line 977
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 979
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 1026
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 1027
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->ownsShader:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 1028
    :cond_12
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .registers 11
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 503
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

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 504
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .registers 20
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 508
    move-object v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v1, :cond_7c

    .line 510
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 512
    .local v1, "vertices":[F
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object v3, p1

    if-eq v3, v2, :cond_10

    .line 513
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_18

    .line 514
    :cond_10
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v4, v1

    if-ne v2, v4, :cond_18

    .line 515
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 517
    :cond_18
    :goto_18
    add-float v2, p2, p4

    .line 518
    .local v2, "fx2":F
    add-float v4, p3, p5

    .line 519
    .local v4, "fy2":F
    const/4 v5, 0x0

    .line 520
    .local v5, "u":F
    const/high16 v6, 0x3f800000  # 1.0f

    .line 521
    .local v6, "v":F
    const/high16 v7, 0x3f800000  # 1.0f

    .line 522
    .local v7, "u2":F
    const/4 v8, 0x0

    .line 524
    .local v8, "v2":F
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 525
    .local v9, "color":F
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 526
    .local v10, "idx":I
    aput p2, v1, v10

    .line 527
    add-int/lit8 v11, v10, 0x1

    aput p3, v1, v11

    .line 528
    add-int/lit8 v11, v10, 0x2

    aput v9, v1, v11

    .line 529
    add-int/lit8 v11, v10, 0x3

    const/4 v12, 0x0

    aput v12, v1, v11

    .line 530
    add-int/lit8 v11, v10, 0x4

    const/high16 v13, 0x3f800000  # 1.0f

    aput v13, v1, v11

    .line 532
    add-int/lit8 v11, v10, 0x5

    aput p2, v1, v11

    .line 533
    add-int/lit8 v11, v10, 0x6

    aput v4, v1, v11

    .line 534
    add-int/lit8 v11, v10, 0x7

    aput v9, v1, v11

    .line 535
    add-int/lit8 v11, v10, 0x8

    aput v12, v1, v11

    .line 536
    add-int/lit8 v11, v10, 0x9

    aput v12, v1, v11

    .line 538
    add-int/lit8 v11, v10, 0xa

    aput v2, v1, v11

    .line 539
    add-int/lit8 v11, v10, 0xb

    aput v4, v1, v11

    .line 540
    add-int/lit8 v11, v10, 0xc

    aput v9, v1, v11

    .line 541
    add-int/lit8 v11, v10, 0xd

    aput v13, v1, v11

    .line 542
    add-int/lit8 v11, v10, 0xe

    aput v12, v1, v11

    .line 544
    add-int/lit8 v11, v10, 0xf

    aput v2, v1, v11

    .line 545
    add-int/lit8 v11, v10, 0x10

    aput p3, v1, v11

    .line 546
    add-int/lit8 v11, v10, 0x11

    aput v9, v1, v11

    .line 547
    add-int/lit8 v11, v10, 0x12

    aput v13, v1, v11

    .line 548
    add-int/lit8 v11, v10, 0x13

    aput v13, v1, v11

    .line 549
    add-int/lit8 v11, v10, 0x14

    iput v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 550
    return-void

    .line 508
    .end local v1  # "vertices":[F
    .end local v2  # "fx2":F
    .end local v4  # "fy2":F
    .end local v5  # "u":F
    .end local v6  # "v":F
    .end local v7  # "u2":F
    .end local v8  # "v2":F
    .end local v9  # "color":F
    .end local v10  # "idx":I
    :cond_7c
    move-object v3, p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .registers 16
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F
    .param p6, "u"  # F
    .param p7, "v"  # F
    .param p8, "u2"  # F
    .param p9, "v2"  # F

    .line 461
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_71

    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 465
    .local v0, "vertices":[F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v1, :cond_e

    .line 466
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_16

    .line 467
    :cond_e
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v2, v0

    if-ne v1, v2, :cond_16

    .line 468
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 470
    :cond_16
    :goto_16
    add-float v1, p2, p4

    .line 471
    .local v1, "fx2":F
    add-float v2, p3, p5

    .line 473
    .local v2, "fy2":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 474
    .local v3, "color":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 475
    .local v4, "idx":I
    aput p2, v0, v4

    .line 476
    add-int/lit8 v5, v4, 0x1

    aput p3, v0, v5

    .line 477
    add-int/lit8 v5, v4, 0x2

    aput v3, v0, v5

    .line 478
    add-int/lit8 v5, v4, 0x3

    aput p6, v0, v5

    .line 479
    add-int/lit8 v5, v4, 0x4

    aput p7, v0, v5

    .line 481
    add-int/lit8 v5, v4, 0x5

    aput p2, v0, v5

    .line 482
    add-int/lit8 v5, v4, 0x6

    aput v2, v0, v5

    .line 483
    add-int/lit8 v5, v4, 0x7

    aput v3, v0, v5

    .line 484
    add-int/lit8 v5, v4, 0x8

    aput p6, v0, v5

    .line 485
    add-int/lit8 v5, v4, 0x9

    aput p9, v0, v5

    .line 487
    add-int/lit8 v5, v4, 0xa

    aput v1, v0, v5

    .line 488
    add-int/lit8 v5, v4, 0xb

    aput v2, v0, v5

    .line 489
    add-int/lit8 v5, v4, 0xc

    aput v3, v0, v5

    .line 490
    add-int/lit8 v5, v4, 0xd

    aput p8, v0, v5

    .line 491
    add-int/lit8 v5, v4, 0xe

    aput p9, v0, v5

    .line 493
    add-int/lit8 v5, v4, 0xf

    aput v1, v0, v5

    .line 494
    add-int/lit8 v5, v4, 0x10

    aput p3, v0, v5

    .line 495
    add-int/lit8 v5, v4, 0x11

    aput v3, v0, v5

    .line 496
    add-int/lit8 v5, v4, 0x12

    aput p8, v0, v5

    .line 497
    add-int/lit8 v5, v4, 0x13

    aput p7, v0, v5

    .line 498
    add-int/lit8 v5, v4, 0x14

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 499
    return-void

    .line 461
    .end local v0  # "vertices":[F
    .end local v1  # "fx2":F
    .end local v2  # "fy2":F
    .end local v3  # "color":F
    .end local v4  # "idx":I
    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .registers 48
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

    .line 226
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p11

    move/from16 v4, p12

    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v5, :cond_11f

    .line 228
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 230
    .local v5, "vertices":[F
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v7, p1

    if-eq v7, v6, :cond_1a

    .line 231
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_22

    .line 232
    :cond_1a
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v8, v5

    if-ne v6, v8, :cond_22

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 236
    :cond_22
    :goto_22
    add-float v6, p2, v1

    .line 237
    .local v6, "worldOriginX":F
    add-float v8, p3, v2

    .line 238
    .local v8, "worldOriginY":F
    neg-float v9, v1

    .line 239
    .local v9, "fx":F
    neg-float v10, v2

    .line 240
    .local v10, "fy":F
    sub-float v11, p6, v1

    .line 241
    .local v11, "fx2":F
    sub-float v12, p7, v2

    .line 244
    .local v12, "fy2":F
    const/high16 v13, 0x3f800000  # 1.0f

    cmpl-float v14, p8, v13

    if-nez v14, :cond_36

    cmpl-float v13, p9, v13

    if-eqz v13, :cond_3e

    .line 245
    :cond_36
    mul-float v9, v9, p8

    .line 246
    mul-float v10, v10, p9

    .line 247
    mul-float v11, v11, p8

    .line 248
    mul-float v12, v12, p9

    .line 252
    :cond_3e
    move v13, v9

    .line 253
    .local v13, "p1x":F
    move v14, v10

    .line 254
    .local v14, "p1y":F
    move v15, v9

    .line 255
    .local v15, "p2x":F
    move/from16 v16, v12

    .line 256
    .local v16, "p2y":F
    move/from16 v17, v11

    .line 257
    .local v17, "p3x":F
    move/from16 v18, v12

    .line 258
    .local v18, "p3y":F
    move/from16 v19, v11

    .line 259
    .local v19, "p4x":F
    move/from16 v20, v10

    .line 271
    .local v20, "p4y":F
    const/16 v21, 0x0

    cmpl-float v21, p10, v21

    if-eqz v21, :cond_86

    .line 272
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v21

    .line 273
    .local v21, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v22

    .line 275
    .local v22, "sin":F
    mul-float v23, v21, v13

    mul-float v24, v22, v14

    sub-float v23, v23, v24

    .line 276
    .local v23, "x1":F
    mul-float v24, v22, v13

    mul-float v25, v21, v14

    add-float v24, v24, v25

    .line 278
    .local v24, "y1":F
    mul-float v25, v21, v15

    mul-float v26, v22, v16

    sub-float v25, v25, v26

    .line 279
    .local v25, "x2":F
    mul-float v26, v22, v15

    mul-float v27, v21, v16

    add-float v26, v26, v27

    .line 281
    .local v26, "y2":F
    mul-float v27, v21, v17

    mul-float v28, v22, v18

    sub-float v27, v27, v28

    .line 282
    .local v27, "x3":F
    mul-float v28, v22, v17

    mul-float v29, v21, v18

    add-float v28, v28, v29

    .line 284
    .local v28, "y3":F
    sub-float v29, v27, v25

    add-float v29, v23, v29

    .line 285
    .local v29, "x4":F
    sub-float v30, v26, v24

    sub-float v21, v28, v30

    .line 286
    .end local v22  # "sin":F
    .local v21, "y4":F
    goto :goto_96

    .line 287
    .end local v21  # "y4":F
    .end local v23  # "x1":F
    .end local v24  # "y1":F
    .end local v25  # "x2":F
    .end local v26  # "y2":F
    .end local v27  # "x3":F
    .end local v28  # "y3":F
    .end local v29  # "x4":F
    :cond_86
    move/from16 v23, v13

    .line 288
    .restart local v23  # "x1":F
    move/from16 v24, v14

    .line 290
    .restart local v24  # "y1":F
    move/from16 v25, v15

    .line 291
    .restart local v25  # "x2":F
    move/from16 v26, v16

    .line 293
    .restart local v26  # "y2":F
    move/from16 v27, v17

    .line 294
    .restart local v27  # "x3":F
    move/from16 v28, v18

    .line 296
    .restart local v28  # "y3":F
    move/from16 v29, v19

    .line 297
    .restart local v29  # "x4":F
    move/from16 v21, v20

    .line 300
    .restart local v21  # "y4":F
    :goto_96
    add-float v23, v23, v6

    .line 301
    add-float v24, v24, v8

    .line 302
    add-float v25, v25, v6

    .line 303
    add-float v26, v26, v8

    .line 304
    add-float v27, v27, v6

    .line 305
    add-float v28, v28, v8

    .line 306
    add-float v29, v29, v6

    .line 307
    add-float v21, v21, v8

    .line 309
    int-to-float v1, v3

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float/2addr v1, v2

    .line 310
    .local v1, "u":F
    add-int v2, v4, p14

    int-to-float v2, v2

    move/from16 v22, v6

    .end local v6  # "worldOriginX":F
    .local v22, "worldOriginX":F
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v2, v6

    .line 311
    .local v2, "v":F
    add-int v6, v3, p13

    int-to-float v6, v6

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float/2addr v6, v3

    .line 312
    .local v6, "u2":F
    int-to-float v3, v4

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v3, v4

    .line 314
    .local v3, "v2":F
    if-eqz p15, :cond_c1

    .line 315
    move v4, v1

    .line 316
    .local v4, "tmp":F
    move v1, v6

    .line 317
    move v6, v4

    .line 320
    .end local v4  # "tmp":F
    :cond_c1
    if-eqz p16, :cond_c6

    .line 321
    move v4, v2

    .line 322
    .restart local v4  # "tmp":F
    move v2, v3

    .line 323
    move v3, v4

    .line 326
    .end local v4  # "tmp":F
    :cond_c6
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 327
    .local v4, "color":F
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 328
    .local v7, "idx":I
    aput v23, v5, v7

    .line 329
    add-int/lit8 v30, v7, 0x1

    aput v24, v5, v30

    .line 330
    add-int/lit8 v30, v7, 0x2

    aput v4, v5, v30

    .line 331
    add-int/lit8 v30, v7, 0x3

    aput v1, v5, v30

    .line 332
    add-int/lit8 v30, v7, 0x4

    aput v2, v5, v30

    .line 334
    add-int/lit8 v30, v7, 0x5

    aput v25, v5, v30

    .line 335
    add-int/lit8 v30, v7, 0x6

    aput v26, v5, v30

    .line 336
    add-int/lit8 v30, v7, 0x7

    aput v4, v5, v30

    .line 337
    add-int/lit8 v30, v7, 0x8

    aput v1, v5, v30

    .line 338
    add-int/lit8 v30, v7, 0x9

    aput v3, v5, v30

    .line 340
    add-int/lit8 v30, v7, 0xa

    aput v27, v5, v30

    .line 341
    add-int/lit8 v30, v7, 0xb

    aput v28, v5, v30

    .line 342
    add-int/lit8 v30, v7, 0xc

    aput v4, v5, v30

    .line 343
    add-int/lit8 v30, v7, 0xd

    aput v6, v5, v30

    .line 344
    add-int/lit8 v30, v7, 0xe

    aput v3, v5, v30

    .line 346
    add-int/lit8 v30, v7, 0xf

    aput v29, v5, v30

    .line 347
    add-int/lit8 v30, v7, 0x10

    aput v21, v5, v30

    .line 348
    add-int/lit8 v30, v7, 0x11

    aput v4, v5, v30

    .line 349
    add-int/lit8 v30, v7, 0x12

    aput v6, v5, v30

    .line 350
    add-int/lit8 v30, v7, 0x13

    aput v2, v5, v30

    .line 351
    move/from16 v30, v1

    .end local v1  # "u":F
    .local v30, "u":F
    add-int/lit8 v1, v7, 0x14

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 352
    return-void

    .line 226
    .end local v2  # "v":F
    .end local v3  # "v2":F
    .end local v4  # "color":F
    .end local v5  # "vertices":[F
    .end local v6  # "u2":F
    .end local v7  # "idx":I
    .end local v8  # "worldOriginY":F
    .end local v9  # "fx":F
    .end local v10  # "fy":F
    .end local v11  # "fx2":F
    .end local v12  # "fy2":F
    .end local v13  # "p1x":F
    .end local v14  # "p1y":F
    .end local v15  # "p2x":F
    .end local v16  # "p2y":F
    .end local v17  # "p3x":F
    .end local v18  # "p3y":F
    .end local v19  # "p4x":F
    .end local v20  # "p4y":F
    .end local v21  # "y4":F
    .end local v22  # "worldOriginX":F
    .end local v23  # "x1":F
    .end local v24  # "y1":F
    .end local v25  # "x2":F
    .end local v26  # "y2":F
    .end local v27  # "x3":F
    .end local v28  # "y3":F
    .end local v29  # "x4":F
    .end local v30  # "u":F
    :cond_11f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .registers 26
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

    .line 357
    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v3, :cond_95

    .line 359
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 361
    .local v3, "vertices":[F
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object v5, p1

    if-eq v5, v4, :cond_14

    .line 362
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_1c

    .line 363
    :cond_14
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v6, v3

    if-ne v4, v6, :cond_1c

    .line 364
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 366
    :cond_1c
    :goto_1c
    int-to-float v4, v1

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float/2addr v4, v6

    .line 367
    .local v4, "u":F
    add-int v6, v2, p9

    int-to-float v6, v6

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v6, v7

    .line 368
    .local v6, "v":F
    add-int v7, v1, p8

    int-to-float v7, v7

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float/2addr v7, v8

    .line 369
    .local v7, "u2":F
    int-to-float v8, v2

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v8, v9

    .line 370
    .local v8, "v2":F
    add-float v9, p2, p4

    .line 371
    .local v9, "fx2":F
    add-float v10, p3, p5

    .line 373
    .local v10, "fy2":F
    if-eqz p10, :cond_39

    .line 374
    move v11, v4

    .line 375
    .local v11, "tmp":F
    move v4, v7

    .line 376
    move v7, v11

    .line 379
    .end local v11  # "tmp":F
    :cond_39
    if-eqz p11, :cond_3e

    .line 380
    move v11, v6

    .line 381
    .restart local v11  # "tmp":F
    move v6, v8

    .line 382
    move v8, v11

    .line 385
    .end local v11  # "tmp":F
    :cond_3e
    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 386
    .local v11, "color":F
    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 387
    .local v12, "idx":I
    aput p2, v3, v12

    .line 388
    add-int/lit8 v13, v12, 0x1

    aput p3, v3, v13

    .line 389
    add-int/lit8 v13, v12, 0x2

    aput v11, v3, v13

    .line 390
    add-int/lit8 v13, v12, 0x3

    aput v4, v3, v13

    .line 391
    add-int/lit8 v13, v12, 0x4

    aput v6, v3, v13

    .line 393
    add-int/lit8 v13, v12, 0x5

    aput p2, v3, v13

    .line 394
    add-int/lit8 v13, v12, 0x6

    aput v10, v3, v13

    .line 395
    add-int/lit8 v13, v12, 0x7

    aput v11, v3, v13

    .line 396
    add-int/lit8 v13, v12, 0x8

    aput v4, v3, v13

    .line 397
    add-int/lit8 v13, v12, 0x9

    aput v8, v3, v13

    .line 399
    add-int/lit8 v13, v12, 0xa

    aput v9, v3, v13

    .line 400
    add-int/lit8 v13, v12, 0xb

    aput v10, v3, v13

    .line 401
    add-int/lit8 v13, v12, 0xc

    aput v11, v3, v13

    .line 402
    add-int/lit8 v13, v12, 0xd

    aput v7, v3, v13

    .line 403
    add-int/lit8 v13, v12, 0xe

    aput v8, v3, v13

    .line 405
    add-int/lit8 v13, v12, 0xf

    aput v9, v3, v13

    .line 406
    add-int/lit8 v13, v12, 0x10

    aput p3, v3, v13

    .line 407
    add-int/lit8 v13, v12, 0x11

    aput v11, v3, v13

    .line 408
    add-int/lit8 v13, v12, 0x12

    aput v7, v3, v13

    .line 409
    add-int/lit8 v13, v12, 0x13

    aput v6, v3, v13

    .line 410
    add-int/lit8 v13, v12, 0x14

    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 411
    return-void

    .line 357
    .end local v3  # "vertices":[F
    .end local v4  # "u":F
    .end local v6  # "v":F
    .end local v7  # "u2":F
    .end local v8  # "v2":F
    .end local v9  # "fx2":F
    .end local v10  # "fy2":F
    .end local v11  # "color":F
    .end local v12  # "idx":I
    :cond_95
    move-object v5, p1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SpriteBatch.begin must be called before draw."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .registers 24
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "srcX"  # I
    .param p5, "srcY"  # I
    .param p6, "srcWidth"  # I
    .param p7, "srcHeight"  # I

    .line 415
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v5, :cond_93

    .line 417
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 419
    .local v5, "vertices":[F
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v7, p1

    if-eq v7, v6, :cond_1a

    .line 420
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_22

    .line 421
    :cond_1a
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v8, v5

    if-ne v6, v8, :cond_22

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 424
    :cond_22
    :goto_22
    int-to-float v6, v1

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float/2addr v6, v8

    .line 425
    .local v6, "u":F
    add-int v8, v2, v4

    int-to-float v8, v8

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v8, v9

    .line 426
    .local v8, "v":F
    add-int v9, v1, v3

    int-to-float v9, v9

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float/2addr v9, v10

    .line 427
    .local v9, "u2":F
    int-to-float v10, v2

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v10, v11

    .line 428
    .local v10, "v2":F
    int-to-float v11, v3

    add-float v11, p2, v11

    .line 429
    .local v11, "fx2":F
    int-to-float v12, v4

    add-float v12, p3, v12

    .line 431
    .local v12, "fy2":F
    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 432
    .local v13, "color":F
    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 433
    .local v14, "idx":I
    aput p2, v5, v14

    .line 434
    add-int/lit8 v15, v14, 0x1

    aput p3, v5, v15

    .line 435
    add-int/lit8 v15, v14, 0x2

    aput v13, v5, v15

    .line 436
    add-int/lit8 v15, v14, 0x3

    aput v6, v5, v15

    .line 437
    add-int/lit8 v15, v14, 0x4

    aput v8, v5, v15

    .line 439
    add-int/lit8 v15, v14, 0x5

    aput p2, v5, v15

    .line 440
    add-int/lit8 v15, v14, 0x6

    aput v12, v5, v15

    .line 441
    add-int/lit8 v15, v14, 0x7

    aput v13, v5, v15

    .line 442
    add-int/lit8 v15, v14, 0x8

    aput v6, v5, v15

    .line 443
    add-int/lit8 v15, v14, 0x9

    aput v10, v5, v15

    .line 445
    add-int/lit8 v15, v14, 0xa

    aput v11, v5, v15

    .line 446
    add-int/lit8 v15, v14, 0xb

    aput v12, v5, v15

    .line 447
    add-int/lit8 v15, v14, 0xc

    aput v13, v5, v15

    .line 448
    add-int/lit8 v15, v14, 0xd

    aput v9, v5, v15

    .line 449
    add-int/lit8 v15, v14, 0xe

    aput v10, v5, v15

    .line 451
    add-int/lit8 v15, v14, 0xf

    aput v11, v5, v15

    .line 452
    add-int/lit8 v15, v14, 0x10

    aput p3, v5, v15

    .line 453
    add-int/lit8 v15, v14, 0x11

    aput v13, v5, v15

    .line 454
    add-int/lit8 v15, v14, 0x12

    aput v9, v5, v15

    .line 455
    add-int/lit8 v15, v14, 0x13

    aput v8, v5, v15

    .line 456
    add-int/lit8 v15, v14, 0x14

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 457
    return-void

    .line 415
    .end local v5  # "vertices":[F
    .end local v6  # "u":F
    .end local v8  # "v":F
    .end local v9  # "u2":F
    .end local v10  # "v2":F
    .end local v11  # "fx2":F
    .end local v12  # "fy2":F
    .end local v13  # "color":F
    .end local v14  # "idx":I
    :cond_93
    move-object/from16 v7, p1

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "SpriteBatch.begin must be called before draw."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .registers 10
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "spriteVertices"  # [F
    .param p3, "offset"  # I
    .param p4, "count"  # I

    .line 554
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_42

    .line 556
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v0, v0

    .line 557
    .local v0, "verticesLength":I
    move v1, v0

    .line 558
    .local v1, "remainingVertices":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v2, :cond_10

    .line 559
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_19

    .line 561
    :cond_10
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    sub-int/2addr v1, v2

    .line 562
    if-nez v1, :cond_19

    .line 563
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 564
    move v1, v0

    .line 567
    :cond_19
    :goto_19
    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 569
    .local v2, "copyCount":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    invoke-static {p2, p3, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 571
    sub-int/2addr p4, v2

    .line 572
    :goto_2a
    if-lez p4, :cond_41

    .line 573
    add-int/2addr p3, v2

    .line 574
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 575
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 576
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    const/4 v4, 0x0

    invoke-static {p2, p3, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 578
    sub-int/2addr p4, v2

    goto :goto_2a

    .line 580
    :cond_41
    return-void

    .line 554
    .end local v0  # "verticesLength":I
    .end local v1  # "remainingVertices":I
    .end local v2  # "copyCount":I
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .registers 11
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 584
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

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 585
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .registers 19
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 589
    move-object v0, p0

    move-object v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v2, :cond_7d

    .line 591
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 593
    .local v2, "vertices":[F
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 594
    .local v3, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v3, v4, :cond_12

    .line 595
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_1a

    .line 596
    :cond_12
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v5, v2

    if-ne v4, v5, :cond_1a

    .line 597
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 599
    :cond_1a
    :goto_1a
    add-float v4, p2, p4

    .line 600
    .local v4, "fx2":F
    add-float v5, p3, p5

    .line 601
    .local v5, "fy2":F
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 602
    .local v6, "u":F
    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 603
    .local v7, "v":F
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 604
    .local v8, "u2":F
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 606
    .local v9, "v2":F
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 607
    .local v10, "color":F
    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 608
    .local v11, "idx":I
    aput p2, v2, v11

    .line 609
    add-int/lit8 v12, v11, 0x1

    aput p3, v2, v12

    .line 610
    add-int/lit8 v12, v11, 0x2

    aput v10, v2, v12

    .line 611
    add-int/lit8 v12, v11, 0x3

    aput v6, v2, v12

    .line 612
    add-int/lit8 v12, v11, 0x4

    aput v7, v2, v12

    .line 614
    add-int/lit8 v12, v11, 0x5

    aput p2, v2, v12

    .line 615
    add-int/lit8 v12, v11, 0x6

    aput v5, v2, v12

    .line 616
    add-int/lit8 v12, v11, 0x7

    aput v10, v2, v12

    .line 617
    add-int/lit8 v12, v11, 0x8

    aput v6, v2, v12

    .line 618
    add-int/lit8 v12, v11, 0x9

    aput v9, v2, v12

    .line 620
    add-int/lit8 v12, v11, 0xa

    aput v4, v2, v12

    .line 621
    add-int/lit8 v12, v11, 0xb

    aput v5, v2, v12

    .line 622
    add-int/lit8 v12, v11, 0xc

    aput v10, v2, v12

    .line 623
    add-int/lit8 v12, v11, 0xd

    aput v8, v2, v12

    .line 624
    add-int/lit8 v12, v11, 0xe

    aput v9, v2, v12

    .line 626
    add-int/lit8 v12, v11, 0xf

    aput v4, v2, v12

    .line 627
    add-int/lit8 v12, v11, 0x10

    aput p3, v2, v12

    .line 628
    add-int/lit8 v12, v11, 0x11

    aput v10, v2, v12

    .line 629
    add-int/lit8 v12, v11, 0x12

    aput v8, v2, v12

    .line 630
    add-int/lit8 v12, v11, 0x13

    aput v7, v2, v12

    .line 631
    add-int/lit8 v12, v11, 0x14

    iput v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 632
    return-void

    .line 589
    .end local v2  # "vertices":[F
    .end local v3  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v4  # "fx2":F
    .end local v5  # "fy2":F
    .end local v6  # "u":F
    .end local v7  # "v":F
    .end local v8  # "u2":F
    .end local v9  # "v2":F
    .end local v10  # "color":F
    .end local v11  # "idx":I
    :cond_7d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SpriteBatch.begin must be called before draw."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .registers 43
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

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v4, :cond_10a

    .line 639
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 641
    .local v4, "vertices":[F
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 642
    .local v5, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v6, :cond_18

    .line 643
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_20

    .line 644
    :cond_18
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v7, v4

    if-ne v6, v7, :cond_20

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 648
    :cond_20
    :goto_20
    add-float v6, p2, v2

    .line 649
    .local v6, "worldOriginX":F
    add-float v7, p3, v3

    .line 650
    .local v7, "worldOriginY":F
    neg-float v8, v2

    .line 651
    .local v8, "fx":F
    neg-float v9, v3

    .line 652
    .local v9, "fy":F
    sub-float v10, p6, v2

    .line 653
    .local v10, "fx2":F
    sub-float v11, p7, v3

    .line 656
    .local v11, "fy2":F
    const/high16 v12, 0x3f800000  # 1.0f

    cmpl-float v13, p8, v12

    if-nez v13, :cond_34

    cmpl-float v12, p9, v12

    if-eqz v12, :cond_3c

    .line 657
    :cond_34
    mul-float v8, v8, p8

    .line 658
    mul-float v9, v9, p9

    .line 659
    mul-float v10, v10, p8

    .line 660
    mul-float v11, v11, p9

    .line 664
    :cond_3c
    move v12, v8

    .line 665
    .local v12, "p1x":F
    move v13, v9

    .line 666
    .local v13, "p1y":F
    move v14, v8

    .line 667
    .local v14, "p2x":F
    move v15, v11

    .line 668
    .local v15, "p2y":F
    move/from16 v16, v10

    .line 669
    .local v16, "p3x":F
    move/from16 v17, v11

    .line 670
    .local v17, "p3y":F
    move/from16 v18, v10

    .line 671
    .local v18, "p4x":F
    move/from16 v19, v9

    .line 683
    .local v19, "p4y":F
    const/16 v20, 0x0

    cmpl-float v20, p10, v20

    if-eqz v20, :cond_83

    .line 684
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v20

    .line 685
    .local v20, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v21

    .line 687
    .local v21, "sin":F
    mul-float v22, v20, v12

    mul-float v23, v21, v13

    sub-float v22, v22, v23

    .line 688
    .local v22, "x1":F
    mul-float v23, v21, v12

    mul-float v24, v20, v13

    add-float v23, v23, v24

    .line 690
    .local v23, "y1":F
    mul-float v24, v20, v14

    mul-float v25, v21, v15

    sub-float v24, v24, v25

    .line 691
    .local v24, "x2":F
    mul-float v25, v21, v14

    mul-float v26, v20, v15

    add-float v25, v25, v26

    .line 693
    .local v25, "y2":F
    mul-float v26, v20, v16

    mul-float v27, v21, v17

    sub-float v26, v26, v27

    .line 694
    .local v26, "x3":F
    mul-float v27, v21, v16

    mul-float v28, v20, v17

    add-float v27, v27, v28

    .line 696
    .local v27, "y3":F
    sub-float v28, v26, v24

    add-float v28, v22, v28

    .line 697
    .local v28, "x4":F
    sub-float v29, v25, v23

    sub-float v20, v27, v29

    .line 698
    .end local v21  # "sin":F
    .local v20, "y4":F
    goto :goto_93

    .line 699
    .end local v20  # "y4":F
    .end local v22  # "x1":F
    .end local v23  # "y1":F
    .end local v24  # "x2":F
    .end local v25  # "y2":F
    .end local v26  # "x3":F
    .end local v27  # "y3":F
    .end local v28  # "x4":F
    :cond_83
    move/from16 v22, v12

    .line 700
    .restart local v22  # "x1":F
    move/from16 v23, v13

    .line 702
    .restart local v23  # "y1":F
    move/from16 v24, v14

    .line 703
    .restart local v24  # "x2":F
    move/from16 v25, v15

    .line 705
    .restart local v25  # "y2":F
    move/from16 v26, v16

    .line 706
    .restart local v26  # "x3":F
    move/from16 v27, v17

    .line 708
    .restart local v27  # "y3":F
    move/from16 v28, v18

    .line 709
    .restart local v28  # "x4":F
    move/from16 v20, v19

    .line 712
    .restart local v20  # "y4":F
    :goto_93
    add-float v22, v22, v6

    .line 713
    add-float v23, v23, v7

    .line 714
    add-float v24, v24, v6

    .line 715
    add-float v25, v25, v7

    .line 716
    add-float v26, v26, v6

    .line 717
    add-float v27, v27, v7

    .line 718
    add-float v28, v28, v6

    .line 719
    add-float v20, v20, v7

    .line 721
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 722
    .local v2, "u":F
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 723
    .local v3, "v":F
    move-object/from16 v21, v5

    .end local v5  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .local v21, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 724
    .local v5, "u2":F
    move/from16 v29, v6

    .end local v6  # "worldOriginX":F
    .local v29, "worldOriginX":F
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 726
    .local v6, "v2":F
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 727
    .local v1, "color":F
    move/from16 v30, v7

    .end local v7  # "worldOriginY":F
    .local v30, "worldOriginY":F
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 728
    .local v7, "idx":I
    aput v22, v4, v7

    .line 729
    add-int/lit8 v31, v7, 0x1

    aput v23, v4, v31

    .line 730
    add-int/lit8 v31, v7, 0x2

    aput v1, v4, v31

    .line 731
    add-int/lit8 v31, v7, 0x3

    aput v2, v4, v31

    .line 732
    add-int/lit8 v31, v7, 0x4

    aput v3, v4, v31

    .line 734
    add-int/lit8 v31, v7, 0x5

    aput v24, v4, v31

    .line 735
    add-int/lit8 v31, v7, 0x6

    aput v25, v4, v31

    .line 736
    add-int/lit8 v31, v7, 0x7

    aput v1, v4, v31

    .line 737
    add-int/lit8 v31, v7, 0x8

    aput v2, v4, v31

    .line 738
    add-int/lit8 v31, v7, 0x9

    aput v6, v4, v31

    .line 740
    add-int/lit8 v31, v7, 0xa

    aput v26, v4, v31

    .line 741
    add-int/lit8 v31, v7, 0xb

    aput v27, v4, v31

    .line 742
    add-int/lit8 v31, v7, 0xc

    aput v1, v4, v31

    .line 743
    add-int/lit8 v31, v7, 0xd

    aput v5, v4, v31

    .line 744
    add-int/lit8 v31, v7, 0xe

    aput v6, v4, v31

    .line 746
    add-int/lit8 v31, v7, 0xf

    aput v28, v4, v31

    .line 747
    add-int/lit8 v31, v7, 0x10

    aput v20, v4, v31

    .line 748
    add-int/lit8 v31, v7, 0x11

    aput v1, v4, v31

    .line 749
    add-int/lit8 v31, v7, 0x12

    aput v5, v4, v31

    .line 750
    add-int/lit8 v31, v7, 0x13

    aput v3, v4, v31

    .line 751
    move/from16 v31, v1

    .end local v1  # "color":F
    .local v31, "color":F
    add-int/lit8 v1, v7, 0x14

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 752
    return-void

    .line 637
    .end local v2  # "u":F
    .end local v3  # "v":F
    .end local v4  # "vertices":[F
    .end local v5  # "u2":F
    .end local v6  # "v2":F
    .end local v7  # "idx":I
    .end local v8  # "fx":F
    .end local v9  # "fy":F
    .end local v10  # "fx2":F
    .end local v11  # "fy2":F
    .end local v12  # "p1x":F
    .end local v13  # "p1y":F
    .end local v14  # "p2x":F
    .end local v15  # "p2y":F
    .end local v16  # "p3x":F
    .end local v17  # "p3y":F
    .end local v18  # "p4x":F
    .end local v19  # "p4y":F
    .end local v20  # "y4":F
    .end local v21  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v22  # "x1":F
    .end local v23  # "y1":F
    .end local v24  # "x2":F
    .end local v25  # "y2":F
    .end local v26  # "x3":F
    .end local v27  # "y3":F
    .end local v28  # "x4":F
    .end local v29  # "worldOriginX":F
    .end local v30  # "worldOriginY":F
    .end local v31  # "color":F
    :cond_10a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .registers 49
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

    .line 757
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v4, :cond_147

    .line 759
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 761
    .local v4, "vertices":[F
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 762
    .local v5, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v6, :cond_18

    .line 763
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_20

    .line 764
    :cond_18
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v7, v4

    if-ne v6, v7, :cond_20

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 768
    :cond_20
    :goto_20
    add-float v6, p2, v2

    .line 769
    .local v6, "worldOriginX":F
    add-float v7, p3, v3

    .line 770
    .local v7, "worldOriginY":F
    neg-float v8, v2

    .line 771
    .local v8, "fx":F
    neg-float v9, v3

    .line 772
    .local v9, "fy":F
    sub-float v10, p6, v2

    .line 773
    .local v10, "fx2":F
    sub-float v11, p7, v3

    .line 776
    .local v11, "fy2":F
    const/high16 v12, 0x3f800000  # 1.0f

    cmpl-float v13, p8, v12

    if-nez v13, :cond_34

    cmpl-float v12, p9, v12

    if-eqz v12, :cond_3c

    .line 777
    :cond_34
    mul-float v8, v8, p8

    .line 778
    mul-float v9, v9, p9

    .line 779
    mul-float v10, v10, p8

    .line 780
    mul-float v11, v11, p9

    .line 784
    :cond_3c
    move v12, v8

    .line 785
    .local v12, "p1x":F
    move v13, v9

    .line 786
    .local v13, "p1y":F
    move v14, v8

    .line 787
    .local v14, "p2x":F
    move v15, v11

    .line 788
    .local v15, "p2y":F
    move/from16 v16, v10

    .line 789
    .local v16, "p3x":F
    move/from16 v17, v11

    .line 790
    .local v17, "p3y":F
    move/from16 v18, v10

    .line 791
    .local v18, "p4x":F
    move/from16 v19, v9

    .line 803
    .local v19, "p4y":F
    const/16 v20, 0x0

    cmpl-float v20, p10, v20

    if-eqz v20, :cond_83

    .line 804
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v20

    .line 805
    .local v20, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v21

    .line 807
    .local v21, "sin":F
    mul-float v22, v20, v12

    mul-float v23, v21, v13

    sub-float v22, v22, v23

    .line 808
    .local v22, "x1":F
    mul-float v23, v21, v12

    mul-float v24, v20, v13

    add-float v23, v23, v24

    .line 810
    .local v23, "y1":F
    mul-float v24, v20, v14

    mul-float v25, v21, v15

    sub-float v24, v24, v25

    .line 811
    .local v24, "x2":F
    mul-float v25, v21, v14

    mul-float v26, v20, v15

    add-float v25, v25, v26

    .line 813
    .local v25, "y2":F
    mul-float v26, v20, v16

    mul-float v27, v21, v17

    sub-float v26, v26, v27

    .line 814
    .local v26, "x3":F
    mul-float v27, v21, v16

    mul-float v28, v20, v17

    add-float v27, v27, v28

    .line 816
    .local v27, "y3":F
    sub-float v28, v26, v24

    add-float v28, v22, v28

    .line 817
    .local v28, "x4":F
    sub-float v29, v25, v23

    sub-float v20, v27, v29

    .line 818
    .end local v21  # "sin":F
    .local v20, "y4":F
    goto :goto_93

    .line 819
    .end local v20  # "y4":F
    .end local v22  # "x1":F
    .end local v23  # "y1":F
    .end local v24  # "x2":F
    .end local v25  # "y2":F
    .end local v26  # "x3":F
    .end local v27  # "y3":F
    .end local v28  # "x4":F
    :cond_83
    move/from16 v22, v12

    .line 820
    .restart local v22  # "x1":F
    move/from16 v23, v13

    .line 822
    .restart local v23  # "y1":F
    move/from16 v24, v14

    .line 823
    .restart local v24  # "x2":F
    move/from16 v25, v15

    .line 825
    .restart local v25  # "y2":F
    move/from16 v26, v16

    .line 826
    .restart local v26  # "x3":F
    move/from16 v27, v17

    .line 828
    .restart local v27  # "y3":F
    move/from16 v28, v18

    .line 829
    .restart local v28  # "x4":F
    move/from16 v20, v19

    .line 832
    .restart local v20  # "y4":F
    :goto_93
    add-float v22, v22, v6

    .line 833
    add-float v23, v23, v7

    .line 834
    add-float v24, v24, v6

    .line 835
    add-float v25, v25, v7

    .line 836
    add-float v26, v26, v6

    .line 837
    add-float v27, v27, v7

    .line 838
    add-float v28, v28, v6

    .line 839
    add-float v20, v20, v7

    .line 842
    if-eqz p11, :cond_ca

    .line 843
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 844
    .local v2, "u1":F
    move/from16 v21, v2

    .end local v2  # "u1":F
    .local v21, "u1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 845
    .local v2, "v1":F
    move/from16 v29, v2

    .end local v2  # "v1":F
    .local v29, "v1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 846
    .local v2, "u2":F
    move/from16 v30, v2

    .end local v2  # "u2":F
    .local v30, "u2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 847
    .local v2, "v2":F
    move/from16 v31, v2

    .end local v2  # "v2":F
    .local v31, "v2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 848
    .local v2, "u3":F
    move/from16 v32, v2

    .end local v2  # "u3":F
    .local v32, "u3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 849
    .local v2, "v3":F
    move/from16 v33, v2

    .end local v2  # "v3":F
    .local v33, "v3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 850
    .local v2, "u4":F
    move/from16 v34, v2

    .end local v2  # "u4":F
    .local v34, "u4":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v36, v21

    move/from16 v21, v2

    move/from16 v2, v36

    .local v2, "v4":F
    goto :goto_ee

    .line 852
    .end local v2  # "v4":F
    .end local v21  # "u1":F
    .end local v29  # "v1":F
    .end local v30  # "u2":F
    .end local v31  # "v2":F
    .end local v32  # "u3":F
    .end local v33  # "v3":F
    .end local v34  # "u4":F
    :cond_ca
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 853
    .local v2, "u1":F
    move/from16 v21, v2

    .end local v2  # "u1":F
    .restart local v21  # "u1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 854
    .local v2, "v1":F
    move/from16 v29, v2

    .end local v2  # "v1":F
    .restart local v29  # "v1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 855
    .local v2, "u2":F
    move/from16 v30, v2

    .end local v2  # "u2":F
    .restart local v30  # "u2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 856
    .local v2, "v2":F
    move/from16 v31, v2

    .end local v2  # "v2":F
    .restart local v31  # "v2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 857
    .local v2, "u3":F
    move/from16 v32, v2

    .end local v2  # "u3":F
    .restart local v32  # "u3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 858
    .local v2, "v3":F
    move/from16 v33, v2

    .end local v2  # "v3":F
    .restart local v33  # "v3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 859
    .local v2, "u4":F
    move/from16 v34, v2

    .end local v2  # "u4":F
    .restart local v34  # "u4":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v36, v21

    move/from16 v21, v2

    move/from16 v2, v36

    .line 862
    .local v2, "u1":F
    .local v21, "v4":F
    :goto_ee
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 863
    .local v1, "color":F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 864
    .local v3, "idx":I
    aput v22, v4, v3

    .line 865
    add-int/lit8 v35, v3, 0x1

    aput v23, v4, v35

    .line 866
    add-int/lit8 v35, v3, 0x2

    aput v1, v4, v35

    .line 867
    add-int/lit8 v35, v3, 0x3

    aput v2, v4, v35

    .line 868
    add-int/lit8 v35, v3, 0x4

    aput v29, v4, v35

    .line 870
    add-int/lit8 v35, v3, 0x5

    aput v24, v4, v35

    .line 871
    add-int/lit8 v35, v3, 0x6

    aput v25, v4, v35

    .line 872
    add-int/lit8 v35, v3, 0x7

    aput v1, v4, v35

    .line 873
    add-int/lit8 v35, v3, 0x8

    aput v30, v4, v35

    .line 874
    add-int/lit8 v35, v3, 0x9

    aput v31, v4, v35

    .line 876
    add-int/lit8 v35, v3, 0xa

    aput v26, v4, v35

    .line 877
    add-int/lit8 v35, v3, 0xb

    aput v27, v4, v35

    .line 878
    add-int/lit8 v35, v3, 0xc

    aput v1, v4, v35

    .line 879
    add-int/lit8 v35, v3, 0xd

    aput v32, v4, v35

    .line 880
    add-int/lit8 v35, v3, 0xe

    aput v33, v4, v35

    .line 882
    add-int/lit8 v35, v3, 0xf

    aput v28, v4, v35

    .line 883
    add-int/lit8 v35, v3, 0x10

    aput v20, v4, v35

    .line 884
    add-int/lit8 v35, v3, 0x11

    aput v1, v4, v35

    .line 885
    add-int/lit8 v35, v3, 0x12

    aput v34, v4, v35

    .line 886
    add-int/lit8 v35, v3, 0x13

    aput v21, v4, v35

    .line 887
    move/from16 v35, v1

    .end local v1  # "color":F
    .local v35, "color":F
    add-int/lit8 v1, v3, 0x14

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 888
    return-void

    .line 757
    .end local v2  # "u1":F
    .end local v3  # "idx":I
    .end local v4  # "vertices":[F
    .end local v5  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v6  # "worldOriginX":F
    .end local v7  # "worldOriginY":F
    .end local v8  # "fx":F
    .end local v9  # "fy":F
    .end local v10  # "fx2":F
    .end local v11  # "fy2":F
    .end local v12  # "p1x":F
    .end local v13  # "p1y":F
    .end local v14  # "p2x":F
    .end local v15  # "p2y":F
    .end local v16  # "p3x":F
    .end local v17  # "p3y":F
    .end local v18  # "p4x":F
    .end local v19  # "p4y":F
    .end local v20  # "y4":F
    .end local v21  # "v4":F
    .end local v22  # "x1":F
    .end local v23  # "y1":F
    .end local v24  # "x2":F
    .end local v25  # "y2":F
    .end local v26  # "x3":F
    .end local v27  # "y3":F
    .end local v28  # "x4":F
    .end local v29  # "v1":F
    .end local v30  # "u2":F
    .end local v31  # "v2":F
    .end local v32  # "u3":F
    .end local v33  # "v3":F
    .end local v34  # "u4":F
    .end local v35  # "color":F
    :cond_147
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .registers 23
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "width"  # F
    .param p3, "height"  # F
    .param p4, "transform"  # Lcom/badlogic/gdx/math/Affine2;

    .line 892
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v3, :cond_b9

    .line 894
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 896
    .local v3, "vertices":[F
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 897
    .local v4, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v4, v5, :cond_16

    .line 898
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_1e

    .line 899
    :cond_16
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    array-length v6, v3

    if-ne v5, v6, :cond_1e

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 904
    :cond_1e
    :goto_1e
    iget v5, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 905
    .local v5, "x1":F
    iget v6, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 906
    .local v6, "y1":F
    iget v7, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v7, v7, p3

    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v7, v8

    .line 907
    .local v7, "x2":F
    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v8, v8, p3

    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v8, v9

    .line 908
    .local v8, "y2":F
    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v9, v9, p2

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v10, v10, p3

    add-float/2addr v9, v10

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v9, v10

    .line 909
    .local v9, "x3":F
    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v10, v10, p2

    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v11, v11, p3

    add-float/2addr v10, v11

    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v10, v11

    .line 910
    .local v10, "y3":F
    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v11, v11, p2

    iget v12, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v11, v12

    .line 911
    .local v11, "x4":F
    iget v12, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v12, v12, p2

    iget v13, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v12, v13

    .line 913
    .local v12, "y4":F
    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 914
    .local v13, "u":F
    iget v14, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 915
    .local v14, "v":F
    iget v15, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 916
    .local v15, "u2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 918
    .local v2, "v2":F
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 919
    .local v1, "color":F
    move-object/from16 v16, v4

    .end local v4  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .local v16, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 920
    .local v4, "idx":I
    aput v5, v3, v4

    .line 921
    add-int/lit8 v17, v4, 0x1

    aput v6, v3, v17

    .line 922
    add-int/lit8 v17, v4, 0x2

    aput v1, v3, v17

    .line 923
    add-int/lit8 v17, v4, 0x3

    aput v13, v3, v17

    .line 924
    add-int/lit8 v17, v4, 0x4

    aput v14, v3, v17

    .line 926
    add-int/lit8 v17, v4, 0x5

    aput v7, v3, v17

    .line 927
    add-int/lit8 v17, v4, 0x6

    aput v8, v3, v17

    .line 928
    add-int/lit8 v17, v4, 0x7

    aput v1, v3, v17

    .line 929
    add-int/lit8 v17, v4, 0x8

    aput v13, v3, v17

    .line 930
    add-int/lit8 v17, v4, 0x9

    aput v2, v3, v17

    .line 932
    add-int/lit8 v17, v4, 0xa

    aput v9, v3, v17

    .line 933
    add-int/lit8 v17, v4, 0xb

    aput v10, v3, v17

    .line 934
    add-int/lit8 v17, v4, 0xc

    aput v1, v3, v17

    .line 935
    add-int/lit8 v17, v4, 0xd

    aput v15, v3, v17

    .line 936
    add-int/lit8 v17, v4, 0xe

    aput v2, v3, v17

    .line 938
    add-int/lit8 v17, v4, 0xf

    aput v11, v3, v17

    .line 939
    add-int/lit8 v17, v4, 0x10

    aput v12, v3, v17

    .line 940
    add-int/lit8 v17, v4, 0x11

    aput v1, v3, v17

    .line 941
    add-int/lit8 v17, v4, 0x12

    aput v15, v3, v17

    .line 942
    add-int/lit8 v17, v4, 0x13

    aput v14, v3, v17

    .line 943
    move/from16 v17, v1

    .end local v1  # "color":F
    .local v17, "color":F
    add-int/lit8 v1, v4, 0x14

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 944
    return-void

    .line 892
    .end local v2  # "v2":F
    .end local v3  # "vertices":[F
    .end local v4  # "idx":I
    .end local v5  # "x1":F
    .end local v6  # "y1":F
    .end local v7  # "x2":F
    .end local v8  # "y2":F
    .end local v9  # "x3":F
    .end local v10  # "y3":F
    .end local v11  # "x4":F
    .end local v12  # "y4":F
    .end local v13  # "u":F
    .end local v14  # "v":F
    .end local v15  # "u2":F
    .end local v16  # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v17  # "color":F
    :cond_b9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableBlending()V
    .registers 2

    .line 983
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-nez v0, :cond_5

    return-void

    .line 984
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 986
    return-void
.end method

.method public end()V
    .registers 3

    .line 185
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_23

    .line 186
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    if-lez v0, :cond_b

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 187
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 190
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 191
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->isBlendingEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 193
    :cond_22
    return-void

    .line 185
    .end local v0  # "gl":Lcom/badlogic/gdx/graphics/GL20;
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteBatch.begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 10

    .line 948
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    if-nez v0, :cond_5

    return-void

    .line 950
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 951
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    .line 952
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    div-int/lit8 v0, v0, 0x14

    .line 953
    .local v0, "spritesInBatch":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    if-le v0, v1, :cond_1b

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    .line 954
    :cond_1b
    mul-int/lit8 v1, v0, 0x6

    .line 956
    .local v1, "count":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 957
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 958
    .local v2, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 959
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 960
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 962
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    const/16 v4, 0xbe2

    if-eqz v3, :cond_46

    .line 963
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_5d

    .line 965
    :cond_46
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 966
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5d

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFuncAlpha:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFuncAlpha:I

    invoke-interface {v3, v4, v6, v7, v8}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFuncSeparate(IIII)V

    .line 969
    :cond_5d
    :goto_5d
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    goto :goto_66

    :cond_64
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :goto_66
    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 971
    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 972
    return-void
.end method

.method public getBlendDstFunc()I
    .registers 2

    .line 1011
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    return v0
.end method

.method public getBlendDstFuncAlpha()I
    .registers 2

    .line 1021
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFuncAlpha:I

    return v0
.end method

.method public getBlendSrcFunc()I
    .registers 2

    .line 1006
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    return v0
.end method

.method public getBlendSrcFuncAlpha()I
    .registers 2

    .line 1016
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFuncAlpha:I

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getPackedColor()F
    .registers 2

    .line 220
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .registers 2

    .line 1032
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .registers 2

    .line 1089
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v0, :cond_7

    .line 1090
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0

    .line 1092
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .registers 2

    .line 1037
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .registers 2

    .line 1097
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDrawing()Z
    .registers 2

    .line 1101
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    return v0
.end method

.method public setBlendFunction(II)V
    .registers 3
    .param p1, "srcFunc"  # I
    .param p2, "dstFunc"  # I

    .line 990
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunctionSeparate(IIII)V

    .line 991
    return-void
.end method

.method public setBlendFunctionSeparate(IIII)V
    .registers 6
    .param p1, "srcFuncColor"  # I
    .param p2, "dstFuncColor"  # I
    .param p3, "srcFuncAlpha"  # I
    .param p4, "dstFuncAlpha"  # I

    .line 995
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    if-ne v0, p1, :cond_11

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    if-ne v0, p2, :cond_11

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFuncAlpha:I

    if-ne v0, p3, :cond_11

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFuncAlpha:I

    if-ne v0, p4, :cond_11

    .line 996
    return-void

    .line 997
    :cond_11
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 998
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    .line 999
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    .line 1000
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFuncAlpha:I

    .line 1001
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFuncAlpha:I

    .line 1002
    return-void
.end method

.method public setColor(FFFF)V
    .registers 6
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F
    .param p4, "a"  # F

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 205
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 198
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 199
    return-void
.end method

.method public setPackedColor(F)V
    .registers 3
    .param p1, "packedColor"  # F

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 215
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->colorPacked:F

    .line 216
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 3
    .param p1, "projection"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 1042
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1043
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1044
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 1045
    :cond_13
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 3
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1074
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_7

    .line 1075
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1077
    :cond_7
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1078
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_1f

    .line 1079
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_17

    .line 1080
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    goto :goto_1c

    .line 1082
    :cond_17
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 1083
    :goto_1c
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 1085
    :cond_1f
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 3
    .param p1, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 1049
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1050
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1051
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 1052
    :cond_13
    return-void
.end method

.method protected setupMatrices()V
    .registers 6

    .line 1055
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1056
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    const-string v2, "u_texture"

    const-string v3, "u_projTrans"

    if-eqz v0, :cond_23

    .line 1057
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1058
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_2f

    .line 1060
    :cond_23
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1061
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 1063
    :goto_2f
    return-void
.end method

.method protected switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .registers 4
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;

    .line 1066
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1067
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1068
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 1069
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 1070
    return-void
.end method
