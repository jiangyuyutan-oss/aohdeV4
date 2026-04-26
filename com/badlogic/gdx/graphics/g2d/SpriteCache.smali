.class public Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
.super Ljava/lang/Object;
.source "SpriteCache.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    }
.end annotation


# static fields
.field private static final tempVertices:[F


# instance fields
.field private caches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;",
            ">;"
        }
    .end annotation
.end field

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private colorPacked:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private final counts:Lcom/badlogic/gdx/utils/IntArray;

.field private currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private drawing:Z

.field private final mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private final textures:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    const/16 v0, 0x1e

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 98
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    .line 99
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;Z)V
    .registers 14
    .param p1, "size"  # I
    .param p2, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p3, "useIndices"  # Z

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    .line 83
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    .line 85
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 86
    sget v0, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 94
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    .line 114
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 116
    if-eqz p3, :cond_66

    const/16 v1, 0x1fff

    if-gt p1, v1, :cond_4d

    goto :goto_66

    :cond_4d
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

    .line 118
    :cond_66
    :goto_66
    new-instance v1, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v2, 0x4

    if-eqz p3, :cond_6d

    move v3, v2

    goto :goto_6e

    :cond_6d
    const/4 v3, 0x6

    :goto_6e
    mul-int/2addr v3, p1

    if-eqz p3, :cond_74

    mul-int/lit8 v4, p1, 0x6

    goto :goto_75

    :cond_74
    move v4, v0

    :goto_75
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_position"

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v0

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_color"

    invoke-direct {v6, v2, v2, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v8

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v6, 0x10

    const-string v7, "a_texCoord0"

    invoke-direct {v2, v6, v9, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v5, v9

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 122
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->setAutoBind(Z)V

    .line 124
    if-eqz p3, :cond_da

    .line 125
    mul-int/lit8 v0, p1, 0x6

    .line 126
    .local v0, "length":I
    new-array v1, v0, [S

    .line 127
    .local v1, "indices":[S
    const/4 v2, 0x0

    .line 128
    .local v2, "j":S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a9
    if-ge v3, v0, :cond_d5

    .line 129
    add-int/lit8 v4, v3, 0x0

    aput-short v2, v1, v4

    .line 130
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 131
    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 132
    add-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 133
    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, v2, 0x3

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 134
    add-int/lit8 v4, v3, 0x5

    aput-short v2, v1, v4

    .line 128
    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v2, 0x4

    int-to-short v2, v4

    goto :goto_a9

    .line 136
    .end local v3  # "i":I
    :cond_d5
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 139
    .end local v0  # "length":I
    .end local v1  # "indices":[S
    .end local v2  # "j":S
    :cond_da
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 140
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .param p1, "size"  # I
    .param p2, "useIndices"  # Z

    .line 106
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;Z)V

    .line 107
    return-void
.end method

.method static createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .registers 6

    .line 980
    const-string v0, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n"

    .line 994
    .local v0, "vertexShader":Ljava/lang/String;
    const-string v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    .line 1004
    .local v1, "fragmentShader":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    .local v2, "shader":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1006
    return-object v2

    .line 1005
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
.method public add(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .registers 16
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 267
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    .line 268
    .local v0, "fx2":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    .line 270
    .local v1, "fy2":F
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x0

    aput p2, v2, v3

    .line 271
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v4, 0x1

    aput p3, v2, v4

    .line 272
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v4, 0x2

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v5, v2, v4

    .line 273
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 274
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v4, 0x4

    const/high16 v6, 0x3f800000  # 1.0f

    aput v6, v2, v4

    .line 276
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v4, 0x5

    aput p2, v2, v4

    .line 277
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v4, 0x6

    aput v1, v2, v4

    .line 278
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v4, 0x7

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v7, v2, v4

    .line 279
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x8

    aput v5, v2, v4

    .line 280
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x9

    aput v5, v2, v4

    .line 282
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0xa

    aput v0, v2, v4

    .line 283
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0xb

    aput v1, v2, v4

    .line 284
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0xc

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v7, v2, v4

    .line 285
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0xd

    aput v6, v2, v4

    .line 286
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0xe

    aput v5, v2, v4

    .line 288
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    const/16 v4, 0x14

    const/16 v7, 0x13

    const/16 v8, 0x12

    const/16 v9, 0x11

    const/16 v10, 0x10

    const/16 v11, 0xf

    if-lez v2, :cond_97

    .line 289
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v0, v2, v11

    .line 290
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p3, v2, v10

    .line 291
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v5, v2, v9

    .line 292
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v6, v2, v8

    .line 293
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v6, v2, v7

    .line 294
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_f2

    .line 296
    :cond_97
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v0, v2, v11

    .line 297
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v1, v2, v10

    .line 298
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v10, v2, v9

    .line 299
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v6, v2, v8

    .line 300
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v5, v2, v7

    .line 302
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v0, v2, v4

    .line 303
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x15

    aput p3, v2, v4

    .line 304
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x16

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v7, v2, v4

    .line 305
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x17

    aput v6, v2, v4

    .line 306
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x18

    aput v6, v2, v4

    .line 308
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x19

    aput p2, v2, v4

    .line 309
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x1a

    aput p3, v2, v4

    .line 310
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x1b

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v7, v2, v4

    .line 311
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x1c

    aput v5, v2, v4

    .line 312
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x1d

    aput v6, v2, v4

    .line 313
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x1e

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 315
    :goto_f2
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .registers 54
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

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p11

    move/from16 v5, p12

    add-float v6, p2, v2

    .line 505
    .local v6, "worldOriginX":F
    add-float v7, p3, v3

    .line 506
    .local v7, "worldOriginY":F
    neg-float v8, v2

    .line 507
    .local v8, "fx":F
    neg-float v9, v3

    .line 508
    .local v9, "fy":F
    sub-float v10, p6, v2

    .line 509
    .local v10, "fx2":F
    sub-float v11, p7, v3

    .line 512
    .local v11, "fy2":F
    const/high16 v12, 0x3f800000  # 1.0f

    cmpl-float v13, p8, v12

    if-nez v13, :cond_20

    cmpl-float v13, p9, v12

    if-eqz v13, :cond_28

    .line 513
    :cond_20
    mul-float v8, v8, p8

    .line 514
    mul-float v9, v9, p9

    .line 515
    mul-float v10, v10, p8

    .line 516
    mul-float v11, v11, p9

    .line 520
    :cond_28
    move v13, v8

    .line 521
    .local v13, "p1x":F
    move v14, v9

    .line 522
    .local v14, "p1y":F
    move v15, v8

    .line 523
    .local v15, "p2x":F
    move/from16 v16, v11

    .line 524
    .local v16, "p2y":F
    move/from16 v17, v10

    .line 525
    .local v17, "p3x":F
    move/from16 v18, v11

    .line 526
    .local v18, "p3y":F
    move/from16 v19, v10

    .line 527
    .local v19, "p4x":F
    move/from16 v20, v9

    .line 539
    .local v20, "p4y":F
    const/16 v21, 0x0

    cmpl-float v21, p10, v21

    if-eqz v21, :cond_70

    .line 540
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v21

    .line 541
    .local v21, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v22

    .line 543
    .local v22, "sin":F
    mul-float v23, v21, v13

    mul-float v24, v22, v14

    sub-float v23, v23, v24

    .line 544
    .local v23, "x1":F
    mul-float v24, v22, v13

    mul-float v25, v21, v14

    add-float v24, v24, v25

    .line 546
    .local v24, "y1":F
    mul-float v25, v21, v15

    mul-float v26, v22, v16

    sub-float v25, v25, v26

    .line 547
    .local v25, "x2":F
    mul-float v26, v22, v15

    mul-float v27, v21, v16

    add-float v26, v26, v27

    .line 549
    .local v26, "y2":F
    mul-float v27, v21, v17

    mul-float v28, v22, v18

    sub-float v27, v27, v28

    .line 550
    .local v27, "x3":F
    mul-float v28, v22, v17

    mul-float v29, v21, v18

    add-float v28, v28, v29

    .line 552
    .local v28, "y3":F
    sub-float v29, v27, v25

    add-float v29, v23, v29

    .line 553
    .local v29, "x4":F
    sub-float v30, v26, v24

    sub-float v21, v28, v30

    .line 554
    .end local v22  # "sin":F
    .local v21, "y4":F
    goto :goto_80

    .line 555
    .end local v21  # "y4":F
    .end local v23  # "x1":F
    .end local v24  # "y1":F
    .end local v25  # "x2":F
    .end local v26  # "y2":F
    .end local v27  # "x3":F
    .end local v28  # "y3":F
    .end local v29  # "x4":F
    :cond_70
    move/from16 v23, v13

    .line 556
    .restart local v23  # "x1":F
    move/from16 v24, v14

    .line 558
    .restart local v24  # "y1":F
    move/from16 v25, v15

    .line 559
    .restart local v25  # "x2":F
    move/from16 v26, v16

    .line 561
    .restart local v26  # "y2":F
    move/from16 v27, v17

    .line 562
    .restart local v27  # "x3":F
    move/from16 v28, v18

    .line 564
    .restart local v28  # "y3":F
    move/from16 v29, v19

    .line 565
    .restart local v29  # "x4":F
    move/from16 v21, v20

    .line 568
    .restart local v21  # "y4":F
    :goto_80
    add-float v23, v23, v6

    .line 569
    add-float v24, v24, v7

    .line 570
    add-float v25, v25, v6

    .line 571
    add-float v26, v26, v7

    .line 572
    add-float v27, v27, v6

    .line 573
    add-float v28, v28, v7

    .line 574
    add-float v29, v29, v6

    .line 575
    add-float v21, v21, v7

    .line 577
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v12, v2

    .line 578
    .local v2, "invTexWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v12, v3

    .line 579
    .local v12, "invTexHeight":F
    int-to-float v3, v4

    mul-float/2addr v3, v2

    .line 580
    .local v3, "u":F
    move/from16 v22, v6

    .end local v6  # "worldOriginX":F
    .local v22, "worldOriginX":F
    add-int v6, v5, p14

    int-to-float v6, v6

    mul-float/2addr v6, v12

    .line 581
    .local v6, "v":F
    move/from16 v30, v7

    .end local v7  # "worldOriginY":F
    .local v30, "worldOriginY":F
    add-int v7, v4, p13

    int-to-float v7, v7

    mul-float/2addr v7, v2

    .line 582
    .local v7, "u2":F
    move/from16 v31, v2

    .end local v2  # "invTexWidth":F
    .local v31, "invTexWidth":F
    int-to-float v2, v5

    mul-float/2addr v2, v12

    .line 584
    .local v2, "v2":F
    if-eqz p15, :cond_b6

    .line 585
    move/from16 v32, v3

    .line 586
    .local v32, "tmp":F
    move v3, v7

    .line 587
    move/from16 v7, v32

    .line 590
    .end local v32  # "tmp":F
    :cond_b6
    if-eqz p16, :cond_bd

    .line 591
    move/from16 v32, v6

    .line 592
    .restart local v32  # "tmp":F
    move v6, v2

    .line 593
    move/from16 v2, v32

    .line 596
    .end local v32  # "tmp":F
    :cond_bd
    sget-object v32, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v4, 0x0

    aput v23, v32, v4

    .line 597
    sget-object v32, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v33, 0x1

    aput v24, v32, v33

    .line 598
    sget-object v32, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v33, 0x2

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v4, v32, v33

    .line 599
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v32, 0x3

    aput v3, v4, v32

    .line 600
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v32, 0x4

    aput v6, v4, v32

    .line 602
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v32, 0x5

    aput v25, v4, v32

    .line 603
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v32, 0x6

    aput v26, v4, v32

    .line 604
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v32, 0x7

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v5, v4, v32

    .line 605
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x8

    aput v3, v4, v5

    .line 606
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x9

    aput v2, v4, v5

    .line 608
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0xa

    aput v27, v4, v5

    .line 609
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0xb

    aput v28, v4, v5

    .line 610
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0xc

    move/from16 v32, v8

    .end local v8  # "fx":F
    .local v32, "fx":F
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v8, v4, v5

    .line 611
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0xd

    aput v7, v4, v5

    .line 612
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0xe

    aput v2, v4, v5

    .line 614
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v4

    const/16 v8, 0x13

    const/16 v33, 0x12

    const/16 v34, 0x11

    const/16 v35, 0x10

    const/16 v36, 0xf

    if-lez v4, :cond_14f

    .line 615
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v29, v4, v36

    .line 616
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v21, v4, v35

    .line 617
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v5, v4, v34

    .line 618
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v7, v4, v33

    .line 619
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v6, v4, v8

    .line 620
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x14

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v4, v8, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_1ad

    .line 622
    :cond_14f
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v27, v4, v36

    .line 623
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v28, v4, v35

    .line 624
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v5, v4, v34

    .line 625
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v7, v4, v33

    .line 626
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v4, v8

    .line 628
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x14

    aput v29, v4, v5

    .line 629
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x15

    aput v21, v4, v5

    .line 630
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x16

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v8, v4, v5

    .line 631
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x17

    aput v7, v4, v5

    .line 632
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x18

    aput v6, v4, v5

    .line 634
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x19

    aput v23, v4, v5

    .line 635
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x1a

    aput v24, v4, v5

    .line 636
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x1b

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v8, v4, v5

    .line 637
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x1c

    aput v3, v4, v5

    .line 638
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x1d

    aput v6, v4, v5

    .line 639
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v5, 0x1e

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v4, v8, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 641
    :goto_1ad
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .registers 32
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

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000  # 1.0f

    div-float v4, v5, v4

    .line 433
    .local v4, "invTexWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 434
    .local v5, "invTexHeight":F
    int-to-float v6, v2

    mul-float/2addr v6, v4

    .line 435
    .local v6, "u":F
    add-int v7, v3, p9

    int-to-float v7, v7

    mul-float/2addr v7, v5

    .line 436
    .local v7, "v":F
    add-int v8, v2, p8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    .line 437
    .local v8, "u2":F
    int-to-float v9, v3

    mul-float/2addr v9, v5

    .line 438
    .local v9, "v2":F
    add-float v10, p2, p4

    .line 439
    .local v10, "fx2":F
    add-float v11, p3, p5

    .line 441
    .local v11, "fy2":F
    if-eqz p10, :cond_2c

    .line 442
    move v12, v6

    .line 443
    .local v12, "tmp":F
    move v6, v8

    .line 444
    move v8, v12

    .line 446
    .end local v12  # "tmp":F
    :cond_2c
    if-eqz p11, :cond_31

    .line 447
    move v12, v7

    .line 448
    .restart local v12  # "tmp":F
    move v7, v9

    .line 449
    move v9, v12

    .line 452
    .end local v12  # "tmp":F
    :cond_31
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v13, 0x0

    aput p2, v12, v13

    .line 453
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v14, 0x1

    aput p3, v12, v14

    .line 454
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v14, 0x2

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v15, v12, v14

    .line 455
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v14, 0x3

    aput v6, v12, v14

    .line 456
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v14, 0x4

    aput v7, v12, v14

    .line 458
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v14, 0x5

    aput p2, v12, v14

    .line 459
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v14, 0x6

    aput v11, v12, v14

    .line 460
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v14, 0x7

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v15, v12, v14

    .line 461
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x8

    aput v6, v12, v14

    .line 462
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x9

    aput v9, v12, v14

    .line 464
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0xa

    aput v10, v12, v14

    .line 465
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0xb

    aput v11, v12, v14

    .line 466
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0xc

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v15, v12, v14

    .line 467
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0xd

    aput v8, v12, v14

    .line 468
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0xe

    aput v9, v12, v14

    .line 470
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v12

    const/16 v14, 0x14

    const/16 v15, 0x13

    const/16 v16, 0x12

    const/16 v17, 0x11

    const/16 v18, 0x10

    const/16 v19, 0xf

    if-lez v12, :cond_ba

    .line 471
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v10, v12, v19

    .line 472
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p3, v12, v18

    .line 473
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v13, v12, v17

    .line 474
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v8, v12, v16

    .line 475
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v7, v12, v15

    .line 476
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v13, 0x0

    invoke-virtual {v0, v1, v12, v13, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_116

    .line 478
    :cond_ba
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v10, v12, v19

    .line 479
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v11, v12, v18

    .line 480
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v13, v12, v17

    .line 481
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v8, v12, v16

    .line 482
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v9, v12, v15

    .line 484
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v10, v12, v14

    .line 485
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v13, 0x15

    aput p3, v12, v13

    .line 486
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v13, 0x16

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v14, v12, v13

    .line 487
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v13, 0x17

    aput v8, v12, v13

    .line 488
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v13, 0x18

    aput v7, v12, v13

    .line 490
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v13, 0x19

    aput p2, v12, v13

    .line 491
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v13, 0x1a

    aput p3, v12, v13

    .line 492
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v13, 0x1b

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v14, v12, v13

    .line 493
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v13, 0x1c

    aput v6, v12, v13

    .line 494
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v13, 0x1d

    aput v7, v12, v13

    .line 495
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v13, 0x1e

    const/4 v14, 0x0

    invoke-virtual {v0, v1, v12, v14, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 497
    :goto_116
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFIIFFFFF)V
    .registers 25
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "srcWidth"  # I
    .param p5, "srcHeight"  # I
    .param p6, "u"  # F
    .param p7, "v"  # F
    .param p8, "u2"  # F
    .param p9, "v2"  # F
    .param p10, "color"  # F

    .line 320
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    int-to-float v3, v2

    add-float v3, p2, v3

    .line 321
    .local v3, "fx2":F
    move/from16 v4, p5

    int-to-float v5, v4

    add-float v5, p3, v5

    .line 323
    .local v5, "fy2":F
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x0

    aput p2, v6, v7

    .line 324
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v8, 0x1

    aput p3, v6, v8

    .line 325
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v8, 0x2

    aput p10, v6, v8

    .line 326
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v8, 0x3

    aput p6, v6, v8

    .line 327
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v8, 0x4

    aput p7, v6, v8

    .line 329
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v8, 0x5

    aput p2, v6, v8

    .line 330
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v8, 0x6

    aput v5, v6, v8

    .line 331
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v8, 0x7

    aput p10, v6, v8

    .line 332
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x8

    aput p6, v6, v8

    .line 333
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x9

    aput p9, v6, v8

    .line 335
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0xa

    aput v3, v6, v8

    .line 336
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0xb

    aput v5, v6, v8

    .line 337
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0xc

    aput p10, v6, v8

    .line 338
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0xd

    aput p8, v6, v8

    .line 339
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0xe

    aput p9, v6, v8

    .line 341
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v6

    const/16 v8, 0x14

    const/16 v9, 0x13

    const/16 v10, 0x12

    const/16 v11, 0x11

    const/16 v12, 0x10

    const/16 v13, 0xf

    if-lez v6, :cond_8c

    .line 342
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v3, v6, v13

    .line 343
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p3, v6, v12

    .line 344
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p10, v6, v11

    .line 345
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p8, v6, v10

    .line 346
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p7, v6, v9

    .line 347
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_e1

    .line 349
    :cond_8c
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v3, v6, v13

    .line 350
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v5, v6, v12

    .line 351
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p10, v6, v11

    .line 352
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p8, v6, v10

    .line 353
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p9, v6, v9

    .line 355
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v3, v6, v8

    .line 356
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x15

    aput p3, v6, v8

    .line 357
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x16

    aput p10, v6, v8

    .line 358
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x17

    aput p8, v6, v8

    .line 359
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x18

    aput p7, v6, v8

    .line 361
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x19

    aput p2, v6, v8

    .line 362
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x1a

    aput p3, v6, v8

    .line 363
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x1b

    aput p10, v6, v8

    .line 364
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x1c

    aput p6, v6, v8

    .line 365
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x1d

    aput p7, v6, v8

    .line 366
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x1e

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 368
    :goto_e1
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .registers 28
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "srcX"  # I
    .param p5, "srcY"  # I
    .param p6, "srcWidth"  # I
    .param p7, "srcHeight"  # I

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000  # 1.0f

    div-float v6, v7, v6

    .line 373
    .local v6, "invTexWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 374
    .local v7, "invTexHeight":F
    int-to-float v8, v2

    mul-float/2addr v8, v6

    .line 375
    .local v8, "u":F
    add-int v9, v3, v5

    int-to-float v9, v9

    mul-float/2addr v9, v7

    .line 376
    .local v9, "v":F
    add-int v10, v2, v4

    int-to-float v10, v10

    mul-float/2addr v10, v6

    .line 377
    .local v10, "u2":F
    int-to-float v11, v3

    mul-float/2addr v11, v7

    .line 378
    .local v11, "v2":F
    int-to-float v12, v4

    add-float v12, p2, v12

    .line 379
    .local v12, "fx2":F
    int-to-float v13, v5

    add-float v13, p3, v13

    .line 381
    .local v13, "fy2":F
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v15, 0x0

    aput p2, v14, v15

    .line 382
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v16, 0x1

    aput p3, v14, v16

    .line 383
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v16, 0x2

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v15, v14, v16

    .line 384
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v15, 0x3

    aput v8, v14, v15

    .line 385
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v15, 0x4

    aput v9, v14, v15

    .line 387
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v15, 0x5

    aput p2, v14, v15

    .line 388
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v15, 0x6

    aput v13, v14, v15

    .line 389
    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v15, 0x7

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v2, v14, v15

    .line 390
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x8

    aput v8, v2, v14

    .line 391
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x9

    aput v11, v2, v14

    .line 393
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0xa

    aput v12, v2, v14

    .line 394
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0xb

    aput v13, v2, v14

    .line 395
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0xc

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v15, v2, v14

    .line 396
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0xd

    aput v10, v2, v14

    .line 397
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0xe

    aput v11, v2, v14

    .line 399
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    const/16 v15, 0x13

    const/16 v16, 0x12

    const/16 v17, 0x11

    const/16 v18, 0x10

    const/16 v19, 0xf

    if-lez v2, :cond_b8

    .line 400
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v12, v2, v19

    .line 401
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p3, v2, v18

    .line 402
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v14, v2, v17

    .line 403
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v10, v2, v16

    .line 404
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v9, v2, v15

    .line 405
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x14

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v2, v15, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_116

    .line 407
    :cond_b8
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v12, v2, v19

    .line 408
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v13, v2, v18

    .line 409
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v14, v2, v17

    .line 410
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v10, v2, v16

    .line 411
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v11, v2, v15

    .line 413
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x14

    aput v12, v2, v14

    .line 414
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x15

    aput p3, v2, v14

    .line 415
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x16

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v15, v2, v14

    .line 416
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x17

    aput v10, v2, v14

    .line 417
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x18

    aput v9, v2, v14

    .line 419
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x19

    aput p2, v2, v14

    .line 420
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x1a

    aput p3, v2, v14

    .line 421
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x1b

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v15, v2, v14

    .line 422
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x1c

    aput v8, v2, v14

    .line 423
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x1d

    aput v9, v2, v14

    .line 424
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v14, 0x1e

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v2, v15, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 426
    :goto_116
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .registers 9
    .param p1, "texture"  # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "vertices"  # [F
    .param p3, "offset"  # I
    .param p4, "length"  # I

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-eqz v0, :cond_40

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/4 v1, 0x6

    if-lez v0, :cond_f

    const/4 v0, 0x4

    goto :goto_10

    :cond_f
    move v0, v1

    .line 254
    .local v0, "verticesPerImage":I
    :goto_10
    mul-int/lit8 v2, v0, 0x5

    div-int v2, p4, v2

    mul-int/2addr v2, v1

    .line 255
    .local v2, "count":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 256
    .local v1, "lastIndex":I
    if-ltz v1, :cond_2c

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_26

    goto :goto_2c

    .line 260
    :cond_26
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->incr(II)V

    goto :goto_36

    .line 257
    :cond_2c
    :goto_2c
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 258
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 262
    :goto_36
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 263
    return-void

    .line 251
    .end local v0  # "verticesPerImage":I
    .end local v1  # "lastIndex":I
    .end local v2  # "count":I
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "beginCache must be called before add."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .registers 9
    .param p1, "sprite"  # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 836
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-lez v0, :cond_17

    .line 837
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v3

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 838
    return-void

    .line 841
    :cond_17
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v0

    .line 842
    .local v0, "spriteVertices":[F
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0xf

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    const/16 v3, 0xa

    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v6, 0x5

    invoke-static {v0, v3, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 844
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-static {v0, v4, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 845
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x19

    invoke-static {v0, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 846
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0x1e

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 847
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .registers 11
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F

    .line 645
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

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 646
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .registers 22
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 650
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-float v2, p2, p4

    .line 651
    .local v2, "fx2":F
    add-float v3, p3, p5

    .line 652
    .local v3, "fy2":F
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 653
    .local v4, "u":F
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 654
    .local v5, "v":F
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 655
    .local v6, "u2":F
    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 657
    .local v7, "v2":F
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v9, 0x0

    aput p2, v8, v9

    .line 658
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x1

    aput p3, v8, v10

    .line 659
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x2

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v11, v8, v10

    .line 660
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x3

    aput v4, v8, v10

    .line 661
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x4

    aput v5, v8, v10

    .line 663
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x5

    aput p2, v8, v10

    .line 664
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x6

    aput v3, v8, v10

    .line 665
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x7

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v11, v8, v10

    .line 666
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x8

    aput v4, v8, v10

    .line 667
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x9

    aput v7, v8, v10

    .line 669
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xa

    aput v2, v8, v10

    .line 670
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xb

    aput v3, v8, v10

    .line 671
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xc

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v11, v8, v10

    .line 672
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xd

    aput v6, v8, v10

    .line 673
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0xe

    aput v7, v8, v10

    .line 675
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v8

    const/16 v10, 0x14

    const/16 v11, 0x13

    const/16 v12, 0x12

    const/16 v13, 0x11

    const/16 v14, 0x10

    const/16 v15, 0xf

    if-lez v8, :cond_9a

    .line 676
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v8, v15

    .line 677
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput p3, v8, v14

    .line 678
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v14, v8, v13

    .line 679
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v6, v8, v12

    .line 680
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v5, v8, v11

    .line 681
    iget-object v8, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-virtual {v0, v8, v11, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_f7

    .line 683
    :cond_9a
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v8, v15

    .line 684
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v3, v8, v14

    .line 685
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v14, v8, v13

    .line 686
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v6, v8, v12

    .line 687
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v7, v8, v11

    .line 689
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v8, v10

    .line 690
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x15

    aput p3, v8, v10

    .line 691
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x16

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v11, v8, v10

    .line 692
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x17

    aput v6, v8, v10

    .line 693
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x18

    aput v5, v8, v10

    .line 695
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x19

    aput p2, v8, v10

    .line 696
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x1a

    aput p3, v8, v10

    .line 697
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x1b

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v11, v8, v10

    .line 698
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x1c

    aput v4, v8, v10

    .line 699
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v10, 0x1d

    aput v5, v8, v10

    .line 700
    iget-object v8, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v10, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v11, 0x1e

    invoke-virtual {v0, v8, v10, v9, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 702
    :goto_f7
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .registers 47
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

    .line 709
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    add-float v4, p2, v2

    .line 710
    .local v4, "worldOriginX":F
    add-float v5, p3, v3

    .line 711
    .local v5, "worldOriginY":F
    neg-float v6, v2

    .line 712
    .local v6, "fx":F
    neg-float v7, v3

    .line 713
    .local v7, "fy":F
    sub-float v8, p6, v2

    .line 714
    .local v8, "fx2":F
    sub-float v9, p7, v3

    .line 717
    .local v9, "fy2":F
    const/high16 v10, 0x3f800000  # 1.0f

    cmpl-float v11, p8, v10

    if-nez v11, :cond_1c

    cmpl-float v10, p9, v10

    if-eqz v10, :cond_24

    .line 718
    :cond_1c
    mul-float v6, v6, p8

    .line 719
    mul-float v7, v7, p9

    .line 720
    mul-float v8, v8, p8

    .line 721
    mul-float v9, v9, p9

    .line 725
    :cond_24
    move v10, v6

    .line 726
    .local v10, "p1x":F
    move v11, v7

    .line 727
    .local v11, "p1y":F
    move v12, v6

    .line 728
    .local v12, "p2x":F
    move v13, v9

    .line 729
    .local v13, "p2y":F
    move v14, v8

    .line 730
    .local v14, "p3x":F
    move v15, v9

    .line 731
    .local v15, "p3y":F
    move/from16 v16, v8

    .line 732
    .local v16, "p4x":F
    move/from16 v17, v7

    .line 744
    .local v17, "p4y":F
    const/16 v18, 0x0

    cmpl-float v18, p10, v18

    if-eqz v18, :cond_69

    .line 745
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v18

    .line 746
    .local v18, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v19

    .line 748
    .local v19, "sin":F
    mul-float v20, v18, v10

    mul-float v21, v19, v11

    sub-float v20, v20, v21

    .line 749
    .local v20, "x1":F
    mul-float v21, v19, v10

    mul-float v22, v18, v11

    add-float v21, v21, v22

    .line 751
    .local v21, "y1":F
    mul-float v22, v18, v12

    mul-float v23, v19, v13

    sub-float v22, v22, v23

    .line 752
    .local v22, "x2":F
    mul-float v23, v19, v12

    mul-float v24, v18, v13

    add-float v23, v23, v24

    .line 754
    .local v23, "y2":F
    mul-float v24, v18, v14

    mul-float v25, v19, v15

    sub-float v24, v24, v25

    .line 755
    .local v24, "x3":F
    mul-float v25, v19, v14

    mul-float v26, v18, v15

    add-float v25, v25, v26

    .line 757
    .local v25, "y3":F
    sub-float v26, v24, v22

    add-float v26, v20, v26

    .line 758
    .local v26, "x4":F
    sub-float v27, v23, v21

    sub-float v18, v25, v27

    .line 759
    .end local v19  # "sin":F
    .local v18, "y4":F
    goto :goto_79

    .line 760
    .end local v18  # "y4":F
    .end local v20  # "x1":F
    .end local v21  # "y1":F
    .end local v22  # "x2":F
    .end local v23  # "y2":F
    .end local v24  # "x3":F
    .end local v25  # "y3":F
    .end local v26  # "x4":F
    :cond_69
    move/from16 v20, v10

    .line 761
    .restart local v20  # "x1":F
    move/from16 v21, v11

    .line 763
    .restart local v21  # "y1":F
    move/from16 v22, v12

    .line 764
    .restart local v22  # "x2":F
    move/from16 v23, v13

    .line 766
    .restart local v23  # "y2":F
    move/from16 v24, v14

    .line 767
    .restart local v24  # "x3":F
    move/from16 v25, v15

    .line 769
    .restart local v25  # "y3":F
    move/from16 v26, v16

    .line 770
    .restart local v26  # "x4":F
    move/from16 v18, v17

    .line 773
    .restart local v18  # "y4":F
    :goto_79
    add-float v20, v20, v4

    .line 774
    add-float v21, v21, v5

    .line 775
    add-float v22, v22, v4

    .line 776
    add-float v23, v23, v5

    .line 777
    add-float v24, v24, v4

    .line 778
    add-float v25, v25, v5

    .line 779
    add-float v26, v26, v4

    .line 780
    add-float v18, v18, v5

    .line 782
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 783
    .local v2, "u":F
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 784
    .local v3, "v":F
    move/from16 v19, v4

    .end local v4  # "worldOriginX":F
    .local v19, "worldOriginX":F
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 785
    .local v4, "u2":F
    move/from16 v27, v5

    .end local v5  # "worldOriginY":F
    .local v27, "worldOriginY":F
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 787
    .local v5, "v2":F
    sget-object v28, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    move/from16 v29, v6

    .end local v6  # "fx":F
    .local v29, "fx":F
    const/4 v6, 0x0

    aput v20, v28, v6

    .line 788
    sget-object v28, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v30, 0x1

    aput v21, v28, v30

    .line 789
    sget-object v28, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v30, 0x2

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v6, v28, v30

    .line 790
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v28, 0x3

    aput v2, v6, v28

    .line 791
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v28, 0x4

    aput v3, v6, v28

    .line 793
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v28, 0x5

    aput v22, v6, v28

    .line 794
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v28, 0x6

    aput v23, v6, v28

    .line 795
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v28, 0x7

    move/from16 v30, v7

    .end local v7  # "fy":F
    .local v30, "fy":F
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v7, v6, v28

    .line 796
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x8

    aput v2, v6, v7

    .line 797
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x9

    aput v5, v6, v7

    .line 799
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xa

    aput v24, v6, v7

    .line 800
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xb

    aput v25, v6, v7

    .line 801
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xc

    move/from16 v28, v8

    .end local v8  # "fx2":F
    .local v28, "fx2":F
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v8, v6, v7

    .line 802
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xd

    aput v4, v6, v7

    .line 803
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0xe

    aput v5, v6, v7

    .line 805
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v6

    const/16 v8, 0x13

    const/16 v31, 0x12

    const/16 v32, 0x11

    const/16 v33, 0x10

    const/16 v34, 0xf

    if-lez v6, :cond_12f

    .line 806
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v26, v6, v34

    .line 807
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v18, v6, v33

    .line 808
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v7, v6, v32

    .line 809
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v4, v6, v31

    .line 810
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v3, v6, v8

    .line 811
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    move/from16 v35, v9

    const/16 v8, 0x14

    const/4 v9, 0x0

    .end local v9  # "fy2":F
    .local v35, "fy2":F
    invoke-virtual {v0, v6, v7, v9, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_191

    .line 813
    .end local v35  # "fy2":F
    .restart local v9  # "fy2":F
    :cond_12f
    move/from16 v35, v9

    .end local v9  # "fy2":F
    .restart local v35  # "fy2":F
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v24, v6, v34

    .line 814
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v25, v6, v33

    .line 815
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v7, v6, v32

    .line 816
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v4, v6, v31

    .line 817
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v5, v6, v8

    .line 819
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x14

    aput v26, v6, v7

    .line 820
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x15

    aput v18, v6, v7

    .line 821
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x16

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v8, v6, v7

    .line 822
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x17

    aput v4, v6, v7

    .line 823
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x18

    aput v3, v6, v7

    .line 825
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x19

    aput v20, v6, v7

    .line 826
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x1a

    aput v21, v6, v7

    .line 827
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x1b

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    aput v8, v6, v7

    .line 828
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x1c

    aput v2, v6, v7

    .line 829
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v7, 0x1d

    aput v3, v6, v7

    .line 830
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v8, 0x1e

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v9, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 832
    :goto_191
    return-void
.end method

.method public begin()V
    .registers 6

    .line 851
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_76

    .line 852
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-nez v0, :cond_6e

    .line 853
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 854
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 856
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 858
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_texture"

    if-eqz v1, :cond_50

    .line 859
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 860
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v3, "u_proj"

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 861
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v3, "u_trans"

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 862
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v3, "u_projTrans"

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 863
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 864
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_6a

    .line 866
    :cond_50
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 867
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v3, "u_projectionViewMatrix"

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 868
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 869
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 871
    :goto_6a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    .line 872
    return-void

    .line 852
    :cond_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "endCache must be called before begin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginCache()V
    .registers 5

    .line 171
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_41

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-nez v0, :cond_39

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x4

    goto :goto_13

    :cond_12
    const/4 v0, 0x6

    .line 174
    .local v0, "verticesPerImage":I
    :goto_13
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;-><init>(II)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 175
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->compact()Ljava/nio/FloatBuffer;

    .line 177
    return-void

    .line 172
    .end local v0  # "verticesPerImage":I
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "endCache must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "end must be called before beginCache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginCache(I)V
    .registers 5
    .param p1, "cacheID"  # I

    .line 183
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_47

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-nez v0, :cond_3f

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_27

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 187
    .local v0, "oldCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 188
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    .line 189
    return-void

    .line 191
    .end local v0  # "oldCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    :cond_27
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 193
    return-void

    .line 184
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "endCache must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "end must be called before beginCache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 245
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 943
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 944
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 945
    :cond_e
    return-void
.end method

.method public draw(I)V
    .registers 13
    .param p1, "cacheID"  # I

    .line 889
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_51

    .line 891
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 892
    .local v0, "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-lez v1, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v2

    .line 893
    .local v1, "verticesPerImage":I
    :goto_19
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    mul-int/lit8 v5, v1, 0x5

    div-int/2addr v4, v5

    mul-int/2addr v4, v2

    .line 894
    .local v4, "offset":I
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 895
    .local v2, "textures":[Lcom/badlogic/gdx/graphics/Texture;
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 896
    .local v5, "counts":[I
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 897
    .local v6, "textureCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_26
    if-ge v7, v6, :cond_46

    .line 898
    aget v8, v5, v7

    .line 899
    .local v8, "count":I
    aget-object v9, v2, v7

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 900
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v9, :cond_3b

    .line 901
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v9, v10, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    goto :goto_42

    .line 903
    :cond_3b
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v9, v10, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 904
    :goto_42
    add-int/2addr v4, v8

    .line 897
    .end local v8  # "count":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 906
    .end local v7  # "i":I
    :cond_46
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 907
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    .line 908
    return-void

    .line 889
    .end local v0  # "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    .end local v1  # "verticesPerImage":I
    .end local v2  # "textures":[Lcom/badlogic/gdx/graphics/Texture;
    .end local v4  # "offset":I
    .end local v5  # "counts":[I
    .end local v6  # "textureCount":I
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteCache.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(III)V
    .registers 14
    .param p1, "cacheID"  # I
    .param p2, "offset"  # I
    .param p3, "length"  # I

    .line 914
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_5d

    .line 916
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 917
    .local v0, "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x6

    if-lez v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    .line 918
    .local v1, "verticesPerImage":I
    :goto_19
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    mul-int/lit8 v5, v1, 0x5

    div-int/2addr v4, v5

    mul-int/2addr v4, v3

    mul-int/lit8 v5, p2, 0x6

    add-int/2addr v4, v5

    .line 919
    .end local p2  # "offset":I
    .local v4, "offset":I
    mul-int/2addr p3, v3

    .line 920
    iget-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 921
    .local p2, "textures":[Lcom/badlogic/gdx/graphics/Texture;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 922
    .local v3, "counts":[I
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 923
    .local v5, "textureCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2a
    if-ge v6, v5, :cond_50

    .line 924
    aget-object v7, p2, v6

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 925
    aget v7, v3, v6

    .line 926
    .local v7, "count":I
    if-le v7, p3, :cond_38

    .line 927
    move v6, v5

    .line 928
    move v7, p3

    goto :goto_39

    .line 930
    :cond_38
    sub-int/2addr p3, v7

    .line 931
    :goto_39
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v8, :cond_45

    .line 932
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v9, v2, v4, v7}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    goto :goto_4c

    .line 934
    :cond_45
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v9, v2, v4, v7}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 935
    :goto_4c
    add-int/2addr v4, v7

    .line 923
    .end local v7  # "count":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 937
    .end local v6  # "i":I
    :cond_50
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    .line 938
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    .line 939
    return-void

    .line 914
    .end local v0  # "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    .end local v1  # "verticesPerImage":I
    .end local v3  # "counts":[I
    .end local v4  # "offset":I
    .end local v5  # "textureCount":I
    .local p2, "offset":I
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteCache.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .registers 4

    .line 876
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_21

    .line 877
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    .line 879
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 880
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 881
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v1, :cond_19

    .line 882
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_20

    .line 884
    :cond_19
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 885
    :goto_20
    return-void

    .line 876
    .end local v0  # "gl":Lcom/badlogic/gdx/graphics/GL20;
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endCache()I
    .registers 7

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-eqz v0, :cond_f4

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 199
    .local v0, "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    sub-int/2addr v1, v2

    .line 200
    .local v1, "cacheCount":I
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    if-nez v2, :cond_4f

    .line 202
    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    .line 203
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 204
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/graphics/Texture;

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 205
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 206
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v3, "n":I
    :goto_36
    if-ge v2, v3, :cond_45

    .line 207
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    aput v5, v4, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 209
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_45
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    goto :goto_b9

    .line 212
    :cond_4f
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    if-gt v1, v2, :cond_c9

    .line 218
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .line 220
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    array-length v2, v2

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    if-ge v2, v3, :cond_66

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/Texture;

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    .line 221
    :cond_66
    const/4 v2, 0x0

    .restart local v2  # "i":I
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .restart local v3  # "n":I
    :goto_69
    if-ge v2, v3, :cond_7a

    .line 222
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Texture;

    aput-object v5, v4, v2

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 224
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_7a
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    array-length v2, v2

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    if-ge v2, v3, :cond_87

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    .line 225
    :cond_87
    const/4 v2, 0x0

    .restart local v2  # "i":I
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    .restart local v3  # "n":I
    :goto_8a
    if-ge v2, v3, :cond_99

    .line 226
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    aput v5, v4, v2

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 228
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_99
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 229
    .local v2, "vertices":Ljava/nio/FloatBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 230
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 231
    .local v3, "lastCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 234
    .end local v2  # "vertices":Ljava/nio/FloatBuffer;
    .end local v3  # "lastCache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    :goto_b9
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    .line 235
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 236
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 238
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->id:I

    return v2

    .line 213
    :cond_c9
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "If a cache is not the last created, it cannot be redefined with more entries than when it was first created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    .end local v0  # "cache":Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    .end local v1  # "cacheCount":I
    :cond_f4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "beginCache must be called before endCache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCustomShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .registers 2

    .line 1024
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method public getPackedColor()F
    .registers 2

    .line 166
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .registers 2

    .line 948
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .registers 2

    .line 957
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isDrawing()Z
    .registers 2

    .line 1028
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    return v0
.end method

.method public setColor(FFFF)V
    .registers 6
    .param p1, "r"  # F
    .param p2, "g"  # F
    .param p3, "b"  # F
    .param p4, "a"  # F

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    .line 152
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3
    .param p1, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 145
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    .line 146
    return-void
.end method

.method public setPackedColor(F)V
    .registers 3
    .param p1, "packedColor"  # F

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 162
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->colorPacked:F

    .line 163
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 4
    .param p1, "projection"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 952
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_a

    .line 953
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 954
    return-void

    .line 952
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set the matrix within begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 2
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1019
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1020
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 4
    .param p1, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 961
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_a

    .line 962
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 963
    return-void

    .line 961
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set the matrix within begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
