.class public Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;
.super Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
.source "DirectionalShadowLight.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field protected cam:Lcom/badlogic/gdx/graphics/Camera;

.field protected fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field protected halfDepth:F

.field protected halfHeight:F

.field protected final textureDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

.field protected final tmpV:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>(IIFFFF)V
    .registers 10
    .param p1, "shadowMapWidth"  # I
    .param p2, "shadowMapHeight"  # I
    .param p3, "shadowViewportWidth"  # F
    .param p4, "shadowViewportHeight"  # F
    .param p5, "shadowNear"  # F
    .param p6, "shadowFar"  # F

    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;-><init>()V

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0, p3, p4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->cam:Lcom/badlogic/gdx/graphics/Camera;

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->cam:Lcom/badlogic/gdx/graphics/Camera;

    iput p5, v0, Lcom/badlogic/gdx/graphics/Camera;->near:F

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->cam:Lcom/badlogic/gdx/graphics/Camera;

    iput p6, v0, Lcom/badlogic/gdx/graphics/Camera;->far:F

    .line 46
    const/high16 v0, 0x3f000000  # 0.5f

    mul-float v1, p4, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->halfHeight:F

    .line 47
    sub-float v1, p6, p5

    mul-float/2addr v1, v0

    add-float/2addr v1, p5

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->halfDepth:F

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->textureDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->textureDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->textureDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->textureDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->textureDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 51
    return-void
.end method


# virtual methods
.method public begin()V
    .registers 7

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getWidth()I

    move-result v0

    .line 76
    .local v0, "w":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getHeight()I

    move-result v1

    .line 77
    .local v1, "h":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 78
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v3, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 79
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-interface {v2, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 80
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x4100

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 81
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0xc11

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 82
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int/lit8 v3, v0, -0x2

    add-int/lit8 v4, v1, -0x2

    const/4 v5, 0x1

    invoke-interface {v2, v5, v5, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glScissor(IIII)V

    .line 83
    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/Camera;)V
    .registers 2
    .param p1, "camera"  # Lcom/badlogic/gdx/graphics/Camera;

    .line 65
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->update(Lcom/badlogic/gdx/graphics/Camera;)V

    .line 66
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->begin()V

    .line 67
    return-void
.end method

.method public begin(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 3
    .param p1, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "forward"  # Lcom/badlogic/gdx/math/Vector3;

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->update(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 71
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->begin()V

    .line 72
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->dispose()V

    .line 112
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 113
    return-void
.end method

.method public end()V
    .registers 3

    .line 86
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xc11

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 88
    return-void
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->cam:Lcom/badlogic/gdx/graphics/Camera;

    return-object v0
.end method

.method public getDepthMap()Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->textureDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->textureDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    return-object v0
.end method

.method public getFrameBuffer()Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    return-object v0
.end method

.method public getProjViewTrans()Lcom/badlogic/gdx/math/Matrix4;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->cam:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public update(Lcom/badlogic/gdx/graphics/Camera;)V
    .registers 4
    .param p1, "camera"  # Lcom/badlogic/gdx/graphics/Camera;

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->halfHeight:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->update(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 55
    return-void
.end method

.method public update(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 5
    .param p1, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "forward"  # Lcom/badlogic/gdx/math/Vector3;

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->cam:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->halfDepth:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->cam:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->cam:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->normalizeUp()V

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalShadowLight;->cam:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 62
    return-void
.end method
