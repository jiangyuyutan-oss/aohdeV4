.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;,
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;,
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    }
.end annotation


# static fields
.field public static defaultCullFace:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static defaultDepthFunc:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static defaultFragmentShader:Ljava/lang/String;

.field private static defaultVertexShader:Ljava/lang/String;

.field protected static implementedFlags:J

.field private static final optionalAttributes:J

.field private static final tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;


# instance fields
.field protected final ambientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

.field protected final attributesMask:J

.field protected final config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

.field protected dirLightsColorOffset:I

.field protected dirLightsDirectionOffset:I

.field protected dirLightsLoc:I

.field protected dirLightsSize:I

.field protected final directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

.field protected final environmentCubemap:Z

.field protected final lighting:Z

.field private lightsSet:Z

.field private final normalMatrix:Lcom/badlogic/gdx/math/Matrix3;

.field protected final pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

.field protected pointLightsColorOffset:I

.field protected pointLightsIntensityOffset:I

.field protected pointLightsLoc:I

.field protected pointLightsPositionOffset:I

.field protected pointLightsSize:I

.field private renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

.field protected final shadowMap:Z

.field protected final spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

.field protected spotLightsColorOffset:I

.field protected spotLightsCutoffAngleOffset:I

.field protected spotLightsDirectionOffset:I

.field protected spotLightsExponentOffset:I

.field protected spotLightsIntensityOffset:I

.field protected spotLightsLoc:I

.field protected spotLightsPositionOffset:I

.field protected spotLightsSize:I

.field private time:F

.field private final tmpV1:Lcom/badlogic/gdx/math/Vector3;

.field public final u_alphaTest:I

.field protected final u_ambientCubemap:I

.field public final u_ambientTexture:I

.field public final u_ambientUVTransform:I

.field public final u_bones:I

.field public final u_cameraDirection:I

.field public final u_cameraNearFar:I

.field public final u_cameraPosition:I

.field public final u_cameraUp:I

.field public final u_diffuseColor:I

.field public final u_diffuseTexture:I

.field public final u_diffuseUVTransform:I

.field protected final u_dirLights0color:I

.field protected final u_dirLights0direction:I

.field protected final u_dirLights1color:I

.field public final u_emissiveColor:I

.field public final u_emissiveTexture:I

.field public final u_emissiveUVTransform:I

.field protected final u_environmentCubemap:I

.field protected final u_fogColor:I

.field public final u_normalMatrix:I

.field public final u_normalTexture:I

.field public final u_normalUVTransform:I

.field public final u_opacity:I

.field protected final u_pointLights0color:I

.field protected final u_pointLights0intensity:I

.field protected final u_pointLights0position:I

.field protected final u_pointLights1color:I

.field public final u_projTrans:I

.field public final u_projViewTrans:I

.field public final u_projViewWorldTrans:I

.field public final u_reflectionColor:I

.field public final u_reflectionTexture:I

.field public final u_reflectionUVTransform:I

.field protected final u_shadowMapProjViewTrans:I

.field protected final u_shadowPCFOffset:I

.field protected final u_shadowTexture:I

.field public final u_shininess:I

.field public final u_specularColor:I

.field public final u_specularTexture:I

.field public final u_specularUVTransform:I

.field protected final u_spotLights0color:I

.field protected final u_spotLights0cutoffAngle:I

.field protected final u_spotLights0direction:I

.field protected final u_spotLights0exponent:I

.field protected final u_spotLights0intensity:I

.field protected final u_spotLights0position:I

.field protected final u_spotLights1color:I

.field public final u_time:I

.field public final u_viewTrans:I

.field public final u_viewWorldTrans:I

.field public final u_worldTrans:I

