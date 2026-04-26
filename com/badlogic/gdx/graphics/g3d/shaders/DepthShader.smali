.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;
.source "DepthShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
    }
.end annotation


# static fields
.field private static defaultFragmentShader:Ljava/lang/String;

.field private static defaultVertexShader:Ljava/lang/String;

.field private static final tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;


# instance fields
.field private final alphaTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

.field public final numBones:I

.field public final weights:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    .line 155
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .registers 3
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)V
    .registers 4
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    .line 79
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .registers 11
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
    .param p3, "shaderProgram"  # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 94
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    .line 96
    .local v0, "attributes":Lcom/badlogic/gdx/graphics/g3d/Attributes;
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v1, :cond_3b

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v1, v1

    iget v2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->numBones:I

    if-gt v1, v2, :cond_13

    goto :goto_3b

    .line 97
    :cond_13
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

    iget v3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->numBones:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_3b
    :goto_3b
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-nez v1, :cond_41

    const/4 v1, 0x0

    goto :goto_43

    :cond_41
    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->numBones:I

    :goto_43
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->numBones:I

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "w":I
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v2

    .line 103
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_53
    if-ge v3, v2, :cond_70

    .line 104
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v4

    .line 105
    .local v4, "attr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v5, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/16 v6, 0x40

    if-ne v5, v6, :cond_6d

    iget v5, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v1, v5

    .line 103
    .end local v4  # "attr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 107
    .end local v3  # "i":I
    :cond_70
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->weights:I

    .line 108
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    iget v6, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->defaultAlphaTest:F

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->alphaTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;)V
    .registers 11
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
    .param p3, "prefix"  # Ljava/lang/String;

    .line 83
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->vertexShader:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->vertexShader:Ljava/lang/String;

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->getDefaultVertexShader()Ljava/lang/String;

    move-result-object v0

    :goto_b
    move-object v5, v0

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->fragmentShader:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->fragmentShader:Ljava/lang/String;

    move-object v6, v0

    goto :goto_19

    .line 84
    :cond_14
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->getDefaultFragmentShader()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 83
    :goto_19
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
    .param p3, "prefix"  # Ljava/lang/String;
    .param p4, "vertexShader"  # Ljava/lang/String;
    .param p5, "fragmentShader"  # Ljava/lang/String;

    .line 89
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

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 90
    return-void
.end method

.method private static final combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;
    .registers 3
    .param p0, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 158
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->clear()V

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    .line 160
    :cond_10
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    .line 161
    :cond_1b
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-object v0
.end method

.method public static createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)Ljava/lang/String;
    .registers 5
    .param p0, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p1, "config"  # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    .line 65
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "prefix":Ljava/lang/String;
    iget-boolean v1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->depthBufferOnly:Z

    if-nez v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#define PackedDepthFlag\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_1b
    return-object v0
.end method

.method public static final getDefaultFragmentShader()Ljava/lang/String;
    .registers 2

    .line 59
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 60
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/depth.fragment.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    .line 61
    :cond_12
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDefaultVertexShader()Ljava/lang/String;
    .registers 2

    .line 51
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 52
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/depth.vertex.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    .line 53
    :cond_12
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .registers 3
    .param p1, "camera"  # Lcom/badlogic/gdx/graphics/Camera;
    .param p2, "context"  # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    .line 113
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    .line 116
    return-void
.end method

.method public canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z
    .registers 10
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 126
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v0, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->numBones:I

    if-le v0, v2, :cond_d

    return v1

    .line 127
    :cond_d
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    .line 128
    .local v0, "attributes":Lcom/badlogic/gdx/graphics/g3d/Attributes;
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3d

    .line 129
    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->attributesMask:J

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    and-long/2addr v4, v6

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_26

    .line 130
    return v1

    .line 131
    :cond_26
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->attributesMask:J

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    and-long/2addr v4, v6

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_39

    move v4, v3

    goto :goto_3a

    :cond_39
    move v4, v1

    :goto_3a
    if-eq v2, v4, :cond_3d

    .line 132
    return v1

    .line 134
    :cond_3d
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v4

    const-wide/16 v6, 0x40

    and-long/2addr v4, v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_52

    move v2, v3

    goto :goto_53

    :cond_52
    move v2, v1

    .line 135
    .local v2, "skinned":Z
    :goto_53
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->weights:I

    if-lez v4, :cond_59

    move v4, v3

    goto :goto_5a

    :cond_59
    move v4, v1

    :goto_5a
    if-ne v2, v4, :cond_5d

    move v1, v3

    :cond_5d
    return v1
.end method

.method public end()V
    .registers 1

    .line 120
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->end()V

    .line 122
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .registers 8
    .param p1, "renderable"  # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "combinedAttributes"  # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .line 140
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 141
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    .line 142
    .local v0, "blending":Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->remove(J)V

    .line 143
    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v1

    .line 144
    .local v1, "hasAlphaTest":Z
    if-nez v1, :cond_22

    .line 145
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->alphaTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 146
    :cond_22
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_35

    .line 147
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    .line 148
    :cond_35
    if-nez v1, :cond_3c

    .line 149
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->remove(J)V

    .line 150
    :cond_3c
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 151
    .end local v0  # "blending":Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    .end local v1  # "hasAlphaTest":Z
    goto :goto_43

    .line 152
    :cond_40
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    .line 153
    :goto_43
    return-void
.end method
