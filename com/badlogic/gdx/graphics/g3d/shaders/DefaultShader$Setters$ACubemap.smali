.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACubemap"
.end annotation


# static fields
.field private static final ones:[F

.field private static final tmpV1:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private final cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

.field public final dirLightsOffset:I

.field public final pointLightsOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 341
    const/16 v0, 0x12

    new-array v0, v0, [F

    fill-array-data v0, :array_12

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->ones:[F

    .line 343
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    return-void

    nop

    :array_12
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "dirLightsOffset"  # I
    .param p2, "pointLightsOffset"  # I

    .line 347
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

    .line 342
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 348
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->dirLightsOffset:I

    .line 349
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->pointLightsOffset:I

    .line 350
    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .registers 13
    .param p1, "shader"  # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"  # I
    .param p3, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p4, "combinedAttributes"  # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .line 354
    iget-object v0, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 355
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v2

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->ones:[F

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->ones:[F

    array-length v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform3fv(I[FII)V

    goto/16 :goto_b4

    .line 357
    :cond_15
    iget-object v0, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 358
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    invoke-virtual {p4, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 359
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    invoke-virtual {p4, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 361
    :cond_33
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    invoke-virtual {p4, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 362
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    .line 363
    invoke-virtual {p4, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    .line 364
    .local v0, "lights":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;>;"
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->dirLightsOffset:I

    .local v2, "i":I
    :goto_47
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_63

    .line 365
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 368
    .end local v0  # "lights":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;>;"
    .end local v2  # "i":I
    :cond_63
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {p4, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 369
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {p4, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    .line 370
    .local v0, "lights":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;>;"
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->pointLightsOffset:I

    .restart local v2  # "i":I
    :goto_77
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_9d

    .line 371
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 374
    .end local v0  # "lights":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;>;"
    .end local v2  # "i":I
    :cond_9d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->clamp()Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 375
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;->cacheAmbientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform3fv(I[FII)V

    .line 377
    :goto_b4
    return-void
.end method