.field private final vertexMask:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 391
    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    .line 399
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    .line 407
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->implementedFlags:J

    .line 411
    const/16 v0, 0x405

    sput v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    .line 413
    const/16 v0, 0x203

    sput v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    .line 506
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->optionalAttributes:J

    .line 636
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .registers 3
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 509
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V

    .line 510
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V
    .registers 4
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .line 513
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 10
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    .param p3, "shaderProgram"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 526
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;-><init>()V

    .line 453
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_dirLights[0].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0color:I

    .line 454
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_dirLights[0].direction"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0direction:I

    .line 455
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_dirLights[1].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights1color:I

    .line 456
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[0].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0color:I

    .line 457
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[0].position"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0position:I

    .line 458
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[0].intensity"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0intensity:I

    .line 459
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[1].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights1color:I

    .line 460
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0color:I

    .line 461
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].position"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0position:I

    .line 462
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].intensity"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0intensity:I

    .line 463
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].direction"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0direction:I

    .line 464
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].cutoffAngle"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0cutoffAngle:I

    .line 465
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].exponent"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0exponent:I

    .line 466
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[1].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights1color:I

    .line 467
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_fogColor"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_fogColor:I

    .line 468
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_shadowMapProjViewTrans"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowMapProjViewTrans:I

    .line 469
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_shadowTexture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowTexture:I

    .line 470
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_shadowPCFOffset"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowPCFOffset:I

    .line 494
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->ambientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 750
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->normalMatrix:Lcom/badlogic/gdx/math/Matrix3;

    .line 813
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    .line 527
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    .line 528
    .local v0, "attributes":Lcom/badlogic/gdx/graphics/g3d/Attributes;
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .line 529
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 530
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_112

    move v1, v2

    goto :goto_113

    :cond_112
    move v1, v3

    :goto_113
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    .line 531
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v1

    if-nez v1, :cond_12c

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v1, :cond_12a

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    .line 532
    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v1

    if-eqz v1, :cond_12a

    goto :goto_12c

    :cond_12a
    move v1, v3

    goto :goto_12d

    :cond_12c
    :goto_12c
    move v1, v2

    :goto_12d
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->environmentCubemap:Z

    .line 533
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v1, :cond_13a

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz v1, :cond_13a

    goto :goto_13b

    :cond_13a
    move v2, v3

    :goto_13b
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->shadowMap:Z

    .line 534
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 535
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v1

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->optionalAttributes:J

    or-long/2addr v1, v4

    iput-wide v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    .line 536
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMaskWithSizePacked()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->vertexMask:J

    .line 538
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v1, :cond_161

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    if-lez v1, :cond_161

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    goto :goto_162

    :cond_161
    move v1, v3

    :goto_162
    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .line 539
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_167
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length v2, v2

    if-ge v1, v2, :cond_178

    .line 540
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;-><init>()V

    aput-object v4, v2, v1

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_167

    .line 541
    .end local v1  # "i":I
    :cond_178
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v1, :cond_183

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    if-lez v1, :cond_183

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    goto :goto_184

    :cond_183
    move v1, v3

    :goto_184
    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .line 542
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_189
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length v2, v2

    if-ge v1, v2, :cond_19a

    .line 543
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;-><init>()V

    aput-object v4, v2, v1

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_189

    .line 544
    .end local v1  # "i":I
    :cond_19a
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v1, :cond_1a4

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numSpotLights:I

    if-lez v1, :cond_1a4

    iget v3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numSpotLights:I

    :cond_1a4
    new-array v1, v3, [Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .line 545
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_1a9
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    array-length v2, v2

    if-ge v1, v2, :cond_1ba

    .line 546
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;-><init>()V

    aput-object v3, v2, v1

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a9

    .line 548
    .end local v1  # "i":I
    :cond_1ba
    iget-boolean v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    if-nez v1, :cond_1eb

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->implementedFlags:J

    iget-wide v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    and-long/2addr v1, v3

    iget-wide v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1ca

    goto :goto_1eb

    .line 549
    :cond_1ca
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Some attributes not implemented yet ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_1eb
    :goto_1eb
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v1, :cond_21f

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v1, v1

    iget v2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-gt v1, v2, :cond_1f7

    goto :goto_21f

    .line 552
    :cond_1f7
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "too many bones: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max configured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_21f
    :goto_21f
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projTrans:I

    .line 557
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_viewTrans:I

    .line 558
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projViewTrans:I

    .line 559
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraPosition:I

    .line 560
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraDirection:I

    .line 561
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraUp:I

    .line 562
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraNearFar:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraNearFar:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraNearFar:I

    .line 563
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v2, "u_time"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    .line 565
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->worldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->worldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_worldTrans:I

    .line 566
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->viewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_viewWorldTrans:I

    .line 567
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projViewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projViewWorldTrans:I

    .line 568
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalMatrix:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalMatrix:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalMatrix:I

    .line 569
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const/4 v2, -0x1

    if-eqz v1, :cond_2b1

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-lez v1, :cond_2b1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->bones:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;

    iget v4, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;-><init>(I)V

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    goto :goto_2b2

    :cond_2b1
    move v1, v2

    :goto_2b2
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_bones:I

    .line 572
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->shininess:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->shininess:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shininess:I

    .line 573
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->opacity:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_opacity:I

    .line 574
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseColor:I

    .line 575
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseTexture:I

    .line 576
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseUVTransform:I

    .line 577
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularColor:I

    .line 578
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularTexture:I

    .line 579
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularUVTransform:I

    .line 580
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveColor:I

    .line 581
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveTexture:I

    .line 582
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveUVTransform:I

    .line 583
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionColor:I

    .line 584
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionTexture:I

    .line 585
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionUVTransform:I

    .line 586
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalTexture:I

    .line 587
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalUVTransform:I

    .line 588
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->ambientTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientTexture:I

    .line 589
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->ambientUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientUVTransform:I

    .line 590
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->alphaTest:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_alphaTest:I

    .line 592
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v1, :cond_382

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientCube:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;

    iget v4, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    iget v5, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v1

    goto :goto_383

    :cond_382
    move v1, v2

    :goto_383
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientCubemap:I

    .line 594
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->environmentCubemap:Z

    if-eqz v1, :cond_391

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->environmentCubemap:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->environmentCubemap:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result v2

    :cond_391
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_environmentCubemap:I

    .line 595
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;)V
    .registers 11
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    .param p3, "prefix"  # Ljava/lang/String;

    .line 517
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->getDefaultVertexShader()Ljava/lang/String;

    move-result-object v0

    :goto_b
    move-object v5, v0

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    move-object v6, v0

    goto :goto_19

    .line 518
    :cond_14
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->getDefaultFragmentShader()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 517
    :goto_19
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    .param p3, "prefix"  # Ljava/lang/String;
    .param p4, "vertexShader"  # Ljava/lang/String;
    .param p5, "fragmentShader"  # Ljava/lang/String;

    .line 523
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 524
    return-void
.end method

.method private static final and(JJ)Z
    .registers 6
    .param p0, "mask"  # J
    .param p2, "flag"  # J

    .line 629
    and-long v0, p0, p2

    cmp-long v0, v0, p2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static final combineAttributeMasks(Lcom/badlogic/gdx/graphics/g3d/Renderable;)J
    .registers 5
    .param p0, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 647
    const-wide/16 v0, 0x0

    .line 648
    .local v0, "mask":J
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/Environment;->getMask()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 649
    :cond_d
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->getMask()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 650
    :cond_18
    return-wide v0
.end method

.method private static final combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;
    .registers 3
    .param p0, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 640
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->clear()V

    .line 641
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    .line 642
    :cond_10
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    .line 643
    :cond_1b
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-object v0
.end method

.method public static createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;
    .registers 15
    .param p0, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p1, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .line 654
    invoke-static {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    .line 655
    .local v0, "attributes":Lcom/badlogic/gdx/graphics/g3d/Attributes;
    const-string v1, ""

    .line 656
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v2

    .line 657
    .local v2, "attributesMask":J
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v4

    .line 658
    .local v4, "vertexMask":J
    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v6

    if-eqz v6, :cond_31

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#define positionFlag\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 659
    :cond_31
    const-wide/16 v6, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->or(JJ)Z

    move-result v6

    if-eqz v6, :cond_4c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#define colorFlag\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    :cond_4c
    const-wide/16 v6, 0x100

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v6

    if-eqz v6, :cond_67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#define binormalFlag\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 661
    :cond_67
    const-wide/16 v6, 0x80

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v6

    if-eqz v6, :cond_82

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#define tangentFlag\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 662
    :cond_82
    const-wide/16 v6, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v8

    if-eqz v8, :cond_9d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define normalFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    :cond_9d
    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v6

    const-string v7, "\n"

    if-nez v6, :cond_ad

    const-wide/16 v8, 0x180

    invoke-static {v4, v5, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v6

    if-eqz v6, :cond_17d

    .line 664
    :cond_ad
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v6, :cond_17d

    .line 665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#define lightingFlag\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#define ambientCubemapFlag\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 667
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#define numDirectionalLights "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#define numPointLights "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#define numSpotLights "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numSpotLights:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {v0, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v6

    if-eqz v6, :cond_149

    .line 671
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#define fogFlag\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    :cond_149
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz v6, :cond_162

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#define shadowMapFlag\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    :cond_162
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v0, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v6

    if-eqz v6, :cond_17d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#define environmentCubemapFlag\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 677
    :cond_17d
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v6

    .line 678
    .local v6, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_18a
    if-ge v8, v6, :cond_1e4

    .line 679
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v9

    .line 680
    .local v9, "attr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v10, v9, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/16 v11, 0x40

    const-string v12, "Flag\n"

    if-ne v10, v11, :cond_1be

    .line 681
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#define boneWeight"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e1

    .line 682
    :cond_1be
    iget v10, v9, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/16 v11, 0x10

    if-ne v10, v11, :cond_1e1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#define texCoord"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    .end local v9  # "attr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_1e1
    :goto_1e1
    add-int/lit8 v8, v8, 0x1

    goto :goto_18a

    .line 684
    .end local v8  # "i":I
    :cond_1e4
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_200

    .line 685
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define blendedFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    :cond_200
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_22f

    .line 687
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define diffuseTextureFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define diffuseTextureCoord texCoord0\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    :cond_22f
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_25e

    .line 691
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define specularTextureFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 692
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define specularTextureCoord texCoord0\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    :cond_25e
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_28d

    .line 695
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define normalTextureFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define normalTextureCoord texCoord0\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    :cond_28d
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2bc

    .line 699
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define emissiveTextureFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define emissiveTextureCoord texCoord0\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 702
    :cond_2bc
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2eb

    .line 703
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define reflectionTextureFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 704
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define reflectionTextureCoord texCoord0\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    :cond_2eb
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_31a

    .line 707
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define ambientTextureFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 708
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define ambientTextureCoord texCoord0\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    :cond_31a
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_336

    .line 711
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define diffuseColorFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    :cond_336
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_352

    .line 713
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define specularColorFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    :cond_352
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_36e

    .line 715
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define emissiveColorFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    :cond_36e
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_38a

    .line 717
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define reflectionColorFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    :cond_38a
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_3a6

    .line 719
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define shininessFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    :cond_3a6
    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    and-long/2addr v8, v2

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_3c2

    .line 721
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define alphaTestFlag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 722
    :cond_3c2
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v8, :cond_3e7

    iget v8, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-lez v8, :cond_3e7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#define numBones "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    :cond_3e7
    return-object v1
.end method

.method public static getDefaultFragmentShader()Ljava/lang/String;
    .registers 2

    .line 402
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 403
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/default.fragment.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    .line 404
    :cond_12
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultVertexShader()Ljava/lang/String;
    .registers 2

    .line 394
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 395
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/default.vertex.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    .line 396
    :cond_12
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    return-object v0
.end method

.method private static final or(JJ)Z
    .registers 8
    .param p0, "mask"  # J
    .param p2, "flag"  # J

    .line 633
    and-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .registers 22
    .param p1, "camera"  # Lcom/badlogic/gdx/graphics/Camera;
    .param p2, "context"  # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    .line 756
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    .line 758
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_1c

    aget-object v12, v1, v4

    .line 759
    .local v12, "dirLight":Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
    const/high16 v10, -0x40800000  # -1.0f

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v12

    invoke-virtual/range {v5 .. v11}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .line 758
    .end local v12  # "dirLight":Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 760
    :cond_1c
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length v2, v1

    move v4, v3

    :goto_20
    if-ge v4, v2, :cond_32

    aget-object v13, v1, v4

    .line 761
    .local v13, "pointLight":Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v13

    invoke-virtual/range {v5 .. v12}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(FFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .line 760
    .end local v13  # "pointLight":Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 762
    :cond_32
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    array-length v2, v1

    move v4, v3

    :goto_36
    if-ge v4, v2, :cond_51

    aget-object v18, v1, v4

    .line 763
    .local v18, "spotLight":Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    const/high16 v16, 0x3f800000  # 1.0f

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, -0x40800000  # -1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, v18

    invoke-virtual/range {v5 .. v17}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->set(FFFFFFFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .line 762
    .end local v18  # "spotLight":Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 764
    :cond_51
    iput-boolean v3, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    .line 766
    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->has(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->time:F

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->time:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    .line 767
    :cond_6b
    return-void
.end method

.method protected bindLights(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .registers 20
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "attributes"  # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .line 816
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 817
    .local v3, "lights":Lcom/badlogic/gdx/graphics/g3d/Environment;
    const-class v4, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    sget-wide v5, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    invoke-virtual {v1, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(Ljava/lang/Class;J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    .line 818
    .local v4, "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    const/4 v5, 0x0

    if-nez v4, :cond_17

    move-object v6, v5

    goto :goto_19

    :cond_17
    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    .line 819
    .local v6, "dirs":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;>;"
    :goto_19
    const-class v7, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {v1, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(Ljava/lang/Class;J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    .line 820
    .local v7, "pla":Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;
    if-nez v7, :cond_27

    move-object v8, v5

    goto :goto_29

    :cond_27
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    .line 821
    .local v8, "points":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;>;"
    :goto_29
    const-class v9, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->Type:J

    invoke-virtual {v1, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(Ljava/lang/Class;J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;

    .line 822
    .local v9, "sla":Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;
    if-nez v9, :cond_36

    goto :goto_38

    :cond_36
    iget-object v5, v9, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    .line 824
    .local v5, "spots":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;>;"
    :goto_38
    iget v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v12, 0x0

    if-ltz v10, :cond_f6

    .line 825
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_40
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length v13, v13

    if-ge v10, v13, :cond_f6

    .line 826
    if-eqz v6, :cond_70

    iget v13, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v10, v13, :cond_4c

    goto :goto_70

    .line 830
    :cond_4c
    iget-boolean v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v13, :cond_62

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v13, v13, v10

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Z

    move-result v13

    if-eqz v13, :cond_62

    .line 831
    goto/16 :goto_ed

    .line 833
    :cond_62
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v13, v13, v10

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    goto :goto_a2

    .line 827
    :cond_70
    :goto_70
    iget-boolean v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v13, :cond_99

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v13, v13, v10

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v13, v13, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v13, v13, v12

    if-nez v13, :cond_99

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v13, v13, v10

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v13, v13, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v13, v13, v12

    if-nez v13, :cond_99

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v13, v13, v10

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v13, v13, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v13, v13, v12

    if-nez v13, :cond_99

    .line 828
    goto :goto_ed

    .line 829
    :cond_99
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v13, v13, v10

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v13, v12, v12, v12, v11}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 835
    :goto_a2
    iget v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    iget v14, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    mul-int/2addr v14, v10

    add-int/2addr v13, v14

    .line 836
    .local v13, "idx":I
    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v15, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsColorOffset:I

    add-int/2addr v15, v13

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v12, v12, v10

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v12, v12, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v2, v2, v10

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v14, v15, v11, v12, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    .line 838
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsDirectionOffset:I

    add-int/2addr v11, v13

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v12, v12, v10

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v14, v14, v10

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v15, v15, v10

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v2, v11, v12, v14, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    .line 840
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    if-gtz v2, :cond_ed

    goto :goto_f6

    .line 825
    .end local v13  # "idx":I
    :cond_ed
    :goto_ed
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v12, 0x0

    goto/16 :goto_40

    .line 844
    .end local v10  # "i":I
    :cond_f6
    :goto_f6
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    if-ltz v2, :cond_1c4

    .line 845
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_fb
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length v10, v10

    if-ge v2, v10, :cond_1c1

    .line 846
    if-eqz v8, :cond_12d

    iget v10, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v2, v10, :cond_107

    goto :goto_12d

    .line 849
    :cond_107
    iget-boolean v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v10, :cond_11f

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v10, v10, v2

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Z

    move-result v10

    if-eqz v10, :cond_11f

    .line 850
    move-object/from16 v16, v4

    goto/16 :goto_1bb

    .line 852
    :cond_11f
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v10, v10, v2

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    goto :goto_147

    .line 847
    :cond_12d
    :goto_12d
    iget-boolean v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v10, :cond_140

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v10, v10, v2

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_141

    move-object/from16 v16, v4

    goto/16 :goto_1bb

    :cond_140
    const/4 v11, 0x0

    .line 848
    :cond_141
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v10, v10, v2

    iput v11, v10, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    .line 854
    :goto_147
    iget v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    mul-int/2addr v11, v2

    add-int/2addr v10, v11

    .line 855
    .local v10, "idx":I
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsColorOffset:I

    add-int/2addr v12, v10

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v13, v13, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v14, v14, v2

    iget v14, v14, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v14, v14, v2

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v14, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v15, v15, v2

    iget v15, v15, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v15, v15, v2

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v15, v15, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v16, v4

    .end local v4  # "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    .local v16, "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    mul-float/2addr v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    .line 857
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsPositionOffset:I

    add-int/2addr v11, v10

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v12, v12, v2

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v14, v14, v2

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v4, v11, v12, v13, v14}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    .line 859
    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsIntensityOffset:I

    if-ltz v4, :cond_1b6

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsIntensityOffset:I

    add-int/2addr v11, v10

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v12, v12, v2

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    invoke-virtual {v4, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IF)V

    .line 860
    :cond_1b6
    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    if-gtz v4, :cond_1bb

    goto :goto_1c6

    .line 845
    .end local v10  # "idx":I
    :cond_1bb
    :goto_1bb
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v16

    goto/16 :goto_fb

    .end local v16  # "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    .restart local v4  # "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    :cond_1c1
    move-object/from16 v16, v4

    .end local v4  # "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    .restart local v16  # "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    goto :goto_1c6

    .line 844
    .end local v2  # "i":I
    .end local v16  # "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    .restart local v4  # "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    :cond_1c4
    move-object/from16 v16, v4

    .line 864
    .end local v4  # "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    .restart local v16  # "dla":Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;
    :goto_1c6
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsLoc:I

    if-ltz v2, :cond_2a2

    .line 865
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_1cb
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    array-length v4, v4

    if-ge v2, v4, :cond_2a2

    .line 866
    if-eqz v5, :cond_1fc

    iget v4, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v2, v4, :cond_1d7

    goto :goto_1fc

    .line 869
    :cond_1d7
    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v4, :cond_1ed

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v4, v4, v2

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Z

    move-result v4

    if-eqz v4, :cond_1ed

    .line 870
    goto/16 :goto_29e

    .line 872
    :cond_1ed
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v4, v4, v2

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->set(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    const/4 v10, 0x0

    goto :goto_214

    .line 867
    :cond_1fc
    :goto_1fc
    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v4, :cond_20d

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-nez v4, :cond_20e

    goto/16 :goto_29e

    :cond_20d
    const/4 v10, 0x0

    .line 868
    :cond_20e
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v4, v4, v2

    iput v10, v4, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    .line 874
    :goto_214
    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsLoc:I

    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsSize:I

    mul-int/2addr v11, v2

    add-int/2addr v4, v11

    .line 875
    .local v4, "idx":I
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsColorOffset:I

    add-int/2addr v12, v4

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v13, v13, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v14, v14, v2

    iget v14, v14, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v14, v14, v2

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v14, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v15, v15, v2

    iget v15, v15, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v15, v15, v2

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v15, v15, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v10, v10, v2

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    mul-float/2addr v15, v10

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    .line 877
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsPositionOffset:I

    add-int/2addr v11, v4

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v12, v12, v2

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(ILcom/badlogic/gdx/math/Vector3;)V

    .line 878
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsDirectionOffset:I

    add-int/2addr v11, v4

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v12, v12, v2

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(ILcom/badlogic/gdx/math/Vector3;)V

    .line 879
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsCutoffAngleOffset:I

    add-int/2addr v11, v4

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v12, v12, v2

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IF)V

    .line 880
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsExponentOffset:I

    add-int/2addr v11, v4

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v12, v12, v2

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->exponent:F

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IF)V

    .line 881
    iget v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsIntensityOffset:I

    if-ltz v10, :cond_299

    .line 882
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v11, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsIntensityOffset:I

    add-int/2addr v11, v4

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLights:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v12, v12, v2

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IF)V

    .line 883
    :cond_299
    iget v10, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsSize:I

    if-gtz v10, :cond_29e

    goto :goto_2a2

    .line 865
    .end local v4  # "idx":I
    :cond_29e
    :goto_29e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1cb

    .line 887
    .end local v2  # "i":I
    :cond_2a2
    :goto_2a2
    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    if-eqz v2, :cond_2b9

    .line 888
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_fogColor:I

    sget-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(ILcom/badlogic/gdx/graphics/Color;)Z

    .line 891
    :cond_2b9
    if-eqz v3, :cond_2ee

    iget-object v2, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz v2, :cond_2ee

    .line 892
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowMapProjViewTrans:I

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {v4}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getProjViewTrans()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(ILcom/badlogic/gdx/math/Matrix4;)Z

    .line 893
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowTexture:I

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {v4}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getDepthMap()Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(ILcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)Z

    .line 894
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowPCFOffset:I

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {v4}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getDepthMap()Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    move-result-object v4

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/GLTexture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v10, 0x40000000  # 2.0f

    mul-float/2addr v4, v10

    const/high16 v10, 0x3f800000  # 1.0f

    div-float v11, v10, v4

    invoke-virtual {v0, v2, v11}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    .line 897
    :cond_2ee
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    .line 898
    return-void
.end method

.method protected bindMaterial(Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .registers 15
    .param p1, "attributes"  # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .line 784
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    goto :goto_e

    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    .line 785
    .local v0, "cullFace":I
    :goto_e
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    if-ne v2, v1, :cond_17

    sget v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    goto :goto_1b

    :cond_17
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    .line 786
    .local v1, "depthFunc":I
    :goto_1b
    const/4 v2, 0x0

    .line 787
    .local v2, "depthRangeNear":F
    const/high16 v3, 0x3f800000  # 1.0f

    .line 788
    .local v3, "depthRangeFar":F
    const/4 v4, 0x1

    .line 790
    .local v4, "depthMask":Z
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 791
    .local v6, "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    iget-wide v7, v6, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    .line 792
    .local v7, "t":J
    invoke-static {v7, v8}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->is(J)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 793
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    move-object v10, v6

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    move-object v11, v6

    check-cast v11, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget v11, v11, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    const/4 v12, 0x1

    invoke-virtual {v9, v12, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setBlending(ZII)V

    .line 794
    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_opacity:I

    move-object v10, v6

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    invoke-virtual {p0, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    goto :goto_90

    .line 795
    :cond_52
    sget-wide v9, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    and-long/2addr v9, v7

    sget-wide v11, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_61

    .line 796
    move-object v9, v6

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    iget v0, v9, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    goto :goto_90

    .line 797
    :cond_61
    sget-wide v9, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    and-long/2addr v9, v7

    sget-wide v11, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_75

    .line 798
    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_alphaTest:I

    move-object v10, v6

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    invoke-virtual {p0, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    goto :goto_90

    .line 799
    :cond_75
    sget-wide v9, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    and-long/2addr v9, v7

    sget-wide v11, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_8a

    .line 800
    move-object v9, v6

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    .line 801
    .local v9, "dta":Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;
    iget v1, v9, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthFunc:I

    .line 802
    iget v2, v9, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeNear:F

    .line 803
    iget v3, v9, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeFar:F

    .line 804
    iget-boolean v4, v9, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthMask:Z

    .line 805
    .end local v9  # "dta":Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;
    goto :goto_90

    :cond_8a
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget-boolean v9, v9, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    if-eqz v9, :cond_91

    .line 806
    .end local v6  # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .end local v7  # "t":J
    :goto_90
    goto :goto_23

    .line 805
    .restart local v6  # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .restart local v7  # "t":J
    :cond_91
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown material attribute: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 808
    .end local v6  # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .end local v7  # "t":J
    :cond_ae
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setCullFace(I)V

    .line 809
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthTest(IFF)V

    .line 810
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthMask(Z)V

    .line 811
    return-void
.end method

.method public canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z
    .registers 10
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 728
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v0, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-le v0, v2, :cond_f

    return v1

    .line 729
    :cond_f
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->combineAttributeMasks(Lcom/badlogic/gdx/graphics/g3d/Renderable;)J

    move-result-wide v2

    .line 730
    .local v2, "renderableMask":J
    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->optionalAttributes:J

    or-long/2addr v6, v2

    cmp-long v0, v4, v6

    if-nez v0, :cond_3c

    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->vertexMask:J

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 731
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMaskWithSizePacked()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_3c

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    const/4 v4, 0x1

    if-eqz v0, :cond_35

    move v0, v4

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-ne v0, v5, :cond_3c

    move v1, v4

    goto :goto_3d

    :cond_3c
    nop

    .line 730
    :goto_3d
    return v1
.end method

.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Shader;)I
    .registers 3
    .param p1, "other"  # Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 736
    if-nez p1, :cond_4

    const/4 v0, -0x1

    return v0

    .line 737
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .registers 2

    .line 902
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 903
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->dispose()V

    .line 904
    return-void
.end method

.method public end()V
    .registers 1

    .line 780
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->end()V

    .line 781
    return-void
.end method

.method public equals(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;)Z
    .registers 3
    .param p1, "obj"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    .line 747
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"  # Ljava/lang/Object;

    .line 743
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->equals(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public getDefaultCullFace()I
    .registers 3

    .line 907
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    goto :goto_e

    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    :goto_e
    return v0
.end method

.method public getDefaultDepthFunc()I
    .registers 3

    .line 915
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    goto :goto_e

    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    :goto_e
    return v0
.end method

.method public init()V
    .registers 6

    .line 599
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 600
    .local v0, "program":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 601
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->init(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    .line 602
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 604
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    .line 605
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsColorOffset:I

    .line 606
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0direction:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsDirectionOffset:I

    .line 607
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights1color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    .line 608
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    const/4 v2, 0x0

    if-gez v1, :cond_3c

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    .line 610
    :cond_3c
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    .line 611
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsColorOffset:I

    .line 612
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0position:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsPositionOffset:I

    .line 613
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0intensity:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->has(I)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_6d

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0intensity:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v1, v4

    goto :goto_6e

    :cond_6d
    move v1, v3

    :goto_6e
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsIntensityOffset:I

    .line 614
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights1color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    .line 615
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    if-gez v1, :cond_81

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    .line 617
    :cond_81
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsLoc:I

    .line 618
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsLoc:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsColorOffset:I

    .line 619
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0position:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsLoc:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsPositionOffset:I

    .line 620
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0direction:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsLoc:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsDirectionOffset:I

    .line 621
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0intensity:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->has(I)Z

    move-result v1

    if-eqz v1, :cond_bc

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0intensity:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsLoc:I

    sub-int v3, v1, v3

    :cond_bc
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsIntensityOffset:I

    .line 622
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0cutoffAngle:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsLoc:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsCutoffAngleOffset:I

    .line 623
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights0exponent:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsLoc:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsExponentOffset:I

    .line 624
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_spotLights1color:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsLoc:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsSize:I

    .line 625
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsSize:I

    if-gez v1, :cond_e5

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->spotLightsSize:I

    .line 626
    :cond_e5
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .registers 7
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "combinedAttributes"  # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .line 771
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-nez v0, :cond_12

    .line 772
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    const/16 v1, 0x302

    const/16 v2, 0x303

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setBlending(ZII)V

    .line 773
    :cond_12
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->bindMaterial(Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    .line 774
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->bindLights(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    .line 775
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    .line 776
    return-void
.end method

.method public setDefaultCullFace(I)V
    .registers 3
    .param p1, "cullFace"  # I

    .line 911
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    .line 912
    return-void
.end method

.method public setDefaultDepthFunc(I)V
    .registers 3
    .param p1, "depthFunc"  # I

    .line 919
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    .line 920
    return-void
.end method
